import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../generated/locale_keys.g.dart';
import 'currencies.dart';
import 'warmd_icons_icons.dart';

abstract class Criteria {
  String key;
  String title;
  String explanation;
  double minValue;
  double maxValue;
  String unit;
  double step;
  double currentValue;
  List<String> labels;
  IconData leftIcon;
  IconData rightIcon;

  double co2EqTonsPerYear();
  String advice();
}

abstract class CriteriaCategory {
  String key;
  String title;
  List<Criteria> criterias;

  double co2EqTonsPerYear() => criterias.map((crit) => crit.co2EqTonsPerYear()).reduce((a, b) => a + b);
}

enum UnitSystem { metric, us, uk }

class CountryCriteria extends Criteria {
  CountryCriteria() {
    key = 'country';
    minValue = 0;
    maxValue = countries.length.toDouble() - 1;
    step = 1;
    currentValue = _getCurrentCountryPos().toDouble();
  }

  @override
  String get title => LocaleKeys.countryCriteriaTitle.tr();

  @override
  List<String> get labels => countries.map((c) => c['name']).toList();

  @override
  double co2EqTonsPerYear() => 0;

  @override
  String advice() =>
      LocaleKeys.generalAdvice.tr(); // Well, not really the correct place to do so, but there is no obvious better one

  double getCurrencyRate() {
    return 1 / currencyRates[countries[currentValue.toInt()]['currency']];
  }

  String getCurrencyCode() {
    return countries[currentValue.toInt()]['currency'];
  }

  UnitSystem unitSystem() {
    final countryCode = countries[currentValue.toInt()]['code'];
    if (countryCode == 'US') {
      return UnitSystem.us;
    } else if (countryCode == 'GB') {
      return UnitSystem.uk;
    }

    return UnitSystem.metric;
  }

  int _getCurrentCountryPos() {
    final locales = WidgetsBinding.instance.window.locales;
    if (locales != null && locales.isNotEmpty) {
      final locale = locales.first;
      final idx = countries.indexWhere((c) => c['code'] == (locale.countryCode ?? locale.languageCode));
      if (idx != -1) {
        return idx;
      }
    }

    // US by default if not found
    return 234;
  }
}

class GeneralCategory extends CriteriaCategory {
  GeneralCategory() {
    key = 'general';
    criterias = [CountryCriteria()];
  }

  @override
  String get title => LocaleKeys.generalCategoryTitle.tr();
}

class PeopleCriteria extends Criteria {
  PeopleCriteria() {
    key = 'people';
    minValue = 1;
    maxValue = 3;
    step = 1;
    currentValue = 1;
    leftIcon = Icons.person;
    rightIcon = WarmdIcons.account_group;
  }

  @override
  String get title => LocaleKeys.peopleCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.peopleCriteriaExplanation.tr();

  @override
  double co2EqTonsPerYear() => 0;

  @override
  String advice() => null;
}

class HeatingFuelCriteria extends Criteria {
  final PeopleCriteria _peopleCriteria;
  final CountryCriteria _countryCriteria;

  HeatingFuelCriteria(this._peopleCriteria, this._countryCriteria) {
    key = 'heating_fuel';
    minValue = 0;
    step = 100;
    currentValue = 0;
    leftIcon = WarmdIcons.piggy_bank;
    rightIcon = WarmdIcons.radiator;
  }

  @override
  String get title => LocaleKeys.heatingFuelCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.heatingFuelCriteriaExplanation.tr(args: [_countryCriteria.getCurrencyCode()]);

  @override
  double get maxValue => (((5000 / _countryCriteria.getCurrencyRate()) / step).truncate() * step).toDouble();

  @override
  double get currentValue => min(maxValue, super.currentValue);

  @override
  String get unit => _countryCriteria.getCurrencyCode();

  @override
  double co2EqTonsPerYear() {
    var peopleNumber = _peopleCriteria.currentValue;
    var peopleFactor = peopleNumber > 1 ? peopleNumber / 1.3 : 1;

    var moneyChange = _countryCriteria.getCurrencyRate();

    var fuelBill = currentValue * moneyChange;
    var co2TonsPerFuelDollar = 0.005;

    return (fuelBill * co2TonsPerFuelDollar) / peopleFactor;
  }

  @override
  String advice() {
    if (co2EqTonsPerYear() > 3) {
      return LocaleKeys.heatingFuelCriteriaAdvice.tr();
    } else {
      return null;
    }
  }
}

