import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/order_menu_response.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';

const _categoryCardVariants = {
  'meal_builder',
  'light_collection',
  'sandwich_collection',
  'addon_collection',
};

extension OrderMenuResponseMapper on OrderMenuResponse? {
  OrderMenuModel toDomain() {
    return OrderMenuModel(
      source: this?.data?.source ?? Constants.empty,
      fulfillmentMethod: this?.data?.fulfillmentMethod ?? Constants.empty,
      currency: this?.data?.currency ?? Constants.empty,
      vatIncluded: this?.data?.vatIncluded ?? true,
      vatPercentage: this?.data?.vatPercentage ?? Constants.zero,
      itemTypes: this?.data?.itemTypes ?? const [],
      restaurantHours: this?.data?.restaurantHours ?? const {},
      categories:
          this?.data?.categories?.map((e) => e.toDomain()).toList() ?? const [],
      standardMeals: this?.data?.standardMeals.toDomain(),
      sandwiches:
          this?.data?.sandwiches?.map((e) => e.toDomain()).toList() ?? const [],
      salad: this?.data?.salad.toDomain(),
      addons: this?.data?.addons.toDomain(),
    );
  }
}

// ─── Dynamic Catalog Mappers ───

extension OrderMenuCategoryResponseMapper on OrderMenuCategoryResponse? {
  OrderMenuCategoryModel toDomain() {
    return OrderMenuCategoryModel(
      id: this?.id ?? Constants.empty,
      key: this?.key ?? Constants.empty,
      name: this?.name ?? Constants.empty,
      nameI18n: (this?.nameI18n ?? const <String, dynamic>{}).map(
        (key, value) => MapEntry(key, value?.toString() ?? ''),
      ),
      description: this?.description,
      imageUrl: this?.imageUrl,
      cardVariant: _allowedValue(
        this?.ui?.cardVariant,
        _categoryCardVariants,
        'addon_collection',
      ),
      sortOrder: this?.sortOrder ?? Constants.zero,
      products: this?.products?.map((e) => e.toDomain()).toList() ?? const [],
    );
  }
}

extension OrderMenuProductResponseMapper on OrderMenuProductResponse? {
  OrderMenuProductModel toDomain() {
    return OrderMenuProductModel(
      id: this?.id ?? Constants.empty,
      key: this?.key ?? Constants.empty,
      categoryId: this?.categoryId ?? Constants.empty,
      name: this?.name ?? Constants.empty,
      nameI18n: (this?.nameI18n ?? const <String, dynamic>{}).map(
        (key, value) => MapEntry(key, value?.toString() ?? ''),
      ),
      description: this?.description,
      descriptionI18n: (this?.descriptionI18n ?? const <String, dynamic>{}).map(
        (key, value) => MapEntry(key, value?.toString() ?? ''),
      ),
      imageUrl: this?.imageUrl,
      itemType: this?.itemType ?? Constants.empty,
      pricingModel: this?.pricingModel ?? 'fixed',
      priceHalala: this?.priceHalala ?? Constants.zero,
      calories: this?.calories,
      baseUnitGrams: this?.baseUnitGrams ?? Constants.zero,
      defaultWeightGrams: this?.defaultWeightGrams ?? Constants.zero,
      minWeightGrams: this?.minWeightGrams ?? Constants.zero,
      maxWeightGrams: this?.maxWeightGrams ?? Constants.zero,
      weightStepGrams: this?.weightStepGrams ?? Constants.zero,
      weightStepPriceHalala:
          this?.weightStepPriceHalala ??
          this?.weightPricing?.stepPriceHalala ??
          Constants.zero,
      weightPricing: this?.weightPricing.toDomain(),
      sortOrder: this?.sortOrder ?? Constants.zero,
      requiresBuilder: this?.requiresBuilder,
      canAddDirectly: this?.canAddDirectly,
      cardSize: _parseProductCardSize(
        this?.ui?.cardSize ?? this?.ui?.cardVariant,
      ),
      badge: this?.ui?.badge ?? Constants.empty,
      ctaLabel: this?.ui?.ctaLabel ?? Constants.empty,
      imageRatio: _parseImageRatio(this?.ui?.imageRatio),
      optionSections:
          this?.optionSections?.map((e) => e.toDomain()).toList() ?? const [],
      optionGroups:
          this?.optionGroups?.map((e) => e.toDomain()).toList() ?? const [],
    );
  }
}

