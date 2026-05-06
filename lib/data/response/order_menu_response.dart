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
  @JsonKey(name: 'currency')
  final String? currency;

  @JsonKey(name: 'itemTypes')
  final List<String>? itemTypes;

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
    this.currency,
    this.itemTypes,
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

@JsonSerializable(explicitToJson: true)
class OrderMenuStandardMealsDataResponse {
  @JsonKey(name: 'proteins')
  final List<OrderMenuProteinResponse>? proteins;

  @JsonKey(name: 'carbs')
  final List<OrderMenuCarbResponse>? carbs;

  OrderMenuStandardMealsDataResponse({
    this.proteins,
    this.carbs,
  });

  factory OrderMenuStandardMealsDataResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OrderMenuStandardMealsDataResponseFromJson(json);

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