class ElectricityBillCriteria extends Criteria {
  final PeopleCriteria _peopleCriteria;
  final CountryCriteria _countryCriteria;
  final CleanElectricityCriteria _cleanElectricityCriteria;

  ElectricityBillCriteria(this._peopleCriteria, this._countryCriteria, this._cleanElectricityCriteria) {
    key = 'electricity_bill';
    minValue = 0;
    step = 100;
    currentValue = 1000;
    leftIcon = WarmdIcons.coin_outline;
    rightIcon = WarmdIcons.cash_multiple;
  }

  @override
  String get title => LocaleKeys.electricityBillCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.electricityBillCriteriaExplanation.tr(args: [_countryCriteria.getCurrencyCode()]);

  @override
  double get maxValue => (((5000 / _countryCriteria.getCurrencyRate()) / step).truncate() * step).toDouble();

  @override
  double get currentValue => min(maxValue, super.currentValue);

  @override
  String get unit => _countryCriteria.getCurrencyCode();

  @override
  double co2EqTonsPerYear() {
    var peopleNumber = _peopleCriteria.currentValue;
    var peopleFactor = peopleNumber > 1 ? peopleNumber / 1.3 : 1;

    var moneyChange = _countryCriteria.getCurrencyRate();

    var electricityBill = currentValue * moneyChange;
    var co2ElectricityPercent = min(100, 100 - _cleanElectricityCriteria.currentValue + 15); // +15% because nothing is 100% clean
    var kWhPrice = 0.15; // in dollars
    var co2TonsPerKWh = 0.00065;

    return ((electricityBill / 100 * co2ElectricityPercent) / kWhPrice * co2TonsPerKWh) / peopleFactor;
  }

  @override
  String advice() => null;
}

class CleanElectricityCriteria extends Criteria {
  CleanElectricityCriteria() {
    key = 'clean_electricity';
    minValue = 0;
    maxValue = 100;
    step = 5;
    currentValue = 10;
    unit = '%';
    leftIcon = WarmdIcons.fuel;
    rightIcon = WarmdIcons.wind_turbine;
  }

  @override
  String get title => LocaleKeys.cleanElectricityCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.cleanElectricityCriteriaExplanation.tr();

  @override
  double co2EqTonsPerYear() => 0;

  @override
  String advice() {
    if (currentValue < 80) {
      return LocaleKeys.cleanElectricityCriteriaAdvice.tr();
    } else {
      return null;
    }
  }
}

class WaterCriteria extends Criteria {
  WaterCriteria() {
    key = 'water';
    minValue = 0;
    maxValue = 2;
    step = 1;
    currentValue = 1;
  }

  @override
  String get title => LocaleKeys.waterCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.waterCriteriaExplanation.tr();

  @override
  List<String> get labels => [
        LocaleKeys.waterCriteriaLabel1.tr(),
        LocaleKeys.waterCriteriaLabel2.tr(),
        LocaleKeys.waterCriteriaLabel3.tr(),
      ];

  @override
  double co2EqTonsPerYear() {
    return 1.56 * ((currentValue + 1) / 2);
  }

  @override
  String advice() {
    if (co2EqTonsPerYear() > 1) {
      return LocaleKeys.waterCriteriaAdvice.tr();
    } else {
      return null;
    }
  }
}

class HomeCategory extends CriteriaCategory {
  HomeCategory(CountryCriteria CountryCriteria) {
    key = 'home';

    var peopleCriteria = PeopleCriteria();
    var cleanElectricityCriteria = CleanElectricityCriteria();
    criterias = [
      peopleCriteria,
      HeatingFuelCriteria(peopleCriteria, CountryCriteria),
      ElectricityBillCriteria(peopleCriteria, CountryCriteria, cleanElectricityCriteria),
      cleanElectricityCriteria,
      WaterCriteria(),
    ];
  }

  @override
  String get title => LocaleKeys.homeCategoryTitle.tr();
}

class FlightsCriteria extends Criteria {
  final CountryCriteria _countryCriteria;

  FlightsCriteria(this._countryCriteria) {
    key = 'flights';
    minValue = 0;
    maxValue = 100000;
    step = 5000;
    currentValue = 0;
    leftIcon = Icons.airplanemode_inactive;
    rightIcon = Icons.airplanemode_active;
  }

  @override
  String get title => LocaleKeys.flightsCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.flightsCriteriaExplanation.tr();

