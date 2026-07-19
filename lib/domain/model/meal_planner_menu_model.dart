import 'package:basic_diet/domain/model/add_ons_model.dart';

class MealPlannerMenuModel {
  final String currency;
  final BuilderCatalogModel builderCatalog;
  final BuilderCatalogV2Model? builderCatalogV2;
  final List<AddOnModel> addons;
  final Map<String, List<AddOnModel>> addonsByCategory;

  MealPlannerMenuModel({
    required this.currency,
    required this.builderCatalog,
    this.builderCatalogV2,
    this.addons = const [],
    this.addonsByCategory = const {},
  });
}

class BuilderCatalogV2Model {
  final String catalogVersion;
  final String currency;
  final List<BuilderCatalogV2SectionModel> sections;
  final BuilderRulesModel rules;

  BuilderCatalogV2Model({
    required this.catalogVersion,
    required this.currency,
    required this.sections,
    required this.rules,
  });

  List<BuilderCatalogV2ProductModel> get products => sections
      .expand((section) => section.products)
      .where((product) => product.resolvedProductId.isNotEmpty)
      .toList(growable: false);

  BuilderCatalogV2ProductModel? productById(String? productId) {
    if (productId == null || productId.isEmpty) return null;
    for (final product in products) {
      if (product.resolvedProductId == productId) return product;
    }
    return null;
  }
}

class BuilderCatalogV2SectionModel {
  final String id;
  final String key;
  final String type;
  final String selectionType;
  final String name;
  final Map<String, String> nameI18n;
  final String description;
  final Map<String, String> descriptionI18n;
  final int sortOrder;
  final BuilderCatalogV2UiModel ui;
  final List<BuilderCatalogV2ProductModel> products;

  BuilderCatalogV2SectionModel({
    required this.id,
    required this.key,
    required this.type,
    required this.selectionType,
    required this.name,
    this.nameI18n = const {},
    this.description = '',
    this.descriptionI18n = const {},
    required this.sortOrder,
    required this.ui,
    required this.products,
  });

  String localizedName(String languageCode) =>
      _localizedValue(nameI18n, languageCode, name, key);

  String localizedDescription(String languageCode) =>
      _localizedValue(descriptionI18n, languageCode, description, '');
}

class BuilderCatalogV2ProductModel {
  final String id;
  final String productId;
  final String key;
  final String type;
  final bool isVirtual;
  final String selectionType;
  final String name;
  final Map<String, String> nameI18n;
  final String description;
  final Map<String, String> descriptionI18n;
  final String imageUrl;
  final String itemType;
  final String pricingModel;
  final int? priceHalala;
  final String currency;
  final int? calories;
  final String proteinFamilyKey;
  final int sortOrder;
  final BuilderCatalogV2UiModel ui;
  final BuilderItemActionModel action;
  final List<BuilderCatalogV2OptionSectionModel> optionSections;
  final List<BuilderCatalogV2OptionGroupModel> optionGroups;

  BuilderCatalogV2ProductModel({
    required this.id,
    this.productId = '',
    required this.key,
    required this.type,
    required this.isVirtual,
    required this.selectionType,
    required this.name,
    this.nameI18n = const {},
    this.description = '',
    this.descriptionI18n = const {},
    this.imageUrl = '',
    this.itemType = '',
    this.pricingModel = '',
    this.priceHalala,
    this.currency = '',
    this.calories,
    this.proteinFamilyKey = '',
    required this.sortOrder,
    required this.ui,
    this.action = const BuilderItemActionModel(),
    this.optionSections = const [],
    this.optionGroups = const [],
  });

  String get resolvedProductId => productId.isNotEmpty ? productId : id;

  bool get hasCanonicalIdentity => resolvedProductId.isNotEmpty;

  bool get isDirectMeal {
    if (!action.isDirectAdd) return false;
    return action.treatAsFullMeal ||
        selectionType == 'full_meal_product' ||
        selectionType == 'sandwich';
  }

  bool get opensProductBuilder => action.opensBuilder;

  bool get hasContradictoryAction => !isDirectMeal && !opensProductBuilder;

  String localizedName(String languageCode) =>
      _localizedValue(nameI18n, languageCode, name, key);

  String localizedDescription(String languageCode) =>
      _localizedValue(descriptionI18n, languageCode, description, '');
}

class BuilderItemActionModel {
  final String type;
  final bool requiresBuilder;
  final bool treatAsFullMeal;

  const BuilderItemActionModel({
    this.type = '',
    this.requiresBuilder = false,
    this.treatAsFullMeal = false,
  });

  bool get isDirectAdd => type == 'direct_add' && !requiresBuilder;

  bool get opensBuilder => type == 'open_builder' || requiresBuilder;
}

