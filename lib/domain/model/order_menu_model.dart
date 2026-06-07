class OrderMenuModel {
  final String source;
  final String fulfillmentMethod;
  final String currency;
  final bool vatIncluded;
  final int vatPercentage;
  final List<String> itemTypes;
  final Map<String, dynamic> restaurantHours;

  // Dynamic catalog
  final List<OrderMenuCategoryModel> categories;

  // Legacy fallback
  final OrderMenuStandardMealsModel? standardMeals;
  final List<OrderMenuSandwichModel> sandwiches;
  final OrderMenuSaladModel? salad;
  final OrderMenuAddonsModel? addons;

  bool get hasDynamicCatalog => categories.isNotEmpty;

  const OrderMenuModel({
    required this.source,
    required this.fulfillmentMethod,
    required this.currency,
    required this.vatIncluded,
    required this.vatPercentage,
    required this.itemTypes,
    this.restaurantHours = const {},
    this.categories = const [],
    this.standardMeals,
    this.sandwiches = const [],
    this.salad,
    this.addons,
  });
}

// ─── Dynamic Catalog ───

enum ProductCardSize { large, medium, small }

class OrderMenuCategoryModel {
  final String id;
  final String key;
  final String name;
  final Map<String, String> nameI18n;
  final String? description;
  final String? imageUrl;
  final String cardVariant;
  final int sortOrder;
  final List<OrderMenuProductModel> products;

  const OrderMenuCategoryModel({
    required this.id,
    required this.key,
    required this.name,
    this.nameI18n = const {},
    this.description,
    this.imageUrl,
    this.cardVariant = 'addon_collection',
    required this.sortOrder,
    required this.products,
  });

  String displayName(String localeCode) =>
      _resolveLocalizedText(name, nameI18n, localeCode);
}

class OrderMenuProductModel {
  final String id;
  final String key;
  final String categoryId;
  final String name;
  final Map<String, String> nameI18n;
  final String? description;
  final Map<String, String> descriptionI18n;
  final String? imageUrl;
  final String itemType;
  final String pricingModel;
  final int priceHalala;
  final int? calories;
  final int baseUnitGrams;
  final int defaultWeightGrams;
  final int minWeightGrams;
  final int maxWeightGrams;
  final int weightStepGrams;
  final int sortOrder;
  final bool? requiresBuilder;
  final bool? canAddDirectly;
  final ProductCardSize cardSize;
  final String badge;
  final String ctaLabel;
  final double? imageRatio;
  final List<OrderMenuOptionSectionModel> optionSections;
  final List<OrderMenuOptionGroupModel> optionGroups;

  bool get resolvedRequiresBuilder =>
      requiresBuilder ?? optionGroups.isNotEmpty || pricingModel == 'per_100g';

  bool get resolvedCanAddDirectly =>
      canAddDirectly ??
      (pricingModel == 'fixed' &&
          optionGroups.isEmpty &&
          !resolvedRequiresBuilder);

  const OrderMenuProductModel({
    required this.id,
    required this.key,
    required this.categoryId,
    required this.name,
    this.nameI18n = const {},
    this.description,
    this.descriptionI18n = const {},
    this.imageUrl,
    required this.itemType,
    required this.pricingModel,
    required this.priceHalala,
    this.calories,
    required this.baseUnitGrams,
    required this.defaultWeightGrams,
    required this.minWeightGrams,
    required this.maxWeightGrams,
    required this.weightStepGrams,
    required this.sortOrder,
    this.requiresBuilder,
    this.canAddDirectly,
    this.cardSize = ProductCardSize.medium,
    this.badge = '',
    this.ctaLabel = '',
    this.imageRatio,
    this.optionSections = const [],
    required this.optionGroups,
  });

  String displayName(String localeCode) =>
      _resolveLocalizedText(name, nameI18n, localeCode);

  String displayDescription(String localeCode, {String fallback = ''}) {
    final localized = _resolveLocalizedText(
      description ?? fallback,
      descriptionI18n,
      localeCode,
      preferFallbackText: true,
    );
    return localized.isNotEmpty ? localized : fallback;
  }
}

class OrderMenuOptionGroupModel {
  final String id;
  final String groupId;
  final String key;
  final String name;
  final Map<String, String> nameI18n;
  final int minSelections;
  final int? maxSelections;
  final bool isRequired;
  final String displayStyle;
  final String sourceKey;
  final Map<String, dynamic> rules;
  final List<OrderMenuOptionSectionModel> optionSections;
  final int sortOrder;
  final List<OrderMenuOptionModel> options;