  @override
  String get unit => _countryCriteria.unitSystem() == UnitSystem.metric ? 'km' : 'miles';

  @override
  double co2EqTonsPerYear() {
    var co2TonsPerKm = 0.00028;
    var milesToKmFactor = _countryCriteria.unitSystem() == UnitSystem.metric ? 1 : 1.61;
    return currentValue * milesToKmFactor * co2TonsPerKm;
  }

  @override
  String advice() {
    if (co2EqTonsPerYear() > 1) {
      return LocaleKeys.flightsCriteriaAdvice.tr();
    } else {
      return null;
    }
  }
}

class CarCriteria extends Criteria {
  final PeopleCriteria _peopleCriteria;
  final CarConsumptionCriteria _carConsumptionCriteria;
  final CountryCriteria _countryCriteria;

  CarCriteria(this._peopleCriteria, this._carConsumptionCriteria, this._countryCriteria) {
    key = 'car';
    minValue = 0;
    maxValue = 100000;
    step = 5000;
    currentValue = 0;
    leftIcon = Icons.directions_bike;
    rightIcon = WarmdIcons.car_sports;
  }

  @override
  String get title => LocaleKeys.carCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.carCriteriaExplanation.tr();

  @override
  String get unit => _countryCriteria.unitSystem() == UnitSystem.metric ? 'km' : 'miles';

  @override
  double co2EqTonsPerYear() {
    var peopleNumber = _peopleCriteria.currentValue;
    var peopleFactor = peopleNumber > 1 ? peopleNumber / 1.8 : 1;

    var litersPerKm = (_countryCriteria.unitSystem() == UnitSystem.metric
            ? _carConsumptionCriteria.currentValue
            : _countryCriteria.unitSystem() == UnitSystem.us
                ? 235.2 / -_carConsumptionCriteria.currentValue
                : 282.5 / -_carConsumptionCriteria.currentValue) /
        100;
    var milesToKmFactor = _countryCriteria.unitSystem() == UnitSystem.metric ? 1 : 1.61;
    var co2TonsPerLiter = 0.0033;
    return (currentValue / peopleFactor) * milesToKmFactor * litersPerKm * co2TonsPerLiter;
  }

  @override
  String advice() {
    if (co2EqTonsPerYear() > 1.5) {
      return LocaleKeys.carCriteriaAdviceHigh.tr();
    } else if (co2EqTonsPerYear() > 0.5) {
      return LocaleKeys.carCriteriaAdviceLow.tr();
    } else {
      return null;
    }
  }
}

class CarConsumptionCriteria extends Criteria {
  final CountryCriteria _countryCriteria;

  CarConsumptionCriteria(this._countryCriteria) {
    key = 'car_consumption';
    minValue = 2;
    maxValue = 20;
    step = 1;
    currentValue = 8;
    leftIcon = WarmdIcons.sprout;
    rightIcon = WarmdIcons.gas_station;
  }

  @override
  String get title => LocaleKeys.carConsumptionCriteriaTitle.tr();

  @override
  double get minValue => _countryCriteria.unitSystem() == UnitSystem.metric ? 2 : -140;

  @override
  double get maxValue => _countryCriteria.unitSystem() == UnitSystem.metric ? 20 : -11;

  @override
  double get currentValue => min(maxValue, max(minValue, super.currentValue));

  @override
  String get unit => _countryCriteria.unitSystem() == UnitSystem.metric ? 'L/100km' : 'mpg';

  @override
  double co2EqTonsPerYear() => 0;

  @override
  String advice() => null;
}

class PublicTransportCriteria extends Criteria {
  final CountryCriteria _countryCriteria;

  PublicTransportCriteria(this._countryCriteria) {
    key = 'public_transport';
    minValue = 0;
    maxValue = 100000;
    step = 5000;
    currentValue = 0;
    leftIcon = Icons.directions_bike;
    rightIcon = Icons.train;
  }

  @override
  String get title => LocaleKeys.publicTransportCriteriaTitle.tr();

  @override
  String get unit => _countryCriteria.unitSystem() == UnitSystem.metric ? 'km' : 'miles';

  @override
  double co2EqTonsPerYear() {
    var co2TonsPerKm = 0.00014;
    var milesToKmFactor = _countryCriteria.unitSystem() == UnitSystem.metric ? 1 : 1.61;
    return currentValue * milesToKmFactor * co2TonsPerKm;
  }

