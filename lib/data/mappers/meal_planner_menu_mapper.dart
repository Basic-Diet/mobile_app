import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/app/extensions.dart';
import 'package:basic_diet/data/mappers/addons_mapper.dart';
import 'package:basic_diet/data/response/addons_response.dart';
import 'package:basic_diet/data/response/meal_planner_menu_response.dart';
import 'package:basic_diet/domain/model/add_ons_model.dart';
import 'package:basic_diet/domain/model/meal_planner_menu_model.dart';

extension BuilderCategoryResponseMapper on BuilderCategoryResponse? {
  BuilderCategoryModel toDomain() {
    return BuilderCategoryModel(
      id: this?.id.orEmpty() ?? Constants.empty,
      key: this?.key.orEmpty() ?? Constants.empty,
      dimension: this?.dimension.orEmpty() ?? Constants.empty,
      name: this?.name.orEmpty() ?? Constants.empty,
      description: this?.description.orEmpty() ?? Constants.empty,
      sortOrder: this?.sortOrder.orZero() ?? Constants.zero,
    );
  }
}

extension BuilderProteinResponseMapper on BuilderProteinResponse? {
  BuilderProteinModel toDomain() {
    return BuilderProteinModel(
      id: this?.id.orEmpty() ?? Constants.empty,
      key: this?.id.orEmpty() ?? Constants.empty,
      displayCategoryId: this?.displayCategoryId.orEmpty() ?? Constants.empty,
      displayCategoryKey: this?.displayCategoryKey.orEmpty() ?? Constants.empty,
      name: this?.name.orEmpty() ?? Constants.empty,
      description: this?.description.orEmpty() ?? Constants.empty,
      proteinFamilyKey: this?.proteinFamilyKey.orEmpty() ?? Constants.empty,
      premiumKey: this?.premiumKey.orEmpty() ?? Constants.empty,
      ruleTags: this?.ruleTags ?? const [],
      isPremium: this?.isPremium.orFalse() ?? Constants.falseValue,
      premiumCreditCost: this?.premiumCreditCost.orZero() ?? Constants.zero,
      extraFeeHalala: this?.extraFeeHalala.orZero() ?? Constants.zero,
      currency: this?.currency.orEmpty() ?? Constants.empty,
      sortOrder: this?.sortOrder.orZero() ?? Constants.zero,
    );
  }
}

extension BuilderCarbResponseMapper on BuilderCarbResponse? {
  BuilderCarbModel toDomain() {
    return BuilderCarbModel(
      id: this?.id.orEmpty() ?? Constants.empty,
      displayCategoryId: this?.displayCategoryId.orEmpty() ?? Constants.empty,
      displayCategoryKey: this?.displayCategoryKey.orEmpty() ?? Constants.empty,
      name: this?.name.orEmpty() ?? Constants.empty,
      description: this?.description.orEmpty() ?? Constants.empty,
      sortOrder: this?.sortOrder.orZero() ?? Constants.zero,
    );
  }
}

extension BuilderSandwichResponseMapper on BuilderSandwichResponse? {
  BuilderSandwichModel toDomain() {
    return BuilderSandwichModel(
      id: this?.id.orEmpty() ?? Constants.empty,
      selectionType: this?.selectionType.orEmpty() ?? 'sandwich',
      name: this?.name.orEmpty() ?? Constants.empty,
      description: this?.description.orEmpty() ?? Constants.empty,
      sortOrder: this?.sortOrder.orZero() ?? Constants.zero,
    );
  }
}

extension BeefRuleResponseMapper on BeefRuleResponse? {
  BeefRuleModel toDomain() {
    return BeefRuleModel(
      proteinFamilyKey: this?.proteinFamilyKey.orEmpty() ?? Constants.empty,
      maxSlotsPerDay: this?.maxSlotsPerDay.orZero() ?? Constants.zero,
    );
  }
}

extension BuilderRulesResponseMapper on BuilderRulesResponse? {
  BuilderRulesModel toDomain() {
    final self = this;
    return BuilderRulesModel(
      version: self?.version.orEmpty() ?? Constants.empty,
      beef: (self?.beef).toDomain(),
      maxCarbItemsPerMeal:
          self?.maxCarbItemsPerMeal.orZero() == 0
              ? 2
              : self!.maxCarbItemsPerMeal!,
      maxCarbTotalGrams:
          self?.maxCarbTotalGrams.orZero() == 0
              ? 300
              : self!.maxCarbTotalGrams!,
    );
  }
}

extension PremiumLargeSaladGroupRuleResponseMapper
    on PremiumLargeSaladGroupRuleResponse? {
  PremiumLargeSaladGroupRuleModel toDomain() {
    return PremiumLargeSaladGroupRuleModel(
      key: this?.key.orEmpty() ?? Constants.empty,
      minSelect: this?.minSelect.orZero() ?? Constants.zero,
      maxSelect: this?.maxSelect.orZero() ?? Constants.zero,
    );
  }
}