class BuilderCatalogV2OptionGroupModel {
  final String id;
  final String groupId;
  final String key;
  final String sourceKey;
  final String name;
  final Map<String, String> nameI18n;
  final int? minSelections;
  final int? maxSelections;
  final bool isRequired;
  final int sortOrder;
  final BuilderCatalogV2UiModel ui;
  final Map<String, dynamic> rules;
  final List<BuilderCatalogV2OptionSectionModel> optionSections;
  final List<BuilderCatalogV2OptionModel> options;

  BuilderCatalogV2OptionGroupModel({
    required this.id,
    required this.groupId,
    required this.key,
    required this.sourceKey,
    required this.name,
    this.nameI18n = const {},
    this.minSelections,
    this.maxSelections,
    required this.isRequired,
    required this.sortOrder,
    required this.ui,
    this.rules = const {},
    this.optionSections = const [],
    this.options = const [],
  });

  String get resolvedGroupId => groupId.isNotEmpty ? groupId : id;

  String localizedName(String languageCode) =>
      _localizedValue(nameI18n, languageCode, name, key);

  int get effectiveMinSelections => minSelections ?? (isRequired ? 1 : 0);

  int get effectiveMaxSelections {
    final configured = maxSelections;
    if (configured == null || configured <= 0) return options.length;
    return configured;
  }
}

class BuilderCatalogV2OptionSectionModel {
  final String key;
  final String name;
  final Map<String, String> nameI18n;
  final String proteinFamilyKey;
  final List<String> optionIds;
  final int sortOrder;

  BuilderCatalogV2OptionSectionModel({
    required this.key,
    required this.name,
    this.nameI18n = const {},
    this.proteinFamilyKey = '',
    this.optionIds = const [],
    this.sortOrder = 0,
  });
}

class BuilderCatalogV2OptionModel {
  final String id;
  final String optionId;
  final String key;
  final String name;
  final Map<String, String> nameI18n;
  final String description;
  final Map<String, String> descriptionI18n;
  final String imageUrl;
  final int sortOrder;
  final String displayCategoryKey;
  final String proteinFamilyKey;
  final Map<String, String> proteinFamilyNameI18n;
  final String premiumKey;
  final int? extraFeeHalala;
  final int? extraPriceHalala;
  final String selectionType;
  final bool? isPremium;
  final int? calories;
  final BuilderCatalogV2UiModel ui;

  BuilderCatalogV2OptionModel({
    required this.id,
    required this.optionId,
    required this.key,
    required this.name,
    this.nameI18n = const {},
    this.description = '',
    this.descriptionI18n = const {},
    this.imageUrl = '',
    required this.sortOrder,
    this.displayCategoryKey = '',
    this.proteinFamilyKey = '',
    this.proteinFamilyNameI18n = const {},
    this.premiumKey = '',
    this.extraFeeHalala,
    this.extraPriceHalala,
    this.selectionType = '',
    this.isPremium,
    this.calories,
    this.ui = const BuilderCatalogV2UiModel(),
  });

  String get resolvedOptionId => optionId.isNotEmpty ? optionId : id;

  String localizedName(String languageCode) =>
      _localizedValue(nameI18n, languageCode, name, key);

  String localizedDescription(String languageCode) =>
      _localizedValue(descriptionI18n, languageCode, description, '');
}

class BuilderCatalogV2UiModel {
  final String cardVariant;
  final String badge;
  final String ctaLabel;
  final String imageRatio;
  final String displayStyle;

  const BuilderCatalogV2UiModel({
    this.cardVariant = '',
    this.badge = '',
    this.ctaLabel = '',
    this.imageRatio = '',
    this.displayStyle = '',
  });
}

class BuilderCatalogModel {
  final List<BuilderCatalogV2SectionModel> sections;
  final List<BuilderCategoryModel> categories;
  final List<BuilderProteinModel> proteins;
  final List<BuilderProteinModel> premiumProteins;
  final List<BuilderCarbModel> carbs;
  final List<BuilderSandwichModel> sandwiches;
  final BuilderRulesModel rules;
  final PremiumLargeSaladModel? premiumLargeSalad;

  BuilderCatalogModel({
    this.sections = const [],
    required this.categories,
    required this.proteins,
    required this.premiumProteins,
    required this.carbs,
    required this.sandwiches,
    required this.rules,
    this.premiumLargeSalad,
  });

  List<BuilderProteinModel> get allProteins => [
    ...proteins,
    ...premiumProteins,
  ];

  List<BuilderProteinModel> get allSaladProteins => allProteins;

  List<BuilderSandwichModel> get directFullMealItems => sandwiches;
}

class BuilderCategoryModel {
  final String id;
  final String key;
  final String dimension;
  final String name;
  final String description;
  final int sortOrder;

