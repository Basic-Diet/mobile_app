import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/order_menu_response.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';

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
      description: this?.description,
      imageUrl: this?.imageUrl,
      sortOrder: this?.sortOrder ?? Constants.zero,
      products:
          this?.products?.map((e) => e.toDomain()).toList() ?? const [],
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
      itemType: this?.itemType ?? Constants.empty,
      pricingModel: this?.pricingModel ?? 'fixed',
      priceHalala: this?.priceHalala ?? Constants.zero,
      baseUnitGrams: this?.baseUnitGrams ?? Constants.zero,
      defaultWeightGrams: this?.defaultWeightGrams ?? Constants.zero,
      minWeightGrams: this?.minWeightGrams ?? Constants.zero,
      maxWeightGrams: this?.maxWeightGrams ?? Constants.zero,
      weightStepGrams: this?.weightStepGrams ?? Constants.zero,
      sortOrder: this?.sortOrder ?? Constants.zero,
      optionGroups:
          this?.optionGroups?.map((e) => e.toDomain()).toList() ?? const [],
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
      minSelections: this?.minSelections ?? Constants.zero,
      maxSelections: this?.maxSelections ?? 1,
      isRequired: this?.isRequired ?? false,
      sortOrder: this?.sortOrder ?? Constants.zero,
      options:
          this?.options?.map((e) => e.toDomain()).toList() ?? const [],
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
      extraPriceHalala: this?.extraPriceHalala ?? Constants.zero,
      extraWeightUnitGrams: this?.extraWeightUnitGrams ?? Constants.zero,
      extraWeightPriceHalala: this?.extraWeightPriceHalala ?? Constants.zero,
      sortOrder: this?.sortOrder ?? Constants.zero,
    );
  }
}

// ─── Legacy Fallback Mappers ───

extension OrderMenuStandardMealsDataResponseMapper
    on OrderMenuStandardMealsDataResponse? {
  OrderMenuStandardMealsModel? toDomain() {
    if (this == null) return null;
    return OrderMenuStandardMealsModel(
      proteins:
          this?.proteins?.map((e) => e.toDomain()).toList() ?? const [],
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
          this?.availableAddons?.map((e) => e.toDomain()).toList() ??
          const [],
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
