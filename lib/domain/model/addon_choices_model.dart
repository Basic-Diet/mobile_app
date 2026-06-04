import 'package:equatable/equatable.dart';

class AddonChoicesModel extends Equatable {
  final List<AddonChoiceCategoryModel> categories;

  const AddonChoicesModel({this.categories = const []});

  bool get isEmpty => categories.isEmpty;

  Map<String, AddonChoiceCategoryModel> get categoriesByKey {
    return {
      for (final category in categories) category.category: category,
    };
  }

  @override
  List<Object?> get props => [categories];
}

class AddonChoiceCategoryModel extends Equatable {
  final String category;
  final List<String> sourceCategories;
  final List<AddonChoiceModel> choices;

  const AddonChoiceCategoryModel({
    required this.category,
    this.sourceCategories = const [],
    this.choices = const [],
  });

  @override
  List<Object?> get props => [category, sourceCategories, choices];
}

class AddonChoiceModel extends Equatable {
  final String id;
  final String key;
  final String name;
  final String nameAr;
  final Map<String, String> nameI18n;
  final int priceHalala;
  final double priceSar;
  final String currency;
  final int? calories;
  final int? prepTimeMinutes;
  final String categoryKey;
  final String itemType;
  final String type;
  final bool available;
  final bool active;
  final Map<String, dynamic> ui;

  const AddonChoiceModel({
    required this.id,
    required this.key,
    required this.name,
    required this.nameAr,
    required this.nameI18n,
    required this.priceHalala,
    required this.priceSar,
    required this.currency,
    required this.calories,
    required this.prepTimeMinutes,
    required this.categoryKey,
    required this.itemType,
    required this.type,
    required this.available,
    required this.active,
    required this.ui,
  });

  bool get isSelectable => available && active;

  String displayName(String localeCode) {
    final normalizedLocale = localeCode.toLowerCase();
    final languageCode = normalizedLocale.split('-').first;
    if (nameI18n.containsKey(normalizedLocale)) {
      return nameI18n[normalizedLocale] ?? name;
    }
    if (nameI18n.containsKey(languageCode)) {
      return nameI18n[languageCode] ?? name;
    }
    if (languageCode == 'ar' && nameAr.isNotEmpty) {
      return nameAr;
    }
    return name;
  }

  @override
  List<Object?> get props => [
    id,
    key,
    name,
    nameAr,
    nameI18n,
    priceHalala,
    priceSar,
    currency,
    calories,
    prepTimeMinutes,
    categoryKey,
    itemType,
    type,
    available,
    active,
    ui,
  ];
}