extension PremiumLargeSaladIngredientResponseMapper
    on PremiumLargeSaladIngredientResponse? {
  PremiumLargeSaladIngredientModel toDomain() {
    return PremiumLargeSaladIngredientModel(
      id: this?.id.orEmpty() ?? Constants.empty,
      groupKey: this?.groupKey.orEmpty() ?? Constants.empty,
      name: this?.name.orEmpty() ?? Constants.empty,
      calories: this?.calories.orZero() ?? Constants.zero,
    );
  }
}

extension PremiumLargeSaladPresetResponseMapper
    on PremiumLargeSaladPresetResponse? {
  PremiumLargeSaladPresetModel toDomain() {
    return PremiumLargeSaladPresetModel(
      key: this?.key.orEmpty() ?? Constants.empty,
      name: this?.name.orEmpty() ?? Constants.empty,
      selectionType: this?.selectionType.orEmpty() ?? 'premium_large_salad',
      fixedPriceHalala: this?.fixedPriceHalala.orZero() ?? Constants.zero,
      currency: this?.currency.orEmpty() ?? 'SAR',
      groups: (this?.groups?.map((e) => e.toDomain()).toList()) ?? const [],
    );
  }
}

extension PremiumLargeSaladResponseMapper on PremiumLargeSaladResponse? {
  PremiumLargeSaladModel toDomain() {
    return PremiumLargeSaladModel(
      id: this?.id.orEmpty() ?? 'premium_large_salad',
      selectionType: this?.selectionType.orEmpty() ?? 'premium_large_salad',
      premiumKey: this?.premiumKey.orEmpty() ?? 'premium_large_salad',
      presetKey: this?.presetKey.orEmpty() ?? 'large_salad',
      name: this?.name.orEmpty() ?? Constants.empty,
      extraFeeHalala: this?.extraFeeHalala.orZero() ?? Constants.zero,
      currency: this?.currency.orEmpty() ?? 'SAR',
      preset: (this?.preset).toDomain(),
      ingredients:
          (this?.ingredients?.map((e) => e.toDomain()).toList()) ?? const [],
      groups: (this?.groups?.map((e) => e.toDomain()).toList()) ?? const [],
    );
  }
}

extension BuilderCatalogResponseMapper on BuilderCatalogResponse? {
  BuilderCatalogModel toDomain() {
    final self = this;
    return BuilderCatalogModel(
      categories: (self?.categories?.map((e) => e.toDomain()).toList()) ?? [],
      proteins: (self?.proteins?.map((e) => e.toDomain()).toList()) ?? [],
      premiumProteins:
          (self?.premiumProteins?.map((e) => e.toDomain()).toList()) ?? [],
      carbs: (self?.carbs?.map((e) => e.toDomain()).toList()) ?? [],
      sandwiches: (self?.sandwiches?.map((e) => e.toDomain()).toList()) ?? [],
      rules: (self?.rules).toDomain(),
      premiumLargeSalad: self?.premiumLargeSalad?.toDomain(),
    );
  }
}

extension BuilderCatalogV2ResponseMapper on BuilderCatalogV2Response? {
  BuilderCatalogModel toDomain() {
    final self = this;
    if (self == null) {
      return (null as BuilderCatalogResponse?).toDomain();
    }

    final sections = self.sections ?? const <BuilderCatalogV2SectionResponse>[];
    final standardSection = _sectionBySelectionType(sections, 'standard_meal');
    final premiumSection = _sectionBySelectionType(sections, 'premium_meal');
    final sandwichSection = _sectionBySelectionType(sections, 'sandwich');
    final saladSection = _sectionBySelectionType(
      sections,
      'premium_large_salad',
    );

    final standardProduct = _firstProduct(standardSection);
    final premiumProduct = _firstProduct(premiumSection);
    final standardProteinGroup = _groupByKeys(standardProduct, const {
      'protein',
      'proteins',
    });
    final premiumProteinGroup = _groupByKeys(premiumProduct, const {
      'protein',
      'proteins',
    });
    final carbGroup = _groupByKeys(standardProduct, const {'carb', 'carbs'});

    final proteins = _proteinOptions(
      standardProteinGroup,
      isPremiumFallback: false,
      currency: _fallbackString(self.currency, 'SAR'),
    );
    final premiumProteins = _proteinOptions(
      premiumProteinGroup,
      isPremiumFallback: true,
      currency: _fallbackString(self.currency, 'SAR'),
    );

    return BuilderCatalogModel(
      categories: _proteinCategories(proteins),
      proteins: proteins,
      premiumProteins: premiumProteins,
      carbs: _carbOptions(carbGroup),
      sandwiches: _sandwiches(sandwichSection),
      rules: (self.rules).toDomain(),
      premiumLargeSalad: _premiumLargeSalad(
        saladSection,
        currency: _fallbackString(self.currency, 'SAR'),
      ),
    );
  }
}

