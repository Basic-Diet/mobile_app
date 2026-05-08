import 'package:json_annotation/json_annotation.dart';

part 'order_menu_response.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderMenuResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final OrderMenuDataResponse? data;

  OrderMenuResponse({this.status, this.message, this.data});

  factory OrderMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuDataResponse {
  @JsonKey(name: 'source')
  final String? source;

  @JsonKey(name: 'fulfillmentMethod')
  final String? fulfillmentMethod;

  @JsonKey(name: 'currency')
  final String? currency;

  @JsonKey(name: 'vatIncluded')
  final bool? vatIncluded;

  @JsonKey(name: 'vatPercentage')
  final int? vatPercentage;

  @JsonKey(name: 'itemTypes')
  final List<String>? itemTypes;

  // Dynamic catalog
  @JsonKey(name: 'categories')
  final List<OrderMenuCategoryResponse>? categories;

  // Legacy fallback
  @JsonKey(name: 'standardMeals')
  final OrderMenuStandardMealsDataResponse? standardMeals;

  @JsonKey(name: 'sandwiches')
  final List<OrderMenuSandwichResponse>? sandwiches;

  @JsonKey(name: 'salad')
  final OrderMenuSaladResponse? salad;

  @JsonKey(name: 'addons')
  final OrderMenuAddonsResponse? addons;

  @JsonKey(name: 'restaurantHours')
  final Map<String, dynamic>? restaurantHours;

  OrderMenuDataResponse({
    this.source,
    this.fulfillmentMethod,
    this.currency,
    this.vatIncluded,
    this.vatPercentage,
    this.itemTypes,
    this.categories,
    this.standardMeals,
    this.sandwiches,
    this.salad,
    this.addons,
    this.restaurantHours,
  });

  factory OrderMenuDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuDataResponseToJson(this);
}

// ─── Dynamic Catalog ───

@JsonSerializable(explicitToJson: true)
class OrderMenuCategoryResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'nameI18n')
  final Map<String, dynamic>? nameI18n;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @JsonKey(name: 'sortOrder')
  final int? sortOrder;

  @JsonKey(name: 'products')
  final List<OrderMenuProductResponse>? products;

  OrderMenuCategoryResponse({
    this.id,
    this.key,
    this.name,
    this.nameI18n,
    this.description,
    this.imageUrl,
    this.sortOrder,
    this.products,
  });

  factory OrderMenuCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuCategoryResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuProductResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'categoryId')
  final String? categoryId;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'nameI18n')
  final Map<String, dynamic>? nameI18n;

  @JsonKey(name: 'itemType')
  final String? itemType;

  @JsonKey(name: 'pricingModel')
  final String? pricingModel;

  @JsonKey(name: 'priceHalala')
  final int? priceHalala;

  @JsonKey(name: 'baseUnitGrams')
  final int? baseUnitGrams;

  @JsonKey(name: 'defaultWeightGrams')
  final int? defaultWeightGrams;

  @JsonKey(name: 'minWeightGrams')
  final int? minWeightGrams;

  @JsonKey(name: 'maxWeightGrams')
  final int? maxWeightGrams;

  @JsonKey(name: 'weightStepGrams')
  final int? weightStepGrams;

  @JsonKey(name: 'sortOrder')
  final int? sortOrder;

  @JsonKey(name: 'requiresBuilder')
  final bool? requiresBuilder;

  @JsonKey(name: 'canAddDirectly')
  final bool? canAddDirectly;

  @JsonKey(name: 'optionGroups')
  final List<OrderMenuOptionGroupResponse>? optionGroups;

  OrderMenuProductResponse({
    this.id,
    this.key,
    this.categoryId,
    this.name,
    this.nameI18n,
    this.itemType,
    this.pricingModel,
    this.priceHalala,
    this.baseUnitGrams,
    this.defaultWeightGrams,
    this.minWeightGrams,
    this.maxWeightGrams,
    this.weightStepGrams,
    this.sortOrder,
    this.requiresBuilder,
    this.canAddDirectly,
    this.optionGroups,
  });

  factory OrderMenuProductResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuProductResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuOptionGroupResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'groupId')
  final String? groupId;

  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'nameI18n')
  final Map<String, dynamic>? nameI18n;

  @JsonKey(name: 'minSelections')
  final int? minSelections;

  @JsonKey(name: 'maxSelections')
  final int? maxSelections;

  @JsonKey(name: 'isRequired')
  final bool? isRequired;

  @JsonKey(name: 'sortOrder')
  final int? sortOrder;

  @JsonKey(name: 'options')
  final List<OrderMenuOptionResponse>? options;

  OrderMenuOptionGroupResponse({
    this.id,
    this.groupId,
    this.key,
    this.name,
    this.nameI18n,
    this.minSelections,
    this.maxSelections,
    this.isRequired,
    this.sortOrder,
    this.options,
  });

  factory OrderMenuOptionGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuOptionGroupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuOptionGroupResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuOptionResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'optionId')
  final String? optionId;

  @JsonKey(name: 'groupId')
  final String? groupId;

  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'nameI18n')
  final Map<String, dynamic>? nameI18n;

  @JsonKey(name: 'extraPriceHalala')
  final int? extraPriceHalala;

  @JsonKey(name: 'extraWeightUnitGrams')
  final int? extraWeightUnitGrams;

  @JsonKey(name: 'extraWeightPriceHalala')
  final int? extraWeightPriceHalala;

  @JsonKey(name: 'sortOrder')
  final int? sortOrder;

  OrderMenuOptionResponse({
    this.id,
    this.optionId,
    this.groupId,
    this.key,
    this.name,
    this.nameI18n,
    this.extraPriceHalala,
    this.extraWeightUnitGrams,
    this.extraWeightPriceHalala,
    this.sortOrder,
  });

  factory OrderMenuOptionResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuOptionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuOptionResponseToJson(this);
}

