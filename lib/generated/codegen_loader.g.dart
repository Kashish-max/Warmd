// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, String> en = {
    "moneyChangeCriteriaTitle": "What is your local currency?",
    "unitCriteriaTitle": "Which units do you use?",
    "unitCriteriaLabel1": "Meters and Liters",
    "unitCriteriaLabel2": "Miles and Gallons (US)",
    "unitCriteriaLabel3": "Miles and Gallons (UK)",
    "generalCategoryTitle": "General",
    "generalAdvice":
        "Your own impact is insignificant comparing to governments's ones, and as of today their ecological politics are far from sufficient. If you can, try to influence their decisions, by voting or via other means.",
    "peopleCriteriaTitle": "Number of people living in your appartment/house",
    "peopleCriteriaExplanation": "The more you are, the less energy per person is needed to heat or drive you.",
    "heatingFuelCriteriaTitle": "Your heating fuel/gas bill",
    "heatingFuelCriteriaExplanation": "Money spent each year, in {}.",
    "heatingFuelCriteriaAdvice":
        "First of all, try to better insulate your home and do not heat more than necessary (you can use smart controls to limit heating and do not heat an adult room above 66°F/19°C since it will actually reduce the sleep quality). Then prefer heating with heat pump, with carbon-free electricity or with wood pellets from local and sustainable forests.",
    "electricityBillCriteriaTitle": "Your electricity bill",
    "electricityBillCriteriaExplanation": "Money spent each year, in {}.",
    "cleanElectricityCriteriaTitle": "Percent of carbon-free electricity",
    "cleanElectricityCriteriaExplanation":
        "Including nuclear, wind, solar or hydraulic electricity.\n\nIf you don't know, you may be able to find some answers on https://www.electricitymap.org",
    "cleanElectricityCriteriaAdvice": "Choose your electricity provider to only pay for renewable or nuclear electricity.",
    "waterCriteriaTitle": "Your water consumption",
    "waterCriteriaExplanation": "Including the water you use for showers, baths, toilet flushes and gardening.",
    "waterCriteriaLabel1": "Low (quick showers, no garden)",
    "waterCriteriaLabel2": "Normal",
    "waterCriteriaLabel3": "High (long showers or baths, big garden, …)",
    "waterCriteriaAdvice":
        "You can easily limit your water consumption by taking short showers (avoid baths) with a water reduction showerhead (up to -70% water). You can also put a plastic bottle in the water tank of your toilet to limit its capacity and buy a water recuperator for your garden.",
    "homeCategoryTitle": "Home",
    "flightsCriteriaTitle": "Distance travelled per year by airplane",
    "flightsCriteriaExplanation": "An airplane produces between 6x and 40x more greenhouse gas per passenger than a train.",
    "flightsCriteriaAdvice":
        "Ask yourself: do you really need these airplane trips? Consider having holidays in your own country and take the train.",
    "carCriteriaTitle": "Distance travelled per year with a gasoline/diesel car",
    "carCriteriaExplanation":
        "If you are alone in your car, it is the equivalent of 70% of the pollution per passenger generated by an aircraft for the same journey.",
    "carCriteriaAdviceHigh":
        "You drive too much to continue using your gasoline/diesel car like that. You should reduce your car usage by moving house or adopting remote work and use the train/subway/bus for most of your transport. If you can't do this and have access to carbon-free electricity, consider buying a small electric car (avoid big cars).",
    "carCriteriaAdviceLow":
        "You may further improve your car impact by learning eco-driving or by using train/subway/bus (don't buy an new car, its construction will pollutes more than using your current one).",
    "carConsumptionCriteriaTitle": "Your car's fuel consumption",
    "publicTransportCriteriaTitle": "Distance travelled per year in bus, train or subway",
    "publicTransportCriteriaAdvice": "Consider doing remote work to reduce your transport carbon footprint.",
    "travelCategoryTitle": "Transport",
    "meatCriteriaTitle": "Number of meat, fish or egg meal per week",
    "meatCriteriaExplanation":
        "The meat is a major greenhouse gas emmiter. The beef and lamb emit more than 3 times more greenhouse gas than chicken and more than 5 times more greenhouse gas than most vegetables.",
    "meatCriteriaAdvice":
        "Adults does not need more than 2-3 meat meal per week (a bit more for kids). You also should favorise chicken (3 times less poluting than beef).",
    "dairyCriteriaTitle": "Number of dairy products per week",
    "dairyCriteriaExplanation": "It is generally recommended to eat some at least once per day.",
    "snacksCriteriaTitle": "Number of snacks, drinks or other highly transformed foods per week",
    "snacksCriteriaExplanation": "If you are starving to death, they will do the job. Otherwise, just avoid them.",
    "snacksCriteriaAdvice":
        "Prefer water, vegetables and fruits than snacks, transformed foods or drinks. Be careful, buying local products does not necessarily limit carbon emissions and can even make them worse in many cases.",
    "overweightCriteriaTitle": "Are you overweight?",
    "overweightCriteriaExplanation":
        "Being overweight basically means you absorb more energy than you body needs. Each year, humanity consumes unnecessary 140 billions of tons of food.",
    "overweightCriteriaLabel1": "No",
    "overweightCriteriaLabel2": "A bit",
    "overweightCriteriaLabel3": "Quite a lot",
    "overweightCriteriaAdvice":
        "Overweight has consequences for your health, but also for the planet. You can kill two birds with one stone by simply reducing meats, drinks, snacks and other highly transformed foods that often have a significant carbon impact.",
    "foodCategoryTitle": "Food",
    "materialGoodsCriteriaTitle": "Money spent per month in material goods",
    "materialGoodsCriteriaExplanation": "Concerns furnitures, appliances, clothes, electronic devices, medicines, …",
    "materialGoodsCriteriaAdvice":
        "You buy too much goods and should certainly limit them. If you really need to buy new ones, find second-hand ones and sell or give your previous ones.",
    "internetCriteriaTitle": "Amount of Internet data used",
    "internetCriteriaExplanation":
        "Internet is already responsible of more than 4% of total carbon emissions, and it could double before 2025.",
    "internetCriteriaLabel1": "Only few emails or search per week",
    "internetCriteriaLabel2": "I use some websites or cloud services at least once per day",
    "internetCriteriaLabel3": "I watch lot of streaming video (> 30 min / day)",
    "internetCriteriaAdvice":
        "Reduce your carbon footprint by reducing the video streaming quality to 480p maximum (SD). You can also use softwares like Ecosia or Cleanfox to limit your impact.",
    "goodsAndServicesCategoryTitle": "Goods and services",
    "seeResults": "See results",
    "yourCarbonFootprint": "Your carbon footprint:",
    "knowMore": "Learn more",
    "valueWithMore": "{} or more",
    "footprintRepartitionTitle": "Repartition of your {}:",
    "co2EqTonsValue": "{} tons CO₂eq/year",
    "otherCountriesComparaisonTitle": "Comparison with others:",
    "otherCountriesColumn1Title": "Country",
    "otherCountriesColumn2Title": "CO₂eq/year/resident",
    "otherCountriesTonsValue": "{} tons",
    "otherCountriesMore": "More countries on https://coolclimate.org/calculator",
    "globalObjectivesTitle": "Global goals:",
    "globalObjectivesPart1":
        "To stay below +34.7°F/+1.5°C, the IPCC consortium declared that the world should cut its emissions by",
    "globalObjectivesPart2": " 45% by 2030 and stop emitting any by 2050.",
    "globalObjectivesPart3": "\n\n\nSo far, it's very unlikely to happen, see ",
    "globalObjectivesPart4": "this IPCC summary",
    "globalObjectivesPart5": " for the consequences, and the below graph to see the current trend of world carbon emissions:",
    "advicesTitle": "Advices:",
    "noAdvicesExplanation": "Well, it seems you already does your best, hence I have no advice.",
    "disclaimerTitle": "Disclaimer:",
    "disclaimerExplanation":
        "Due to the complexity of the task, I do not expect this app to be very accurate, but it gives you an idea of your impact. It is possible to find different values with other sources, but sometimes they ignore certains elements such as the impact of imported products.\n\nIn addition, this app focuses only on our carbon footprint, but we should not forget the other types of pollutions (plastics, pesticides, …).\n\nI'm not affiliated with any of the mentioned organizations.",
    "aboutPart1":
        "Warmd is open-source (under GPLv3 license):\nhttps://github.com/FredJul/Warmd\n\nMainly based on https://coolclimate.org 's 2019 results, with the help of other sources:",
    "aboutPart2": "Graphical ressources:",
    "you": "You",
    "countryUSA": "USA",
    "countryCanada": "Canada",
    "countryAustralia": "Australia",
    "countrySaudiArabia": "Saudi Arabia",
    "countryUAE": "UAE",
    "countryChina": "China",
    "countryIsrael": "Israel",
    "countrySouthKorea": "South Korea",
    "countryJapan": "Japan",
    "countryGermany": "Germany",
    "countrySouthAfrica": "South Africa",
    "countryRussia": "Russia",
    "countryGreece": "Greece",
    "countryUK": "UK",
    "countryNorway": "Norway",
    "countryIndia": "India",
    "countryFrance": "France",
    "countryMexico": "Mexico",
    "countryBrasil": "Brasil",
    "countryEgypt": "Egypt",
    "countryVietnam": "Vietnam",
    "countryMorocco": "Morocco",
    "countryPhilippines": "Philippines",
    "countryCongo": "Congo",
    "countrySoudan": "Soudan",
    "doneWith": "Done with Warmd - Carbon footprint calculator"
  };
  static const Map<String, String> fr = {
    "moneyChangeCriteriaTitle": "Quelle est votre monnaie locale ?",
    "unitCriteriaTitle": "Quelles unités utilisez-vous?",
    "unitCriteriaLabel1": "Mètres et Litres",
    "unitCriteriaLabel2": "Miles et Gallons (US)",
    "unitCriteriaLabel3": "Miles et Gallons (UK)",
    "generalCategoryTitle": "Général",
    "generalAdvice":
        "Votre propre impact est insignifiant par rapport à celui des gouvernements, et aujourd'hui leurs politiques écologiques sont loin d'être suffisantes. Si vous pouvez, essayez d'influencer sur leurs décisions, via les élections ou par d'autres moyens.",
    "peopleCriteriaTitle": "Nombre de personne vivant dans votre appartement/maison",
    "peopleCriteriaExplanation":
        "Plus vous êtes, moins vous dépensez d'énergie par personne pour vous chauffez ou vous conduire.",
    "heatingFuelCriteriaTitle": "Votre facture de fioul/gaz de chauffage",
    "heatingFuelCriteriaExplanation": "L'argent dépensé chaque année, en {}.",
    "heatingFuelCriteriaAdvice":
        "Tout d'abord, essayez de mieux isoler votre maison et ne chauffez pas plus que nécessaire (vous pouvez utiliser des commandes intelligentes pour limiter le chauffage et ne chauffez pas une pièce pour adultes au-dessus de 19°C car cela réduira la qualité du sommeil). Envisagez ensuite un chauffage par pompe à chaleur, par électricité neutre en carbone ou avec des granulés de bois issus de forêts locales et durables.",
    "electricityBillCriteriaTitle": "Votre facture d'électricité",
    "electricityBillCriteriaExplanation": "L'argent dépensé chaque année, en {}.",
    "cleanElectricityCriteriaTitle": "Pourcentage d'électricité neutre en carbone",
    "cleanElectricityCriteriaExplanation":
        "Y compris l'électricité nucléaire, éolienne, solaire ou hydraulique.\n\nSi vous ne savez pas, vous pouvez peut-être trouver des réponses sur https://www.electricitymap.org",
    "cleanElectricityCriteriaAdvice":
        "Choisissez votre fournisseur d'électricité pour ne payer que pour de l'énergie renouvelable ou nucléaire.",
    "waterCriteriaTitle": "Votre consommation d'eau",
    "waterCriteriaExplanation":
        "Y compris l'eau que vous utilisez pour les douches, les bains, les chasse d'eau et le jardinage.",
    "waterCriteriaLabel1": "Faible (douches rapides, pas de jardin)",
    "waterCriteriaLabel2": "Normale",
    "waterCriteriaLabel3": "Forte (longues douches ou bains, grand jardin, …)",
    "waterCriteriaAdvice":
        "Vous pouvez facilement limiter votre consommation d'eau en prenant de courtes douches (éviter les bains) avec un pommeau de douche à réduction d'eau (jusqu'à -70% d'eau). Vous pouvez aussi mettre une bouteille en plastique dans le réservoir d'eau de vos toilettes pour en limiter la contenance et acheter un récupérateur d'eau pour votre jardin.",
    "homeCategoryTitle": "Habitat",
    "flightsCriteriaTitle": "Distance parcourue par an en avion",
    "flightsCriteriaExplanation": "Un avion produit entre 6 et 40 fois plus de gaz à effet de serre par passager qu'un train.",
    "flightsCriteriaAdvice":
        "Demandez-vous : avez-vous vraiment besoin de ces voyages en avion ? Envisagez de partir en vacances dans votre propre pays et de prendre le train.",
    "carCriteriaTitle": "Distance parcourue par an avec une voiture essence/diesel",
    "carCriteriaExplanation":
        "Si vous êtes seul dans votre voiture, c'est l'équivalent de 70% de la pollution par passager générée par un avion pour le même trajet.",
    "carCriteriaAdviceHigh":
        "Vous conduisez trop pour continuer à utiliser votre voiture essence/diesel comme ça. Vous devriez réduire votre utilisation de la voiture en déménageant ou en adoptant le travail à distance et en utilisant le train, le métro ou le bus pour la plus grande partie de votre transport. Si vous ne pouvez pas le faire et que vous avez accès à de l'électricité neutre en carbone, envisagez d'acheter une petite voiture électrique (évitez les grosses voitures).",
    "carCriteriaAdviceLow":
        "Vous pouvez davantage améliorer l'impact de votre voiture en apprenant l'éco-conduite ou en utilisant le train/métro/bus (n'achetez pas une nouvelle voiture, sa construction sera plus polluante que l'utilisation de voiture actuelle).",
    "carConsumptionCriteriaTitle": "Consommation de votre voiture en carburant essence/diesel",
    "publicTransportCriteriaTitle": "Distance parcourue par an en bus, train ou métro",
    "publicTransportCriteriaAdvice": "Pensez à travailler à distance pour réduire votre empreinte carbone liée aux transports.",
    "travelCategoryTitle": "Transport",
    "meatCriteriaTitle": "Nombre de repas de viande, de poisson ou d'œuf par semaine",
    "meatCriteriaExplanation":
        "La viande est un important émetteur de gaz à effet de serre. Le bœuf et l'agneau émettent plus de 3 fois plus de gaz à effet de serre que le poulet et plus de 5 fois plus de gaz à effet de serre que la plupart des légumes.",
    "meatCriteriaAdvice":
        "Les adultes n'ont pas besoin de plus de 2-3 repas de viande par semaine (un peu plus pour les enfants). Vous devriez aussi favoriser le poulet (3 fois moins polluant que le bœuf).",
    "dairyCriteriaTitle": "Nombre de produits laitiers par semaine",
    "dairyCriteriaExplanation": "Il est généralement recommandé d'en manger au moins une fois par jour.",
    "snacksCriteriaTitle": "Nombre de collations, boissons ou autres plats fortement transformés par semaine",
    "snacksCriteriaExplanation": "Si vous mourez de faim, ils feront l'affaire. Sinon, évitez-les.",
    "snacksCriteriaAdvice":
        "Préférez l'eau, les légumes et les fruits aux collations, aux plats transformés ou aux boissons. Attention, acheter local ne limite pas forcément les émissions de carbone et peut même les empirer dans de nombreux cas.",
    "overweightCriteriaTitle": "Êtes-vous en surpoids ?",
    "overweightCriteriaExplanation":
        "Le surpoid signifie essentiellement que vous absorbez plus d'énergie que nécessaire. Chaque année, l’humanité consomme 140 milliards de tonnes de nourriture non nécessaires.",
    "overweightCriteriaLabel1": "Non",
    "overweightCriteriaLabel2": "Un peu",
    "overweightCriteriaLabel3": "Beaucoup",
    "overweightCriteriaAdvice":
        "Le surpoids a des conséquences sur votre santé mais aussi sur la planète. Vous pouvez faire d'une pierre deux coups en réduisant simplement les viandes, boissons, collations et autres plats fortement transformés qui ont souvent un impact carbone important.",
    "foodCategoryTitle": "Nourriture",
    "materialGoodsCriteriaTitle": "Argent dépensé par mois en biens matériels",
    "materialGoodsCriteriaExplanation":
        "Concerne le mobilier, les appareils ménagers et électroniques, les vêtements, les médicaments, …",
    "materialGoodsCriteriaAdvice":
        "Vous achetez trop de biens et devriez certainement les limiter. Si vous avez vraiment besoin d’en acheter de nouveaux, trouvez-en d’occasion et vendez ou donnez les précédents.",
    "internetCriteriaTitle": "Quantité de données Internet utilisées",
    "internetCriteriaExplanation":
        "Internet est déjà responsable de plus de 4% des émissions totales de carbone, et cela pourrait doubler avant 2025.",
    "internetCriteriaLabel1": "Seulement quelques emails ou recherches par semaine",
    "internetCriteriaLabel2": "J'utilise certains sites web ou services dans le cloud au moins une fois par jour",
    "internetCriteriaLabel3": "Je regarde beaucoup de vidéo en streaming (> 30 min / jour)",
    "internetCriteriaAdvice":
        "Réduisez votre empreinte carbone en réduisant la qualité de streaming vidéo à 480p maximum (SD). Vous pouvez également utiliser des logiciels comme Ecosia ou Cleanfox pour limiter votre impact.",
    "goodsAndServicesCategoryTitle": "Biens et services",
    "seeResults": "Voir les résultats",
    "yourCarbonFootprint": "Votre empreinte carbone :",
    "knowMore": "En savoir plus",
    "valueWithMore": "{} ou plus",
    "footprintRepartitionTitle": "Répartition de vos {}:",
    "co2EqTonsValue": "{} tonnes de CO₂eq/an",
    "otherCountriesComparaisonTitle": "Comparaison avec les autres:",
    "otherCountriesColumn1Title": "Pays",
    "otherCountriesColumn2Title": "CO₂eq/an/habitant",
    "otherCountriesTonsValue": "{} tonnes",
    "otherCountriesMore": "Plus de pays sur https://coolclimate.org/calculator",
    "globalObjectivesTitle": "Objectifs mondiaux :",
    "globalObjectivesPart1": "Pour rester en dessous de +1,5°C, le consortium du GIEC a déclaré que le monde devrait réduire de",
    "globalObjectivesPart2": " 45% ses émissions d'ici 2030 et de cesser d’en émettre d'ici 2050.",
    "globalObjectivesPart3": "\n\n\nJusqu'à présent, il est très peu probable que cela se produise, voir ",
    "globalObjectivesPart4": "ce résumé du GIEC",
    "globalObjectivesPart5":
        " pour les conséquences, et le graphique ci-dessous pour voir la tendance actuelle des émissions de carbone dans le monde :",
    "advicesTitle": "Conseils :",
    "noAdvicesExplanation": "Il semblerait que vous fassiez déjà de votre mieux, par conséquent je n'ai aucun conseil.",
    "disclaimerTitle": "Avertissement :",
    "disclaimerExplanation":
        "En raison de la complexité de la tâche, je ne m'attends pas à ce que cette application soit très précise, mais elle vous donne une idée de votre impact. Il est possible de trouver des valeurs différentes ailleurs, mais ces sources ignorent parfois certains éléments tels que l’impact des produits importés.\n\nEn outre, cette application se concentre uniquement sur notre empreinte carbone, mais il ne faut pas pour autant oublier les autres types de pollutions (plastiques, pesticides, …).\n\nJe ne suis affilié à aucune des organisations mentionnées.",
    "aboutPart1":
        "Warmd est open-source (sous licence GPLv3):\nhttps://github.com/FredJul/Warmd\n\nBasé principalement sur les résultats 2019 de https://coolclimate.org , avec l'aide d'autres sources :",
    "aboutPart2": "Ressources graphiques :",
    "you": "Vous",
    "countryUSA": "USA",
    "countryCanada": "Canada",
    "countryAustralia": "Australie",
    "countrySaudiArabia": "Arabie Saoudite",
    "countryUAE": "EAU",
    "countryChina": "Chine",
    "countryIsrael": "Israël",
    "countrySouthKorea": "Corée du Sud",
    "countryJapan": "Japon",
    "countryGermany": "Allemagne",
    "countrySouthAfrica": "Afrique du Sud",
    "countryRussia": "Russie",
    "countryGreece": "Grèce",
    "countryUK": "UK",
    "countryNorway": "Novège",
    "countryIndia": "Inde",
    "countryFrance": "France",
    "countryMexico": "Mexique",
    "countryBrasil": "Brésil",
    "countryEgypt": "Égypte",
    "countryVietnam": "Vietnam",
    "countryMorocco": "Maroc",
    "countryPhilippines": "Philippines",
    "countryCongo": "Congo",
    "countrySoudan": "Soudan",
    "doneWith": "Fait avec Warmd - Calculateur d'empreinte carbone"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {"en": en, "fr": fr};
}
