// DO NOT EDIT. This is code generated via package:gen_lang/generate.dart

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
// ignore: implementation_imports
import 'package:intl/src/intl_helpers.dart';

final _$en = $en();

class $en extends MessageLookupByLibrary {
  get localeName => 'en';
  
  final messages = {
		"moneyChangeCriteriaTitle" : MessageLookupByLibrary.simpleMessage("What is your local currency?"),
		"unitCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Which units do you use?"),
		"unitCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("Meters and Liters"),
		"unitCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("Miles and Gallons (US)"),
		"unitCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("Miles and Gallons (UK)"),
		"generalCategoryTitle" : MessageLookupByLibrary.simpleMessage("General"),
		"peopleCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Number of people living in your appartment/house"),
		"peopleCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("The more you are, the less energy per person is needed to heat or drive you."),
		"heatingFuelCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Your heating fuel/gas bill"),
		"heatingFuelCriteriaExplanation" : (value) => "Money spent each year, in ${value}.",
		"heatingFuelCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("First of all, try to better insulate your home and do not heat more than necessary (you can use smart controls to limit heating and do not heat an adult room above 66°F/19°C since it will actually reduce the sleep quality). Then prefer heating with heat pump, with carbon-free electricity or with wood pellets from local and sustainable forests."),
		"electricityBillCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Your electricity bill"),
		"electricityBillCriteriaExplanation" : (value) => "Money spent each year, in ${value}.",
		"cleanElectricityCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Percent of carbon-free electricity"),
		"cleanElectricityCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Including nuclear, wind, solar or hydraulic electricity.\n\nIf you don't know, you may be able to find some answers on https://www.electricitymap.org"),
		"cleanElectricityCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Choose your electricity provider to only pay for renewable or nuclear electricity."),
		"waterCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Your water consumption"),
		"waterCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Including the water you use for showers, baths, toilet flushes and gardening."),
		"waterCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("Low (quick showers, no garden)"),
		"waterCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("Normal"),
		"waterCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("High (long showers or baths, big garden, …)"),
		"waterCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("You can easily limit your water consumption by taking short showers (avoid baths) with a water reduction showerhead (up to -70% water). You can also put a plastic bottle in the water tank of your toilet to limit its capacity and buy a water recuperator for your garden."),
		"homeCategoryTitle" : MessageLookupByLibrary.simpleMessage("Home"),
		"flightsCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Distance travelled per year by airplane"),
		"flightsCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("An airplane produces between 6x and 40x more greenhouse gas per passenger than a train."),
		"flightsCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Ask yourself: do you really need these airplane trips? Consider having holidays in your own country and take the train."),
		"carCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Distance travelled per year with a gasoline/diesel car"),
		"carCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("If you are alone in your car, it is the equivalent of 70% of the pollution per passenger generated by an aircraft for the same journey."),
		"carCriteriaAdviceHigh" : MessageLookupByLibrary.simpleMessage("You drive too much to continue using your gasoline/diesel car like that. You should reduce your car usage by moving house or adopting remote work and use the train/subway/bus for most of your transport. If you can't do this and have access to carbon-free electricity, consider buying a small electric car (avoid big cars)."),
		"carCriteriaAdviceLow" : MessageLookupByLibrary.simpleMessage("You may further improve your car impact by learning eco-driving or by using train/subway/bus (don't buy an new car, its construction will pollutes more than using your current one)."),
		"carConsumptionCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Your car's fuel consumption"),
		"publicTransportCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Distance travelled per year in bus, train or subway"),
		"publicTransportCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Consider doing remote work to reduce your transport carbon footprint."),
		"travelCategoryTitle" : MessageLookupByLibrary.simpleMessage("Transport"),
		"meatCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Number of meat, fish or egg meal per week"),
		"meatCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("The meat is a major greenhouse gas emmiter. The beef and lamb emit more than 3 times more greenhouse gas than chicken and more than 5 times more greenhouse gas than most vegetables."),
		"meatCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Adults does not need more than 2-3 meat meal per week (a bit more for kids). You also should favorise chicken (3 times less poluting than beef)."),
		"dairyCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Number of dairy products per week"),
		"dairyCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("It is generally recommended to eat some at least once per day."),
		"snacksCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Number of snacks, drinks or other highly transformed foods per week"),
		"snacksCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("If you are starving to death, they will do the job. Otherwise, just avoid them."),
		"snacksCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Prefer water, vegetables and fruits than snacks, transformed foods or drinks. Be careful, buying local products does not necessarily limit carbon emissions and can even make them worse in many cases."),
		"overweightCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Are you overweight?"),
		"overweightCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Being overweight basically means you absorb more energy than you body needs. Each year, humanity consumes unnecessary 140 billions of tons of food."),
		"overweightCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("No"),
		"overweightCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("A bit"),
		"overweightCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("Quite a lot"),
		"overweightCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Overweight has consequences for your health, but also for the planet. You can kill two birds with one stone by simply reducing meats, drinks, snacks and other highly transformed foods that often have a significant carbon impact."),
		"foodCategoryTitle" : MessageLookupByLibrary.simpleMessage("Food"),
		"materialGoodsCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Money spent per month in material goods"),
		"materialGoodsCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Concerns furnitures, appliances, clothes, electronic devices, medicines, …"),
		"materialGoodsCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("You buy too much goods and should certainly limit them. If you really need to buy new ones, find second-hand ones and sell or give your previous ones."),
		"internetCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Amount of Internet data used"),
		"internetCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Internet is already responsible of more than 4% of total carbon emissions, and it could double before 2025."),
		"internetCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("Only few emails or search per week"),
		"internetCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("I use some websites or cloud services at least once per day"),
		"internetCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("I watch lot of streaming video (> 30 min / day)"),
		"internetCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Reduce your carbon footprint by reducing the video streaming quality to 480p maximum (SD). You can also use softwares like Ecosia or Cleanfox to limit your impact."),
		"goodsAndServicesCategoryTitle" : MessageLookupByLibrary.simpleMessage("Goods and services"),
		"voteCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Do you vote for a ecologist party?"),
		"voteCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("If you should do one thing to help ecology, it's certainly this one. You own impact is mostly insignificant compared to your government's one.\n\nIf you live in a democratic country, voting for a ecologist party to ALL elections is certainly the simplest thing to do in order to help."),
		"voteCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("No, I don't want or can't"),
		"voteCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("I sometimes favor economy over ecology"),
		"voteCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("Yes!"),
		"publicOpinionCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Do you try to influence public opinion or the government in favor of ecology?"),
		"publicOpinionCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("As mentioned above, government actions are needed. Lobbying, peaceful demonstrations or the popularization of ecology can potentially influence them."),
		"publicOpinionCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("Not really"),
		"publicOpinionCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("I just try to convince people around me"),
		"publicOpinionCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("Yes!"),
		"politicalCategoryTitle" : MessageLookupByLibrary.simpleMessage("Politics"),
		"childrenCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Number of children"),
		"childrenCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Every year, there are 90 million more people on the planet and nature can no longer provide enough natural resources for sustainable development. On average each person consumes 65% of resources in excess (up to 355% for a US citizen).\n\nIt is important to reduce this rate, and we are far from it.\nWomen's education and contraception access are effective ways to achieve control of our population."),
		"childrenCategoryTitle" : MessageLookupByLibrary.simpleMessage("Children"),
		"seeResults" : MessageLookupByLibrary.simpleMessage("See results"),
		"individualApproach" : MessageLookupByLibrary.simpleMessage("Individual approach"),
		"globalApproach" : MessageLookupByLibrary.simpleMessage("Global approach"),
		"yourCarbonFootprint" : MessageLookupByLibrary.simpleMessage("Your carbon footprint:"),
		"knowMore" : MessageLookupByLibrary.simpleMessage("Learn more"),
		"valueWithMore" : (value) => "${value} or more",
		"footprintRepartitionTitle" : (footprint) => "Repartition of your ${footprint}:",
		"co2EqTonsValue" : (value) => "${value} tons CO₂eq/year",
		"globalImpactExplanation" : MessageLookupByLibrary.simpleMessage("When we think globally, the personal impact is negligible compared to the impact of a government. Only some of your actions will actually have a significant impact."),
		"globalImpactLow" : MessageLookupByLibrary.simpleMessage("You clearly do more good than harm!"),
		"globalImpactMedium" : MessageLookupByLibrary.simpleMessage("If everyone act like you, we will go through tough times"),
		"globalImpactHigh" : MessageLookupByLibrary.simpleMessage("If everyone act like you, humanity is doomed"),
		"otherCountriesComparaisonTitle" : MessageLookupByLibrary.simpleMessage("Comparison with others:"),
		"otherCountriesColumn1Title" : MessageLookupByLibrary.simpleMessage("Country"),
		"otherCountriesColumn2Title" : MessageLookupByLibrary.simpleMessage("CO₂eq/year/resident"),
		"otherCountriesTonsValue" : (value) => "${value} tons",
		"otherCountriesMore" : MessageLookupByLibrary.simpleMessage("More countries on https://coolclimate.org/calculator"),
		"globalObjectivesTitle" : MessageLookupByLibrary.simpleMessage("Global goals:"),
		"globalObjectivesPart1" : MessageLookupByLibrary.simpleMessage("To stay below +34.7°F/+1.5°C, the IPCC consortium declared that the world should cut its emissions by"),
		"globalObjectivesPart2" : MessageLookupByLibrary.simpleMessage(" 45% by 2030 and stop emitting any by 2050."),
		"globalObjectivesPart3" : MessageLookupByLibrary.simpleMessage("\n\n\nSo far, it's very unlikely to happen, see "),
		"globalObjectivesPart4" : MessageLookupByLibrary.simpleMessage("this IPCC summary"),
		"globalObjectivesPart5" : MessageLookupByLibrary.simpleMessage(" for the consequences, and the below graph to see the current trend of world carbon emissions:"),
		"advicesTitle" : MessageLookupByLibrary.simpleMessage("Advices:"),
		"noAdvicesExplanation" : MessageLookupByLibrary.simpleMessage("Well, it seems you already does your best, hence I have no advice."),
		"disclaimerTitle" : MessageLookupByLibrary.simpleMessage("Disclaimer:"),
		"disclaimerExplanation" : MessageLookupByLibrary.simpleMessage("Due to the complexity of the task, I do not expect this app to be very accurate, but it gives you an idea of your impact. It is possible to find different values with other sources, but sometimes they ignore certains elements, such as the impact of imported products.\n\nIn addition, this app focuses only on our carbon footprint, but we should not forget the other types of pollutions (plastics, pesticides, …).\n\nI'm not affiliated with any of the organizations involved."),
		"creditsTitle" : MessageLookupByLibrary.simpleMessage("Credits:"),
		"creditsPart1" : MessageLookupByLibrary.simpleMessage("Mainly based on https://coolclimate.org 's 2019 results, with the help of other sources:"),
		"creditsPart2" : MessageLookupByLibrary.simpleMessage("Graphical ressources:"),
		"countryUSA" : MessageLookupByLibrary.simpleMessage("USA"),
		"countryCanada" : MessageLookupByLibrary.simpleMessage("Canada"),
		"countryAustralia" : MessageLookupByLibrary.simpleMessage("Australia"),
		"countrySaudiArabia" : MessageLookupByLibrary.simpleMessage("Saudi Arabia"),
		"countryUAE" : MessageLookupByLibrary.simpleMessage("UAE"),
		"countryChina" : MessageLookupByLibrary.simpleMessage("China"),
		"countryIsrael" : MessageLookupByLibrary.simpleMessage("Israel"),
		"countrySouthKorea" : MessageLookupByLibrary.simpleMessage("South Korea"),
		"countryJapan" : MessageLookupByLibrary.simpleMessage("Japan"),
		"countryGermany" : MessageLookupByLibrary.simpleMessage("Germany"),
		"countrySouthAfrica" : MessageLookupByLibrary.simpleMessage("South Africa"),
		"countryRussia" : MessageLookupByLibrary.simpleMessage("Russia"),
		"countryGreece" : MessageLookupByLibrary.simpleMessage("Greece"),
		"countryUK" : MessageLookupByLibrary.simpleMessage("UK"),
		"countryNorway" : MessageLookupByLibrary.simpleMessage("Norway"),
		"countryIndia" : MessageLookupByLibrary.simpleMessage("India"),
		"countryFrance" : MessageLookupByLibrary.simpleMessage("France"),
		"countryMexico" : MessageLookupByLibrary.simpleMessage("Mexico"),
		"countryBrasil" : MessageLookupByLibrary.simpleMessage("Brasil"),
		"countryEgypt" : MessageLookupByLibrary.simpleMessage("Egypt"),
		"countryVietnam" : MessageLookupByLibrary.simpleMessage("Vietnam"),
		"countryMorocco" : MessageLookupByLibrary.simpleMessage("Morocco"),
		"countryPhilippines" : MessageLookupByLibrary.simpleMessage("Philippines"),
		"countryCongo" : MessageLookupByLibrary.simpleMessage("Congo"),
		"countrySoudan" : MessageLookupByLibrary.simpleMessage("Soudan"),
		"doneWith" : MessageLookupByLibrary.simpleMessage("Done with Warmd - Carbon footprint calculator"),

  };
}

