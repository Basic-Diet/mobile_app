// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_menu_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderMenuResponse _$OrderMenuResponseFromJson(Map<String, dynamic> json) =>
    OrderMenuResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data:
          json['data'] == null
              ? null
              : OrderMenuDataResponse.fromJson(
                json['data'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$OrderMenuResponseToJson(OrderMenuResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

OrderMenuDataResponse _$OrderMenuDataResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuDataResponse(
  currency: json['currency'] as String?,
  itemTypes:
      (json['itemTypes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  standardMeals:
      json['standardMeals'] == null
          ? null
          : OrderMenuStandardMealsDataResponse.fromJson(
            json['standardMeals'] as Map<String, dynamic>,
          ),
  sandwiches:
      (json['sandwiches'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderMenuSandwichResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  salad:
      json['salad'] == null
          ? null
          : OrderMenuSaladResponse.fromJson(
            json['salad'] as Map<String, dynamic>,
          ),
  addons:
      json['addons'] == null
          ? null
          : OrderMenuAddonsResponse.fromJson(
            json['addons'] as Map<String, dynamic>,
          ),
  restaurantHours: json['restaurantHours'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$OrderMenuDataResponseToJson(
  OrderMenuDataResponse instance,
) => <String, dynamic>{
  'currency': instance.currency,
  'itemTypes': instance.itemTypes,
  'standardMeals': instance.standardMeals?.toJson(),
  'sandwiches': instance.sandwiches?.map((e) => e.toJson()).toList(),
  'salad': instance.salad?.toJson(),
  'addons': instance.addons?.toJson(),
  'restaurantHours': instance.restaurantHours,
};

OrderMenuStandardMealsDataResponse _$OrderMenuStandardMealsDataResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuStandardMealsDataResponse(
  proteins:
      (json['proteins'] as List<dynamic>?)
          ?.map(
            (e) => OrderMenuProteinResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  carbs:
      (json['carbs'] as List<dynamic>?)
          ?.map(
            (e) => OrderMenuCarbResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$OrderMenuStandardMealsDataResponseToJson(
  OrderMenuStandardMealsDataResponse instance,
) => <String, dynamic>{
  'proteins': instance.proteins?.map((e) => e.toJson()).toList(),
  'carbs': instance.carbs?.map((e) => e.toJson()).toList(),
};

OrderMenuProteinResponse _$OrderMenuProteinResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuProteinResponse(
  id: json['id'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$OrderMenuProteinResponseToJson(
  OrderMenuProteinResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

OrderMenuCarbResponse _$OrderMenuCarbResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuCarbResponse(
  id: json['id'] as String?,
  name: json['name'] as String?,
  defaultGrams: (json['defaultGrams'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderMenuCarbResponseToJson(
  OrderMenuCarbResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'defaultGrams': instance.defaultGrams,
};

OrderMenuSandwichResponse _$OrderMenuSandwichResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuSandwichResponse(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  imageUrl: json['imageUrl'] as String?,
  priceHalala: (json['priceHalala'] as num?)?.toInt(),
  availableAddons:
      (json['availableAddons'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderMenuAddonItemResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$OrderMenuSandwichResponseToJson(
  OrderMenuSandwichResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'imageUrl': instance.imageUrl,
  'priceHalala': instance.priceHalala,
  'availableAddons': instance.availableAddons?.map((e) => e.toJson()).toList(),
};

OrderMenuSaladResponse _$OrderMenuSaladResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuSaladResponse(
  ingredients:
      (json['ingredients'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderMenuIngredientResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  rules: json['rules'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$OrderMenuSaladResponseToJson(
  OrderMenuSaladResponse instance,
) => <String, dynamic>{
  'ingredients': instance.ingredients?.map((e) => e.toJson()).toList(),
  'rules': instance.rules,
};

OrderMenuIngredientResponse _$OrderMenuIngredientResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuIngredientResponse(
  id: json['id'] as String?,
  name: json['name'] as String?,
  priceHalala: (json['priceHalala'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderMenuIngredientResponseToJson(
  OrderMenuIngredientResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'priceHalala': instance.priceHalala,
};

OrderMenuAddonsResponse _$OrderMenuAddonsResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuAddonsResponse(
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderMenuAddonItemResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  byCategory: json['byCategory'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$OrderMenuAddonsResponseToJson(
  OrderMenuAddonsResponse instance,
) => <String, dynamic>{
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'byCategory': instance.byCategory,
};

OrderMenuAddonItemResponse _$OrderMenuAddonItemResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuAddonItemResponse(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  imageUrl: json['imageUrl'] as String?,
  priceHalala: (json['priceHalala'] as num?)?.toInt(),
  category: json['category'] as String?,
);

Map<String, dynamic> _$OrderMenuAddonItemResponseToJson(
  OrderMenuAddonItemResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'imageUrl': instance.imageUrl,
  'priceHalala': instance.priceHalala,
  'category': instance.category,
};