  @override
  String advice() {
    if (co2EqTonsPerYear() > 3) {
      return LocaleKeys.publicTransportCriteriaAdvice.tr();
    } else {
      return null;
    }
  }
}

class TravelCategory extends CriteriaCategory {
  TravelCategory(PeopleCriteria peopleCriteria, CountryCriteria CountryCriteria) {
    key = 'travel';

    var carConsumptionCriteria = CarConsumptionCriteria(CountryCriteria);
    criterias = [
      FlightsCriteria(CountryCriteria),
      CarCriteria(peopleCriteria, carConsumptionCriteria, CountryCriteria),
      carConsumptionCriteria,
      PublicTransportCriteria(CountryCriteria)
    ];
  }

  @override
  String get title => LocaleKeys.travelCategoryTitle.tr();
}

class MeatCriteria extends Criteria {
  MeatCriteria() {
    key = 'meat';
    minValue = 0;
    maxValue = 20;
    step = 1;
    currentValue = 0;
    leftIcon = WarmdIcons.food_apple_outline;
    rightIcon = WarmdIcons.cow;
  }

  @override
  String get title => LocaleKeys.meatCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.meatCriteriaExplanation.tr();

  @override
  double co2EqTonsPerYear() {
    var co2TonsPerTimePerWeek = 0.18;
    return currentValue * co2TonsPerTimePerWeek;
  }

  @override
  String advice() {
    if (currentValue >= 0.7) {
      return LocaleKeys.meatCriteriaAdvice.tr();
    } else {
      return null;
    }
  }
}

class DairyCriteria extends Criteria {
  DairyCriteria() {
    key = 'dairy';
    minValue = 0;
    maxValue = 20;
    step = 1;
    currentValue = 0;
    leftIcon = WarmdIcons.food_apple_outline;
    rightIcon = WarmdIcons.cheese;
  }

  @override
  String get title => LocaleKeys.dairyCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.dairyCriteriaExplanation.tr();

  @override
  double co2EqTonsPerYear() {
    var co2TonsPerTimePerWeek = 0.076;
    return currentValue * co2TonsPerTimePerWeek;
  }

  @override
  String advice() => null; // I can't advice to eat less
}

class SnackCriteria extends Criteria {
  SnackCriteria() {
    key = 'snack';
    minValue = 0;
    maxValue = 20;
    step = 1;
    currentValue = 0;
    leftIcon = WarmdIcons.food_off;
    rightIcon = WarmdIcons.food;
  }

  @override
  String get title => LocaleKeys.snacksCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.snacksCriteriaExplanation.tr();

  @override
  double co2EqTonsPerYear() {
    var co2TonsPerTimePerWeek = 0.071;
    return currentValue * co2TonsPerTimePerWeek;
  }

  @override
  String advice() {
    if (currentValue > 3) {
      return LocaleKeys.snacksCriteriaAdvice.tr();
    } else {
      return null;
    }
  }
}

class OverweightCriteria extends Criteria {
  OverweightCriteria() {
    key = 'overweight';
    minValue = 0;
    maxValue = 2;
    step = 1;
    currentValue = 1;
  }

  @override
  String get title => LocaleKeys.overweightCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.overweightCriteriaExplanation.tr();

  @override
  List<String> get labels => [
        LocaleKeys.overweightCriteriaLabel1.tr(),
        LocaleKeys.overweightCriteriaLabel2.tr(),
        LocaleKeys.overweightCriteriaLabel3.tr(),
      ];

  @override
  double co2EqTonsPerYear() => 0;

  @override
  String advice() {
    if (currentValue > 0) {
      return LocaleKeys.overweightCriteriaAdvice.tr();
    } else {
      return null;
    }
  }
}

class FoodCategory extends CriteriaCategory {
  FoodCategory() {
    key = 'food';
    criterias = [
      MeatCriteria(),
      DairyCriteria(),
      SnackCriteria(),
      OverweightCriteria(),
    ];
  }

  @override
  String get title => LocaleKeys.foodCategoryTitle.tr();

  @override
  double co2EqTonsPerYear() {
    var overweightValue = criterias[3].currentValue;
    var overweightFactor = overweightValue == 2 ? 1.5 : (overweightValue == 1 ? 1.25 : 1);

    return (criterias[0].co2EqTonsPerYear() + criterias[1].co2EqTonsPerYear() + criterias[2].co2EqTonsPerYear()) *
        overweightFactor;
  }
}