extension MealPlannerMenuResponseMapper on MealPlannerMenuResponse? {
  MealPlannerMenuModel toDomain() {
    final self = this;
    final addonItems =
        self?.data?.addons?.items
            ?.map((e) => e.toDomain())
            .where((addon) => addon.isItem && addon.isFlatOnce)
            .toList() ??
        const <AddOnModel>[];
    final addonMap = {for (final addon in addonItems) addon.id: addon};
    final grouped = <String, List<AddOnModel>>{};
    final byCategory =
        self?.data?.addons?.byCategory ?? const <String, dynamic>{};

    for (final entry in byCategory.entries) {
      final resolved = <AddOnModel>[];
      if (entry.value is List) {
        for (final item in entry.value as List<dynamic>) {
          if (item is String && addonMap.containsKey(item)) {
            resolved.add(addonMap[item]!);
          } else if (item is Map<String, dynamic>) {
            final addon = AddOnResponse.fromJson(item).toDomain();
            if (addon.isItem && addon.isFlatOnce) {
              resolved.add(addon);
            }
          }
        }
      }
      grouped[entry.key] = resolved;
    }

    for (final addon in addonItems) {
      final categoryItems = grouped.putIfAbsent(
        addon.category,
        () => <AddOnModel>[],
      );
      if (!categoryItems.any((item) => item.id == addon.id)) {
        categoryItems.add(addon);
      }
    }

    return MealPlannerMenuModel(
      currency: _fallbackString(
        self?.data?.builderCatalogV2?.currency,
        self?.data?.currency.orEmpty() ?? Constants.empty,
      ),
      builderCatalog:
          self?.data?.builderCatalogV2 != null
              ? (self?.data?.builderCatalogV2).toDomain()
              : (self?.data?.builderCatalog).toDomain(),
      addons: addonItems,
      addonsByCategory: grouped,
    );
  }
}

BuilderCatalogV2SectionResponse? _sectionBySelectionType(
  List<BuilderCatalogV2SectionResponse> sections,
  String selectionType,
) {
  for (final section in sections) {
    if (section.selectionType == selectionType ||
        section.key == selectionType) {
      return section;
    }
  }
  return null;
}

BuilderCatalogV2ProductResponse? _firstProduct(
  BuilderCatalogV2SectionResponse? section,
) {
  final products =
      section?.products ?? const <BuilderCatalogV2ProductResponse>[];
  if (products.isEmpty) return null;
  final sorted = List<BuilderCatalogV2ProductResponse>.from(products)
    ..sort((a, b) => (a.sortOrder ?? 0).compareTo(b.sortOrder ?? 0));
  return sorted.first;
}

BuilderCatalogV2OptionGroupResponse? _groupByKeys(
  BuilderCatalogV2ProductResponse? product,
  Set<String> keys,
) {
  for (final group
      in product?.optionGroups ??
          const <BuilderCatalogV2OptionGroupResponse>[]) {
    if (keys.contains(group.key) || keys.contains(group.sourceKey)) {
      return group;
    }
  }
  return null;
}

List<BuilderProteinModel> _proteinOptions(
  BuilderCatalogV2OptionGroupResponse? group, {
  required bool isPremiumFallback,
  required String currency,
}) {
  final options = List<BuilderCatalogV2OptionResponse>.from(
    group?.options ?? const <BuilderCatalogV2OptionResponse>[],
  )..sort((a, b) => (a.sortOrder ?? 0).compareTo(b.sortOrder ?? 0));

  return options.map((option) {
    final familyKey = _firstNotEmpty([
      option.proteinFamilyKey,
      option.displayCategoryKey,
      option.key,
    ]);
    final isPremium = option.isPremium ?? isPremiumFallback;
    final displayCategoryKey = _fallbackString(
      option.displayCategoryKey,
      isPremium ? 'premium' : familyKey,
    );
    return BuilderProteinModel(
      id: option.id.orEmpty(),
      key: _fallbackString(option.key, option.id.orEmpty()),
      displayCategoryId: displayCategoryKey,
      displayCategoryKey: displayCategoryKey,
      name: option.name.orEmpty(),
      description: option.description.orEmpty(),
      proteinFamilyKey: familyKey,
      premiumKey: option.premiumKey.orEmpty(),
      ruleTags: const [],
      isPremium: isPremium,
      premiumCreditCost: Constants.zero,
      extraFeeHalala:
          option.extraFeeHalala ?? option.extraPriceHalala ?? Constants.zero,
      currency: currency,
      sortOrder: option.sortOrder.orZero(),
    );
  }).toList();
}