final _$fr = $fr();

class $fr extends MessageLookupByLibrary {
  get localeName => 'fr';
  
  final messages = {
		"moneyChangeCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Quelle est votre monnaie locale ?"),
		"unitCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Quelles unités utilisez-vous?"),
		"unitCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("Mètres et Litres"),
		"unitCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("Miles et Gallons (US)"),
		"unitCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("Miles et Gallons (UK)"),
		"generalCategoryTitle" : MessageLookupByLibrary.simpleMessage("Général"),
		"peopleCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Nombre de personne vivant dans votre appartement/maison"),
		"peopleCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Plus vous êtes, moins vous dépensez d'énergie par personne pour vous chauffez ou vous conduire."),
		"heatingFuelCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Votre facture de fioul/gaz de chauffage"),
		"heatingFuelCriteriaExplanation" : (value) => "L'argent dépensé chaque année, en ${value}.",
		"heatingFuelCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Tout d'abord, essayez de mieux isoler votre maison et ne chauffez pas plus que nécessaire (vous pouvez utiliser des commandes intelligentes pour limiter le chauffage et ne chauffez pas une pièce pour adultes au-dessus de 19°C car cela réduira la qualité du sommeil). Envisagez ensuite un chauffage par pompe à chaleur, par électricité neutre en carbone ou avec des granulés de bois issus de forêts locales et durables."),
		"electricityBillCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Votre facture d'électricité"),
		"electricityBillCriteriaExplanation" : (value) => "L'argent dépensé chaque année, en ${value}.",
		"cleanElectricityCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Pourcentage d'électricité neutre en carbone"),
		"cleanElectricityCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Y compris l'électricité nucléaire, éolienne, solaire ou hydraulique.\n\nSi vous ne savez pas, vous pouvez peut-être trouver des réponses sur https://www.electricitymap.org"),
		"cleanElectricityCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Choisissez votre fournisseur d'électricité pour ne payer que pour de l'énergie renouvelable ou nucléaire."),
		"waterCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Votre consommation d'eau"),
		"waterCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Y compris l'eau que vous utilisez pour les douches, les bains, les chasse d'eau et le jardinage."),
		"waterCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("Faible (douches rapides, pas de jardin)"),
		"waterCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("Normale"),
		"waterCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("Forte (longues douches ou bains, grand jardin, …)"),
		"waterCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Vous pouvez facilement limiter votre consommation d'eau en prenant de courtes douches (éviter les bains) avec un pommeau de douche à réduction d'eau (jusqu'à -70% d'eau). Vous pouvez aussi mettre une bouteille en plastique dans le réservoir d'eau de vos toilettes pour en limiter la contenance et acheter un récupérateur d'eau pour votre jardin."),
		"homeCategoryTitle" : MessageLookupByLibrary.simpleMessage("Habitat"),
		"flightsCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Distance parcourue par an en avion"),
		"flightsCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Un avion produit entre 6 et 40 fois plus de gaz à effet de serre par passager qu'un train."),
		"flightsCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Demandez-vous : avez-vous vraiment besoin de ces voyages en avion ? Envisagez de partir en vacances dans votre propre pays et de prendre le train."),
		"carCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Distance parcourue par an avec une voiture essence/diesel"),
		"carCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Si vous êtes seul dans votre voiture, c'est l'équivalent de 70% de la pollution par passager générée par un avion pour le même trajet."),
		"carCriteriaAdviceHigh" : MessageLookupByLibrary.simpleMessage("Vous conduisez trop pour continuer à utiliser votre voiture essence/diesel comme ça. Vous devriez réduire votre utilisation de la voiture en déménageant ou en adoptant le travail à distance et en utilisant le train, le métro ou le bus pour la plus grande partie de votre transport. Si vous ne pouvez pas le faire et que vous avez accès à de l'électricité neutre en carbone, envisagez d'acheter une petite voiture électrique (évitez les grosses voitures)."),
		"carCriteriaAdviceLow" : MessageLookupByLibrary.simpleMessage("Vous pouvez davantage améliorer l'impact de votre voiture en apprenant l'éco-conduite ou en utilisant le train/métro/bus (n'achetez pas une nouvelle voiture, sa construction sera plus polluante que l'utilisation de voiture actuelle)."),
		"carConsumptionCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Consommation de votre voiture en carburant essence/diesel"),
		"publicTransportCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Distance parcourue par an en bus, train ou métro"),
		"publicTransportCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Pensez à travailler à distance pour réduire votre empreinte carbone liée aux transports."),
		"travelCategoryTitle" : MessageLookupByLibrary.simpleMessage("Transport"),
		"meatCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Nombre de repas de viande, de poisson ou d'œuf par semaine"),
		"meatCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("La viande est un important émetteur de gaz à effet de serre. Le bœuf et l'agneau émettent plus de 3 fois plus de gaz à effet de serre que le poulet et plus de 5 fois plus de gaz à effet de serre que la plupart des légumes."),
		"meatCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Les adultes n'ont pas besoin de plus de 2-3 repas de viande par semaine (un peu plus pour les enfants). Vous devriez aussi favoriser le poulet (3 fois moins polluant que le bœuf)."),
		"dairyCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Nombre de produits laitiers par semaine"),
		"dairyCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Il est généralement recommandé d'en manger au moins une fois par jour."),
		"snacksCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Nombre de collations, boissons ou autres plats fortement transformés par semaine"),
		"snacksCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Si vous mourez de faim, ils feront l'affaire. Sinon, évitez-les."),
		"snacksCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Préférez l'eau, les légumes et les fruits aux collations, aux plats transformés ou aux boissons. Attention, achetez local ne limite pas forcément les émissions de carbone et peut même les empirer dans de nombreux cas."),
		"overweightCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Êtes-vous en surpoids ?"),
		"overweightCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Le surpoid signifie essentiellement que vous absorbez plus d'énergie que nécessaire. Chaque année, l’humanité consomme 140 milliards de tonnes de nourriture non nécessaires."),
		"overweightCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("Non"),
		"overweightCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("Un peu"),
		"overweightCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("Beaucoup"),
		"overweightCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Le surpoids a des conséquences sur votre santé mais aussi sur la planète. Vous pouvez faire d'une pierre deux coups en réduisant simplement les viandes, boissons, collations et autres plats fortement transformés qui ont souvent un impact carbone important."),
		"foodCategoryTitle" : MessageLookupByLibrary.simpleMessage("Nourriture"),
		"materialGoodsCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Argent dépensé par mois en biens matériels"),
		"materialGoodsCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Concerne le mobilier, les appareils ménagers et électroniques, les vêtements, les médicaments, …"),
		"materialGoodsCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Vous achetez trop de biens et devriez certainement les limiter. Si vous avez vraiment besoin d’en acheter de nouveaux, trouvez-en d’occasion et vendez ou donnez les précédents."),
		"internetCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Quantité de données Internet utilisées"),
		"internetCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Internet est déjà responsable de plus de 4% des émissions totales de carbone, et cela pourrait doubler avant 2025."),
		"internetCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("Seulement quelques emails ou recherches par semaine"),
		"internetCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("J'utilise certains sites web ou services dans le cloud au moins une fois par jour"),
		"internetCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("Je regarde beaucoup de vidéo en streaming (> 30 min / jour)"),
		"internetCriteriaAdvice" : MessageLookupByLibrary.simpleMessage("Réduisez votre empreinte carbone en réduisant la qualité de streaming vidéo à 480p maximum (SD). Vous pouvez également utiliser des logiciels comme Ecosia ou Cleanfox pour limiter votre impact."),
		"goodsAndServicesCategoryTitle" : MessageLookupByLibrary.simpleMessage("Biens et services"),
		"voteCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Votez-vous pour un parti écologiste ?"),
		"voteCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Si vous devriez faire une chose pour aider l'écologie, c'est certainement celle-ci. Votre propre impact est généralement insignifiant par rapport à celui de votre gouvernement.\n\nSi vous vivez dans un pays démocratique, voter pour un parti écologiste à TOUTES les élections est certainement la chose la plus simple à faire pour aider."),
		"voteCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("Non, je ne veux ou ne peux pas"),
		"voteCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("Je privilégie parfois l'économie à l'écologie"),
		"voteCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("Oui !"),
		"publicOpinionCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Essayez-vous d'influencer l'opinion publique ou le gouvernement en faveur de l'écologie ?"),
		"publicOpinionCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Comme dit plus haut, des actions venant des gouvernements sont nécéssaires. Du lobbying, des manifestations pacifiques ou de la vulgarisation de l'écologie peuvent potentiellement les influencer."),
		"publicOpinionCriteriaLabel1" : MessageLookupByLibrary.simpleMessage("Pas vraiment"),
		"publicOpinionCriteriaLabel2" : MessageLookupByLibrary.simpleMessage("J'essaie seulement de convaincre les gens autour de moi"),
		"publicOpinionCriteriaLabel3" : MessageLookupByLibrary.simpleMessage("Oui !"),
		"politicalCategoryTitle" : MessageLookupByLibrary.simpleMessage("Politique"),
		"childrenCriteriaTitle" : MessageLookupByLibrary.simpleMessage("Nombre d'enfants"),
		"childrenCriteriaExplanation" : MessageLookupByLibrary.simpleMessage("Chaque année, il y a 90 millions de personnes de plus sur la planète et la nature n'arrive plus à fournir suffisamment de ressources naturelles pour un développement durable. En moyenne chaque personne consomme 65% de ressources en trop (jusqu’à 355% pour un citoyen américain).\n\nIl est important de réduire ce taux, et nous en sommes loin.\nL’éducation des femmes et l’accès à la contraception sont des moyens efficaces pour parvenir à un contrôle de notre population."),
		"childrenCategoryTitle" : MessageLookupByLibrary.simpleMessage("Enfants"),
		"seeResults" : MessageLookupByLibrary.simpleMessage("Voir les résultats"),
		"individualApproach" : MessageLookupByLibrary.simpleMessage("Approche individuelle"),
		"globalApproach" : MessageLookupByLibrary.simpleMessage("Approche globale"),
		"yourCarbonFootprint" : MessageLookupByLibrary.simpleMessage("Votre empreinte carbone :"),
		"knowMore" : MessageLookupByLibrary.simpleMessage("En savoir plus"),
		"valueWithMore" : (value) => "${value} ou plus",
		"footprintRepartitionTitle" : (footprint) => "Répartition de vos ${footprint}:",
		"co2EqTonsValue" : (value) => "${value} tonnes de CO₂eq/an",
		"globalImpactExplanation" : MessageLookupByLibrary.simpleMessage("Lorsque l'on pense global, l'impact personnel est négligeable par rapport à l'impact d'un gouvernement. Seul certaines de vos actions vont réelement avoir un impact important."),
		"globalImpactLow" : MessageLookupByLibrary.simpleMessage("Vous faites clairement plus de bien que de mal !"),
		"globalImpactMedium" : MessageLookupByLibrary.simpleMessage("Si tout le monde fait comme vous, nous connaîtrons des moments difficiles"),
		"globalImpactHigh" : MessageLookupByLibrary.simpleMessage("Si tout le monde fait comme vous, l'humanité est condamnée"),
		"otherCountriesComparaisonTitle" : MessageLookupByLibrary.simpleMessage("Comparaison avec les autres:"),
		"otherCountriesColumn1Title" : MessageLookupByLibrary.simpleMessage("Pays"),
		"otherCountriesColumn2Title" : MessageLookupByLibrary.simpleMessage("CO₂eq/an/habitant"),
		"otherCountriesTonsValue" : (value) => "${value} tonnes",
		"otherCountriesMore" : MessageLookupByLibrary.simpleMessage("Plus de pays sur https://coolclimate.org/calculator"),
		"globalObjectivesTitle" : MessageLookupByLibrary.simpleMessage("Objectifs mondiaux :"),
		"globalObjectivesPart1" : MessageLookupByLibrary.simpleMessage("Pour rester en dessous de +1,5°C, le consortium du GIEC a déclaré que le monde devrait réduire de"),
		"globalObjectivesPart2" : MessageLookupByLibrary.simpleMessage(" 45% ses émissions d'ici 2030 et de cesser d’en émettre d'ici 2050."),
		"globalObjectivesPart3" : MessageLookupByLibrary.simpleMessage("\n\n\nJusqu'à présent, il est très peu probable que cela se produise, voir "),
		"globalObjectivesPart4" : MessageLookupByLibrary.simpleMessage("ce résumé du GIEC"),
		"globalObjectivesPart5" : MessageLookupByLibrary.simpleMessage(" pour les conséquences, et le graphique ci-dessous pour voir la tendance actuelle des émissions de carbone dans le monde :"),
		"advicesTitle" : MessageLookupByLibrary.simpleMessage("Conseils :"),
		"noAdvicesExplanation" : MessageLookupByLibrary.simpleMessage("Il semblerait que vous fassiez déjà de votre mieux, par conséquent je n'ai aucun conseil."),
		"disclaimerTitle" : MessageLookupByLibrary.simpleMessage("Avertissement :"),
		"disclaimerExplanation" : MessageLookupByLibrary.simpleMessage("En raison de la complexité de la tâche, je ne m'attends pas à ce que cette application soit très précise, mais elle vous donne une idée de votre impact. Il est possible de trouver des valeurs différentes avec d'autres sources, mais elles ignorent parfois certains éléments tels que l’impact des produits importés.\n\nEn outre, cette application se concentre uniquement sur notre empreinte carbone, mais il ne faut pas pour autant oublier les autres types de pollutions (plastiques, pesticides, …).\n\nJe ne suis affilié à aucune des organisations concernées."),
		"creditsTitle" : MessageLookupByLibrary.simpleMessage("Crédits :"),
		"creditsPart1" : MessageLookupByLibrary.simpleMessage("Basé principalement sur les résultats 2019 de https://coolclimate.org , avec l'aide d'autres sources :"),
		"creditsPart2" : MessageLookupByLibrary.simpleMessage("Ressources graphiques :"),
		"countryUSA" : MessageLookupByLibrary.simpleMessage("USA"),
		"countryCanada" : MessageLookupByLibrary.simpleMessage("Canada"),
		"countryAustralia" : MessageLookupByLibrary.simpleMessage("Australie"),
		"countrySaudiArabia" : MessageLookupByLibrary.simpleMessage("Arabie Saoudite"),
		"countryUAE" : MessageLookupByLibrary.simpleMessage("EAU"),
		"countryChina" : MessageLookupByLibrary.simpleMessage("Chine"),
		"countryIsrael" : MessageLookupByLibrary.simpleMessage("Israël"),
		"countrySouthKorea" : MessageLookupByLibrary.simpleMessage("Corée du Sud"),
		"countryJapan" : MessageLookupByLibrary.simpleMessage("Japon"),
		"countryGermany" : MessageLookupByLibrary.simpleMessage("Allemagne"),
		"countrySouthAfrica" : MessageLookupByLibrary.simpleMessage("Afrique du Sud"),
		"countryRussia" : MessageLookupByLibrary.simpleMessage("Russie"),
		"countryGreece" : MessageLookupByLibrary.simpleMessage("Grèce"),
		"countryUK" : MessageLookupByLibrary.simpleMessage("UK"),
		"countryNorway" : MessageLookupByLibrary.simpleMessage("Novège"),
		"countryIndia" : MessageLookupByLibrary.simpleMessage("Inde"),
		"countryFrance" : MessageLookupByLibrary.simpleMessage("France"),
		"countryMexico" : MessageLookupByLibrary.simpleMessage("Mexique"),
		"countryBrasil" : MessageLookupByLibrary.simpleMessage("Brésil"),
		"countryEgypt" : MessageLookupByLibrary.simpleMessage("Égypte"),
		"countryVietnam" : MessageLookupByLibrary.simpleMessage("Vietnam"),
		"countryMorocco" : MessageLookupByLibrary.simpleMessage("Maroc"),
		"countryPhilippines" : MessageLookupByLibrary.simpleMessage("Philippines"),
		"countryCongo" : MessageLookupByLibrary.simpleMessage("Congo"),
		"countrySoudan" : MessageLookupByLibrary.simpleMessage("Soudan"),
		"doneWith" : MessageLookupByLibrary.simpleMessage("Fait avec Warmd - Calculateur d'empreinte carbone"),

  };
}



typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
	"en": () => Future.value(null),
	"fr": () => Future.value(null),

};

MessageLookupByLibrary _findExact(localeName) {
  switch (localeName) {
    case "en":
        return _$en;
    case "fr":
        return _$fr;

    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) async {
  var availableLocale = Intl.verifiedLocale(
      localeName,
          (locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return Future.value(false);
  }
  var lib = _deferredLibraries[availableLocale];
  await (lib == null ? Future.value(false) : lib());

  initializeInternalMessageLookup(() => CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);

  return Future.value(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary _findGeneratedMessagesFor(locale) {
  var actualLocale = Intl.verifiedLocale(locale, _messagesExistFor,
      onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