  BuilderCategoryModel({
    required this.id,
    required this.key,
    required this.dimension,
    required this.name,
    required this.description,
    required this.sortOrder,
  });
}

class BuilderProteinModel {
  final String id;
  final String key;
  final String displayCategoryId;
  final String displayCategoryKey;
  final String name;
  final String description;
  final String proteinFamilyKey;
  final String premiumKey;
  final List<String> ruleTags;
  final bool isPremium;
  final int premiumCreditCost;
  final int extraFeeHalala;
  final String currency;
  final int sortOrder;

  BuilderProteinModel({
    required this.id,
    required this.key,
    required this.displayCategoryId,
    required this.displayCategoryKey,
    required this.name,
    required this.description,
    required this.proteinFamilyKey,
    this.premiumKey = '',
    required this.ruleTags,
    required this.isPremium,
    required this.premiumCreditCost,
    required this.extraFeeHalala,
    required this.currency,
    required this.sortOrder,
  });
}

class BuilderCarbModel {
  final String id;
  final String displayCategoryId;
  final String displayCategoryKey;
  final String name;
  final String description;
  final int sortOrder;

  BuilderCarbModel({
    required this.id,
    required this.displayCategoryId,
    required this.displayCategoryKey,
    required this.name,
    required this.description,
    required this.sortOrder,
  });
}

class BuilderSandwichModel {
  final String id;
  final String key;
  final String selectionType;
  final String name;
  final String description;
  final int sortOrder;
  final BuilderItemActionModel action;
  final String sectionKey;
  final String sectionName;

  BuilderSandwichModel({
    required this.id,
    this.key = '',
    required this.selectionType,
    required this.name,
    required this.description,
    required this.sortOrder,
    this.action = const BuilderItemActionModel(),
    this.sectionKey = '',
    this.sectionName = '',
  });

  bool get isDirectFullMeal =>
      action.isDirectAdd &&
      (action.treatAsFullMeal ||
          selectionType == 'full_meal_product' ||
          selectionType == 'sandwich');
}

class BuilderRulesModel {
  final String version;
  final BeefRuleModel beef;
  final int maxCarbItemsPerMeal;
  final int maxCarbTotalGrams;

  BuilderRulesModel({
    required this.version,
    required this.beef,
    this.maxCarbItemsPerMeal = 2,
    this.maxCarbTotalGrams = 300,
  });
}

class BeefRuleModel {
  final String proteinFamilyKey;
  final int maxSlotsPerDay;

  BeefRuleModel({required this.proteinFamilyKey, required this.maxSlotsPerDay});
}

class PremiumLargeSaladModel {
  final String id;
  final String selectionType;
  final String premiumKey;
  final String presetKey;
  final String name;
  final int extraFeeHalala;
  final String currency;
  final PremiumLargeSaladPresetModel preset;
  final List<PremiumLargeSaladIngredientModel> ingredients;
  final List<PremiumLargeSaladGroupRuleModel> groups;

  PremiumLargeSaladModel({
    required this.id,
    required this.selectionType,
    required this.premiumKey,
    required this.presetKey,
    required this.name,
    required this.extraFeeHalala,
    required this.currency,
    required this.preset,
    required this.ingredients,
    required this.groups,
  });
}

class PremiumLargeSaladPresetModel {
  final String key;
  final String name;
  final String selectionType;
  final int fixedPriceHalala;
  final String currency;
  final List<PremiumLargeSaladGroupRuleModel> groups;

  PremiumLargeSaladPresetModel({
    required this.key,
    required this.name,
    required this.selectionType,
    required this.fixedPriceHalala,
    required this.currency,
    required this.groups,
  });
}

class PremiumLargeSaladGroupRuleModel {
  final String key;
  final int minSelect;
  final int maxSelect;

  PremiumLargeSaladGroupRuleModel({
    required this.key,
    required this.minSelect,
    required this.maxSelect,
  });
}

class PremiumLargeSaladIngredientModel {
  final String id;
  final String groupKey;
  final String name;
  final int calories;

  PremiumLargeSaladIngredientModel({
    required this.id,
    required this.groupKey,
    required this.name,
    required this.calories,
  });
}

String _localizedValue(
  Map<String, String> localized,
  String languageCode,
  String fallback,
  String safeFallback,
) {
  final normalizedLanguage =
      languageCode.toLowerCase().startsWith('en') ? 'en' : 'ar';
  final current = localized[normalizedLanguage]?.trim();
  if (current != null && current.isNotEmpty) return current;
  final base = fallback.trim();
  if (base.isNotEmpty) return base;
  final alternate = localized[normalizedLanguage == 'ar' ? 'en' : 'ar']?.trim();
  if (alternate != null && alternate.isNotEmpty) return alternate;
  return safeFallback;
}
