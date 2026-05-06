import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/order_menu_response.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';

extension OrderMenuResponseMapper on OrderMenuResponse? {
  OrderMenuModel toDomain() {
    return OrderMenuModel(
      currency: this?.data?.currency ?? Constants.empty,
      itemTypes: this?.data?.itemTypes ?? const [],
      standardMeals: this?.data?.standardMeals.toDomain(),
      sandwiches:
          this?.data?.sandwiches?.map((e) => e.toDomain()).toList() ?? const [],
      salad: this?.data?.salad.toDomain(),
      addons: this?.data?.addons.toDomain(),
      restaurantHours: this?.data?.restaurantHours ?? const {},
    );
  }
}

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
