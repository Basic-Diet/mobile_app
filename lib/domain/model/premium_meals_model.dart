import 'package:basic_diet/domain/model/localized_text_resolver.dart';

class PremiumMealsModel {
  List<PremiumMealModel> meals;

  PremiumMealsModel({required this.meals});
}

class PremiumMealModel {
  String id;
  String name;
  String description;
  String nameAr;
  String nameEn;
  String descriptionAr;
  String descriptionEn;
  String sourceName;
  String sourceNameAr;
  String sourceNameEn;
  String imageUrl;
  String currency;
  int extraFeeHalala;
  double extraFeeSar;
  int priceHalala;
  double priceSar;
  String priceLabel;
  int proteinGrams;
  int carbGrams;
  int fatGrams;
  String premiumKey;
  PremiumMealUiModel ui;

  PremiumMealModel({
    required this.id,
    required this.name,
    required this.description,
    required this.nameAr,
    required this.nameEn,
    required this.descriptionAr,
    required this.descriptionEn,
    required this.sourceName,
    required this.sourceNameAr,
    required this.sourceNameEn,
    required this.imageUrl,
    required this.currency,
    required this.extraFeeHalala,
    required this.extraFeeSar,
    required this.priceHalala,
    required this.priceSar,
    required this.priceLabel,
    required this.proteinGrams,
    required this.carbGrams,
    required this.fatGrams,
    required this.premiumKey,
    required this.ui,
  });

  String displayName(String localeCode) => LocalizedTextValue(
    ar: nameAr,
    en: nameEn,
    scalar: name,
  ).resolve(localeCode);

  String displayDescription(String localeCode) => LocalizedTextValue(
    ar: descriptionAr,
    en: descriptionEn,
    scalar: description,
  ).resolve(localeCode);

  String displaySourceName(String localeCode) => LocalizedTextValue(
    ar: sourceNameAr,
    en: sourceNameEn,
    scalar: sourceName,
  ).resolve(localeCode);
}

class PremiumMealUiModel {
  String title;
  String subtitle;
  String ctaLabel;
  String selectionStyle;

  PremiumMealUiModel({
    required this.title,
    required this.subtitle,
    required this.ctaLabel,
    required this.selectionStyle,
  });
}