  const OrderMenuOptionGroupModel({
    required this.id,
    required this.groupId,
    required this.key,
    required this.name,
    this.nameI18n = const {},
    required this.minSelections,
    required this.maxSelections,
    required this.isRequired,
    this.displayStyle = 'chips',
    this.sourceKey = '',
    this.rules = const {},
    this.optionSections = const [],
    required this.sortOrder,
    required this.options,
  });
}

class OrderMenuOptionSectionModel {
  final String key;
  final String name;
  final String proteinFamilyKey;
  final List<String> optionIds;
  final int sortOrder;

  const OrderMenuOptionSectionModel({
    required this.key,
    required this.name,
    this.proteinFamilyKey = '',
    this.optionIds = const [],
    this.sortOrder = 0,
  });
}

class OrderMenuOptionModel {
  final String id;
  final String optionId;
  final String groupId;
  final String key;
  final String name;
  final Map<String, String> nameI18n;
  final String? description;
  final Map<String, String> descriptionI18n;
  final int extraPriceHalala;
  final int extraFeeHalala;
  final String displayCategoryKey;
  final String proteinFamilyKey;
  final Map<String, String> proteinFamilyNameI18n;
  final String premiumKey;
  final String selectionType;
  final bool isPremium;
  final int? calories;
  final int extraWeightUnitGrams;
  final int extraWeightPriceHalala;
  final int sortOrder;
  final String imageUrl;
  final Map<String, dynamic> ui;

  const OrderMenuOptionModel({
    required this.id,
    required this.optionId,
    required this.groupId,
    required this.key,
    required this.name,
    this.nameI18n = const {},
    this.description,
    this.descriptionI18n = const {},
    required this.extraPriceHalala,
    this.extraFeeHalala = 0,
    this.displayCategoryKey = '',
    this.proteinFamilyKey = '',
    this.proteinFamilyNameI18n = const {},
    this.premiumKey = '',
    this.selectionType = '',
    this.isPremium = false,
    this.calories,
    required this.extraWeightUnitGrams,
    required this.extraWeightPriceHalala,
    required this.sortOrder,
    this.imageUrl = '',
    this.ui = const {},
  });

  String displayName(String localeCode) =>
      _resolveLocalizedText(name, nameI18n, localeCode);
}

String _resolveLocalizedText(
  String fallback,
  Map<String, String> localized,
  String localeCode, {
  bool preferFallbackText = false,
}) {
  final normalizedLocale = localeCode.toLowerCase().replaceAll('_', '-');
  final languageCode = normalizedLocale.split('-').first;

  final candidates = <String>[
    normalizedLocale,
    languageCode,
    if (languageCode == 'ar') 'ar',
    if (languageCode == 'ar') 'en',
    if (languageCode != 'ar') 'en',
  ];

  for (final candidate in candidates) {
    final value = localized[candidate]?.trim();
    if (value != null && value.isNotEmpty) {
      return value;
    }
  }

  final fallbackValue = fallback.trim();
  if (fallbackValue.isNotEmpty || preferFallbackText) {
    return fallbackValue;
  }

  for (final value in localized.values) {
    final resolved = value.trim();
    if (resolved.isNotEmpty) return resolved;
  }

  return '';
}

// ─── Legacy Fallback ───

class OrderMenuStandardMealsModel {
  final List<OrderMenuProteinModel> proteins;
  final List<OrderMenuCarbModel> carbs;

  const OrderMenuStandardMealsModel({
    required this.proteins,
    required this.carbs,
  });
}

class OrderMenuProteinModel {
  final String id;
  final String name;

  const OrderMenuProteinModel({required this.id, required this.name});
}

class OrderMenuCarbModel {
  final String id;
  final String name;
  final int defaultGrams;

  const OrderMenuCarbModel({
    required this.id,
    required this.name,
    required this.defaultGrams,
  });
}

class OrderMenuSandwichModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final int priceHalala;
  final List<OrderMenuAddonItemModel> availableAddons;

  const OrderMenuSandwichModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.priceHalala,
    required this.availableAddons,
  });
}

class OrderMenuSaladModel {
  final List<OrderMenuIngredientModel> ingredients;
  final Map<String, dynamic> rules;

  const OrderMenuSaladModel({required this.ingredients, required this.rules});
}

class OrderMenuIngredientModel {
  final String id;
  final String name;
  final int priceHalala;

  const OrderMenuIngredientModel({
    required this.id,
    required this.name,
    required this.priceHalala,
  });
}

class OrderMenuAddonsModel {
  final List<OrderMenuAddonItemModel> items;
  final Map<String, dynamic> byCategory;

  const OrderMenuAddonsModel({required this.items, required this.byCategory});
}

class OrderMenuAddonItemModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final int priceHalala;
  final String category;

  const OrderMenuAddonItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.priceHalala,
    required this.category,
  });
}