extension OrderMenuWeightPricingResponseMapper
    on OrderMenuWeightPricingResponse? {
  OrderMenuWeightPricingModel? toDomain() {
    if (this == null) {
      return null;
    }

    return OrderMenuWeightPricingModel(
      contractVersion: this?.contractVersion ?? Constants.empty,
      strategy: this?.strategy ?? Constants.empty,
      requiresWeightSelection: this?.requiresWeightSelection,
      basePriceHalala: this?.basePriceHalala ?? Constants.zero,
      baseWeightGrams: this?.baseWeightGrams ?? Constants.zero,
      defaultWeightGrams: this?.defaultWeightGrams ?? Constants.zero,
      minWeightGrams: this?.minWeightGrams ?? Constants.zero,
      maxWeightGrams: this?.maxWeightGrams ?? Constants.zero,
      stepGrams: this?.stepGrams ?? Constants.zero,
      stepPriceHalala: this?.stepPriceHalala ?? Constants.zero,
      choices:
          this?.choices
              ?.map((choice) => choice.toDomain())
              .where(
                (choice) =>
                    choice.weightGrams > Constants.zero &&
                    choice.priceHalala >= Constants.zero,
              )
              .toList() ??
          const [],
    );
  }
}

extension OrderMenuWeightPricingChoiceResponseMapper
    on OrderMenuWeightPricingChoiceResponse? {
  OrderMenuWeightPricingChoiceModel toDomain() {
    return OrderMenuWeightPricingChoiceModel(
      weightGrams: this?.weightGrams ?? Constants.zero,
      priceHalala: this?.priceHalala ?? Constants.zero,
    );
  }
}

extension OrderMenuOptionGroupResponseMapper on OrderMenuOptionGroupResponse? {
  OrderMenuOptionGroupModel toDomain() {
    return OrderMenuOptionGroupModel(
      id: this?.id ?? Constants.empty,
      groupId: this?.groupId ?? Constants.empty,
      key: this?.key ?? Constants.empty,
      name: this?.name ?? Constants.empty,
      nameI18n: (this?.nameI18n ?? const <String, dynamic>{}).map(
        (key, value) => MapEntry(key, value?.toString() ?? ''),
      ),
      minSelections: this?.minSelections ?? Constants.zero,
      maxSelections: this?.maxSelections,
      isRequired: this?.isRequired ?? false,
      displayStyle: this?.ui?.displayStyle ?? 'chips',
      sourceKey: this?.sourceKey ?? Constants.empty,
      rules: this?.rules ?? const {},
      optionSections:
          this?.optionSections?.map((e) => e.toDomain()).toList() ?? const [],
      sortOrder: this?.sortOrder ?? Constants.zero,
      options: this?.options?.map((e) => e.toDomain()).toList() ?? const [],
    );
  }
}

extension OrderMenuOptionSectionResponseMapper
    on OrderMenuOptionSectionResponse? {
  OrderMenuOptionSectionModel toDomain() {
    return OrderMenuOptionSectionModel(
      key: this?.key ?? Constants.empty,
      name: this?.name ?? Constants.empty,
      proteinFamilyKey: this?.proteinFamilyKey ?? Constants.empty,
      optionIds: this?.optionIds ?? const [],
      sortOrder: this?.sortOrder ?? Constants.zero,
    );
  }
}

extension OrderMenuOptionResponseMapper on OrderMenuOptionResponse? {
  OrderMenuOptionModel toDomain() {
    return OrderMenuOptionModel(
      id: this?.id ?? Constants.empty,
      optionId: this?.optionId ?? Constants.empty,
      groupId: this?.groupId ?? Constants.empty,
      key: this?.key ?? Constants.empty,
      name: this?.name ?? Constants.empty,
      nameI18n: (this?.nameI18n ?? const <String, dynamic>{}).map(
        (key, value) => MapEntry(key, value?.toString() ?? ''),
      ),
      description: this?.description,
      descriptionI18n: (this?.descriptionI18n ?? const <String, dynamic>{}).map(
        (key, value) => MapEntry(key, value?.toString() ?? ''),
      ),
      extraPriceHalala: this?.extraPriceHalala ?? Constants.zero,
      extraFeeHalala: this?.extraFeeHalala ?? Constants.zero,
      displayCategoryKey: this?.displayCategoryKey ?? Constants.empty,
      proteinFamilyKey: this?.proteinFamilyKey ?? Constants.empty,
      proteinFamilyNameI18n: (this?.proteinFamilyNameI18n ??
              const <String, dynamic>{})
          .map((key, value) => MapEntry(key, value?.toString() ?? '')),
      premiumKey: this?.premiumKey ?? Constants.empty,
      selectionType: this?.selectionType ?? Constants.empty,
      isPremium: this?.isPremium ?? false,
      calories: this?.calories,
      extraWeightUnitGrams: this?.extraWeightUnitGrams ?? Constants.zero,
      extraWeightPriceHalala: this?.extraWeightPriceHalala ?? Constants.zero,
      sortOrder: this?.sortOrder ?? Constants.zero,
      imageUrl: this?.imageUrl ?? Constants.empty,
      ui: this?.ui == null ? const {} : this?.ui!.toJson() ?? const {},
    );
  }
}