// ─── Legacy Fallback ───

@JsonSerializable(explicitToJson: true)
class OrderMenuStandardMealsDataResponse {
  @JsonKey(name: 'proteins')
  final List<OrderMenuProteinResponse>? proteins;

  @JsonKey(name: 'carbs')
  final List<OrderMenuCarbResponse>? carbs;

  OrderMenuStandardMealsDataResponse({this.proteins, this.carbs});

  factory OrderMenuStandardMealsDataResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$OrderMenuStandardMealsDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OrderMenuStandardMealsDataResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuProteinResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  OrderMenuProteinResponse({this.id, this.name});

  factory OrderMenuProteinResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuProteinResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuProteinResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuCarbResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'defaultGrams')
  final int? defaultGrams;

  OrderMenuCarbResponse({this.id, this.name, this.defaultGrams});

  factory OrderMenuCarbResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuCarbResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuCarbResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuSandwichResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @JsonKey(name: 'priceHalala')
  final int? priceHalala;

  @JsonKey(name: 'availableAddons')
  final List<OrderMenuAddonItemResponse>? availableAddons;

  OrderMenuSandwichResponse({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.priceHalala,
    this.availableAddons,
  });

  factory OrderMenuSandwichResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuSandwichResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuSandwichResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuSaladResponse {
  @JsonKey(name: 'ingredients')
  final List<OrderMenuIngredientResponse>? ingredients;

  @JsonKey(name: 'rules')
  final Map<String, dynamic>? rules;

  OrderMenuSaladResponse({this.ingredients, this.rules});

  factory OrderMenuSaladResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuSaladResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuSaladResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuIngredientResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'priceHalala')
  final int? priceHalala;

  OrderMenuIngredientResponse({this.id, this.name, this.priceHalala});

  factory OrderMenuIngredientResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuIngredientResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuIngredientResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuAddonsResponse {
  @JsonKey(name: 'items')
  final List<OrderMenuAddonItemResponse>? items;

  @JsonKey(name: 'byCategory')
  final Map<String, dynamic>? byCategory;

  OrderMenuAddonsResponse({this.items, this.byCategory});

  factory OrderMenuAddonsResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuAddonsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuAddonsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuAddonItemResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @JsonKey(name: 'priceHalala')
  final int? priceHalala;

  @JsonKey(name: 'category')
  final String? category;

  OrderMenuAddonItemResponse({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.priceHalala,
    this.category,
  });

  factory OrderMenuAddonItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuAddonItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuAddonItemResponseToJson(this);
}