class MaterialGoodsCriteria extends Criteria {
  final CountryCriteria _countryCriteria;

  MaterialGoodsCriteria(this._countryCriteria) {
    key = 'material_goods';
    minValue = 0;
    step = 100;
    currentValue = 0;
    leftIcon = WarmdIcons.piggy_bank;
    rightIcon = WarmdIcons.cash_multiple;
  }

  @override
  String get title => LocaleKeys.materialGoodsCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.materialGoodsCriteriaExplanation.tr();

  @override
  double get maxValue => (((3000 / _countryCriteria.getCurrencyRate()) / step).truncate() * step).toDouble();

  @override
  double get currentValue => min(maxValue, super.currentValue);

  @override
  String get unit => _countryCriteria.getCurrencyCode();

  @override
  double co2EqTonsPerYear() {
    var moneyChange = _countryCriteria.getCurrencyRate();
    var co2TonsPerDollar = 0.0062;
    return currentValue * moneyChange * co2TonsPerDollar;
  }

  @override
  String advice() {
    if (co2EqTonsPerYear() > 2) {
      return LocaleKeys.materialGoodsCriteriaAdvice.tr();
    } else {
      return null;
    }
  }
}

class InternetCriteria extends Criteria {
  InternetCriteria() {
    key = 'internet';
    minValue = 0;
    maxValue = 2;
    step = 1;
    currentValue = 1;
  }

  @override
  String get title => LocaleKeys.internetCriteriaTitle.tr();

  @override
  String get explanation => LocaleKeys.internetCriteriaExplanation.tr();

  @override
  List<String> get labels => [
        LocaleKeys.internetCriteriaLabel1.tr(),
        LocaleKeys.internetCriteriaLabel2.tr(),
        LocaleKeys.internetCriteriaLabel3.tr(),
      ];

  @override
  double co2EqTonsPerYear() => 0.1 + currentValue * 0.25; // Based on Carbonalyser extension's results

  @override
  String advice() {
    if (co2EqTonsPerYear() > 0.15) {
      return LocaleKeys.internetCriteriaAdvice.tr();
    } else {
      return null;
    }
  }
}

class GoodsCategory extends CriteriaCategory {
  GoodsCategory(CountryCriteria CountryCriteria) {
    key = 'goods';
    criterias = [
      MaterialGoodsCriteria(CountryCriteria),
      InternetCriteria(),
    ];
  }

  @override
  String get title => LocaleKeys.goodsAndServicesCategoryTitle.tr();
}

class CriteriaCategorySet {
  List<CriteriaCategory> categories;

  CriteriaCategorySet() {
    var generalCategory = GeneralCategory();
    var countryCriteria = generalCategory.criterias[0] as CountryCriteria;
    var homeCategory = HomeCategory(countryCriteria);

    categories = [
      generalCategory,
      homeCategory,
      TravelCategory(homeCategory.criterias[0] as PeopleCriteria, countryCriteria),
      FoodCategory(),
      GoodsCategory(countryCriteria)
    ];
  }

  double co2EqTonsPerYear() => categories.map((cat) => cat.co2EqTonsPerYear()).reduce((a, b) => a + b);

  String getFormatedFootprint() => LocaleKeys.co2EqTonsValue.tr(args: [co2EqTonsPerYear().toStringAsFixed(1)]);
}

class CriteriasState with ChangeNotifier {
  CriteriaCategorySet _categorySet;
  CriteriaCategorySet get categorySet => _categorySet;
  set categorySet(CriteriaCategorySet newValue) {
    _categorySet = newValue;
    _loadFromPersistence().then((_) {
      notifyListeners();
    });
  }

  CriteriasState() {
    categorySet = CriteriaCategorySet();
  }

  void persist(Criteria c) {
    notifyListeners();

    SharedPreferences.getInstance().then((prefs) {
      prefs.setDouble(c.key, c.currentValue);
    });
  }

  Future<void> _loadFromPersistence() async {
    var prefs = await SharedPreferences.getInstance();

    categorySet.categories.forEach((cat) {
      cat.criterias.forEach((crit) {
        crit.currentValue = prefs.getDouble(crit.key) ?? crit.currentValue;

        if (crit.currentValue > crit.maxValue) {
          crit.currentValue = crit.maxValue;
        } else if (crit.currentValue < crit.minValue) {
          crit.currentValue = crit.minValue;
        }
      });
    });
  }
}