String _allowedValue(String? value, Set<String> allowed, String fallback) {
  if (value == null || !allowed.contains(value)) {
    return fallback;
  }
  return value;
}

ProductCardSize _parseProductCardSize(String? value) {
  switch (value?.trim().toLowerCase()) {
    case 'large':
    case 'big':
      return ProductCardSize.large;
    case 'small':
      return ProductCardSize.small;
    case 'medium':
    case null:
    default:
      return ProductCardSize.medium;
  }
}

double? _parseImageRatio(String? value) {
  final resolved = value?.trim();
  if (resolved == null || resolved.isEmpty) {
    return null;
  }

  final parts = resolved.split('/');
  if (parts.length == 2) {
    final width = double.tryParse(parts.first);
    final height = double.tryParse(parts.last);
    if (width != null && height != null && width > 0 && height > 0) {
      return width / height;
    }
  }

  final colonParts = resolved.split(':');
  if (colonParts.length == 2) {
    final width = double.tryParse(colonParts.first);
    final height = double.tryParse(colonParts.last);
    if (width != null && height != null && width > 0 && height > 0) {
      return width / height;
    }
  }

  return double.tryParse(resolved);
}

// ─── Legacy Fallback Mappers ───

extension OrderMenuStandardMealsDataResponseMapper
    on OrderMenuStandardMealsDataResponse? {
  OrderMenuStandardMealsModel? toDomain() {
    if (this == null) return null;
    return OrderMenuStandardMealsModel(
      proteins: this?.proteins?.map((e) => e.toDomain()).toList() ?? const [],
      carbs: this?.carbs?.map((e) => e.toDomain()).toList() ?? const [],
    );
  }
}

extension OrderMenuProteinResponseMapper on OrderMenuProteinResponse? {
  OrderMenuProteinModel toDomain() {
    return OrderMenuProteinModel(
      id: this?.id ?? Constants.empty,
      name: this?.name ?? Constants.empty,
    );
  }
}

extension OrderMenuCarbResponseMapper on OrderMenuCarbResponse? {
  OrderMenuCarbModel toDomain() {
    return OrderMenuCarbModel(
      id: this?.id ?? Constants.empty,
      name: this?.name ?? Constants.empty,
      defaultGrams: this?.defaultGrams ?? Constants.zero,
    );
  }
}

extension OrderMenuSandwichResponseMapper on OrderMenuSandwichResponse? {
  OrderMenuSandwichModel toDomain() {
    return OrderMenuSandwichModel(
      id: this?.id ?? Constants.empty,
      name: this?.name ?? Constants.empty,
      description: this?.description ?? Constants.empty,
      imageUrl: this?.imageUrl ?? Constants.empty,
      priceHalala: this?.priceHalala ?? Constants.zero,
      availableAddons:
          this?.availableAddons?.map((e) => e.toDomain()).toList() ?? const [],
    );
  }
}

extension OrderMenuSaladResponseMapper on OrderMenuSaladResponse? {
  OrderMenuSaladModel? toDomain() {
    if (this == null) return null;
    return OrderMenuSaladModel(
      ingredients:
          this?.ingredients?.map((e) => e.toDomain()).toList() ?? const [],
      rules: this?.rules ?? const {},
    );
  }
}

extension OrderMenuIngredientResponseMapper on OrderMenuIngredientResponse? {
  OrderMenuIngredientModel toDomain() {
    return OrderMenuIngredientModel(
      id: this?.id ?? Constants.empty,
      name: this?.name ?? Constants.empty,
      priceHalala: this?.priceHalala ?? Constants.zero,
    );
  }
}

extension OrderMenuAddonsResponseMapper on OrderMenuAddonsResponse? {
  OrderMenuAddonsModel? toDomain() {
    if (this == null) return null;
    return OrderMenuAddonsModel(
      items: this?.items?.map((e) => e.toDomain()).toList() ?? const [],
      byCategory: this?.byCategory ?? const {},
    );
  }
}

extension OrderMenuAddonItemResponseMapper on OrderMenuAddonItemResponse? {
  OrderMenuAddonItemModel toDomain() {
    return OrderMenuAddonItemModel(
      id: this?.id ?? Constants.empty,
      name: this?.name ?? Constants.empty,
      description: this?.description ?? Constants.empty,
      imageUrl: this?.imageUrl ?? Constants.empty,
      priceHalala: this?.priceHalala ?? Constants.zero,
      category: this?.category ?? Constants.empty,
    );
  }
}