List<BuilderCategoryModel> _proteinCategories(
  List<BuilderProteinModel> proteins,
) {
  final categoriesByKey = <String, BuilderCategoryModel>{};
  for (final protein in proteins) {
    final key =
        protein.displayCategoryKey.isNotEmpty
            ? protein.displayCategoryKey
            : protein.proteinFamilyKey;
    if (key.isEmpty || categoriesByKey.containsKey(key)) continue;
    categoriesByKey[key] = BuilderCategoryModel(
      id: key,
      key: key,
      dimension: 'protein',
      name:
          protein.displayCategoryKey.isNotEmpty
              ? protein.displayCategoryKey
              : protein.name,
      description: Constants.empty,
      sortOrder: protein.sortOrder,
    );
  }
  final categories =
      categoriesByKey.values.toList()
        ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
  return categories;
}

List<BuilderCarbModel> _carbOptions(
  BuilderCatalogV2OptionGroupResponse? group,
) {
  final options = List<BuilderCatalogV2OptionResponse>.from(
    group?.options ?? const <BuilderCatalogV2OptionResponse>[],
  )..sort((a, b) => (a.sortOrder ?? 0).compareTo(b.sortOrder ?? 0));

  return options.map((option) {
    final key = _fallbackString(option.displayCategoryKey, 'carb');
    return BuilderCarbModel(
      id: option.id.orEmpty(),
      displayCategoryId: key,
      displayCategoryKey: key,
      name: option.name.orEmpty(),
      description: option.description.orEmpty(),
      sortOrder: option.sortOrder.orZero(),
    );
  }).toList();
}

List<BuilderSandwichModel> _sandwiches(
  BuilderCatalogV2SectionResponse? section,
) {
  final products = List<BuilderCatalogV2ProductResponse>.from(
    section?.products ?? const <BuilderCatalogV2ProductResponse>[],
  )..sort((a, b) => (a.sortOrder ?? 0).compareTo(b.sortOrder ?? 0));

  return products.map((product) {
    return BuilderSandwichModel(
      id: product.id.orEmpty(),
      selectionType: section?.selectionType.orEmpty() ?? 'sandwich',
      name: product.name.orEmpty(),
      description: product.description.orEmpty(),
      sortOrder: product.sortOrder.orZero(),
    );
  }).toList();
}

PremiumLargeSaladModel? _premiumLargeSalad(
  BuilderCatalogV2SectionResponse? section, {
  required String currency,
}) {
  final product = _firstProduct(section);
  if (product == null) return null;

  final groups = List<BuilderCatalogV2OptionGroupResponse>.from(
    product.optionGroups ?? const <BuilderCatalogV2OptionGroupResponse>[],
  )..sort((a, b) => (a.sortOrder ?? 0).compareTo(b.sortOrder ?? 0));

  final groupRules =
      groups.map((group) {
        return PremiumLargeSaladGroupRuleModel(
          key: group.key.orEmpty(),
          minSelect: group.minSelections.orZero(),
          maxSelect: group.maxSelections.orZero(),
        );
      }).toList();

  final ingredients = <PremiumLargeSaladIngredientModel>[];
  for (final group in groups) {
    for (final option
        in group.options ?? const <BuilderCatalogV2OptionResponse>[]) {
      ingredients.add(
        PremiumLargeSaladIngredientModel(
          id: option.id.orEmpty(),
          groupKey: group.key.orEmpty(),
          name: option.name.orEmpty(),
          calories: Constants.zero,
        ),
      );
    }
  }

  return PremiumLargeSaladModel(
    id: _fallbackString(product.id, 'premium_large_salad'),
    selectionType: section?.selectionType.orEmpty() ?? 'premium_large_salad',
    premiumKey: _fallbackString(product.key, 'premium_large_salad'),
    presetKey: _fallbackString(product.key, 'premium_large_salad'),
    name: product.name.orEmpty(),
    extraFeeHalala: product.priceHalala.orZero(),
    currency: _fallbackString(product.currency, currency),
    preset: PremiumLargeSaladPresetModel(
      key: _fallbackString(product.key, 'premium_large_salad'),
      name: product.name.orEmpty(),
      selectionType: section?.selectionType.orEmpty() ?? 'premium_large_salad',
      fixedPriceHalala: product.priceHalala.orZero(),
      currency: _fallbackString(product.currency, currency),
      groups: groupRules,
    ),
    ingredients: ingredients,
    groups: groupRules,
  );
}

String _fallbackString(String? value, String fallback) {
  final resolved = value.orEmpty();
  return resolved.isEmpty ? fallback : resolved;
}

String _firstNotEmpty(List<String?> values) {
  for (final value in values) {
    final resolved = value.orEmpty();
    if (resolved.isNotEmpty) return resolved;
  }
  return Constants.empty;
}
