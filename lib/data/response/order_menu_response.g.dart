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
  source: json['source'] as String?,
  fulfillmentMethod: json['fulfillmentMethod'] as String?,
  currency: json['currency'] as String?,
  vatIncluded: json['vatIncluded'] as bool?,
  vatPercentage: (json['vatPercentage'] as num?)?.toInt(),
  itemTypes:
      (json['itemTypes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderMenuCategoryResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
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
  'source': instance.source,
  'fulfillmentMethod': instance.fulfillmentMethod,
  'currency': instance.currency,
  'vatIncluded': instance.vatIncluded,
  'vatPercentage': instance.vatPercentage,
  'itemTypes': instance.itemTypes,
  'categories': instance.categories?.map((e) => e.toJson()).toList(),
  'standardMeals': instance.standardMeals?.toJson(),
  'sandwiches': instance.sandwiches?.map((e) => e.toJson()).toList(),
  'salad': instance.salad?.toJson(),
  'addons': instance.addons?.toJson(),
  'restaurantHours': instance.restaurantHours,
};

OrderMenuCategoryResponse _$OrderMenuCategoryResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuCategoryResponse(
  id: json['id'] as String?,
  key: json['key'] as String?,
  name: json['name'] as String?,
  nameI18n: json['nameI18n'] as Map<String, dynamic>?,
  description: json['description'] as String?,
  imageUrl: json['imageUrl'] as String?,
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  products:
      (json['products'] as List<dynamic>?)
          ?.map(
            (e) => OrderMenuProductResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$OrderMenuCategoryResponseToJson(
  OrderMenuCategoryResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'key': instance.key,
  'name': instance.name,
  'nameI18n': instance.nameI18n,
  'description': instance.description,
  'imageUrl': instance.imageUrl,
  'sortOrder': instance.sortOrder,
  'products': instance.products?.map((e) => e.toJson()).toList(),
};

OrderMenuProductResponse _$OrderMenuProductResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuProductResponse(
  id: json['id'] as String?,
  key: json['key'] as String?,
  categoryId: json['categoryId'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  nameI18n: json['nameI18n'] as Map<String, dynamic>?,
  itemType: json['itemType'] as String?,
  pricingModel: json['pricingModel'] as String?,
  priceHalala: (json['priceHalala'] as num?)?.toInt(),
  baseUnitGrams: (json['baseUnitGrams'] as num?)?.toInt(),
  defaultWeightGrams: (json['defaultWeightGrams'] as num?)?.toInt(),
  minWeightGrams: (json['minWeightGrams'] as num?)?.toInt(),
  maxWeightGrams: (json['maxWeightGrams'] as num?)?.toInt(),
  weightStepGrams: (json['weightStepGrams'] as num?)?.toInt(),
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  requiresBuilder: json['requiresBuilder'] as bool?,
  canAddDirectly: json['canAddDirectly'] as bool?,
  optionGroups:
      (json['optionGroups'] as List<dynamic>?)
          ?.map(
            (e) => OrderMenuOptionGroupResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$OrderMenuProductResponseToJson(
  OrderMenuProductResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'key': instance.key,
  'categoryId': instance.categoryId,
  'name': instance.name,
  'description': instance.description,
  'nameI18n': instance.nameI18n,
  'itemType': instance.itemType,
  'pricingModel': instance.pricingModel,
  'priceHalala': instance.priceHalala,
  'baseUnitGrams': instance.baseUnitGrams,
  'defaultWeightGrams': instance.defaultWeightGrams,
  'minWeightGrams': instance.minWeightGrams,
  'maxWeightGrams': instance.maxWeightGrams,
  'weightStepGrams': instance.weightStepGrams,
  'sortOrder': instance.sortOrder,
  'requiresBuilder': instance.requiresBuilder,
  'canAddDirectly': instance.canAddDirectly,
  'optionGroups': instance.optionGroups?.map((e) => e.toJson()).toList(),
};

OrderMenuOptionGroupResponse _$OrderMenuOptionGroupResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuOptionGroupResponse(
  id: json['id'] as String?,
  groupId: json['groupId'] as String?,
  key: json['key'] as String?,
  name: json['name'] as String?,
  nameI18n: json['nameI18n'] as Map<String, dynamic>?,
  minSelections: (json['minSelections'] as num?)?.toInt(),
  maxSelections: (json['maxSelections'] as num?)?.toInt(),
  isRequired: json['isRequired'] as bool?,
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  options:
      (json['options'] as List<dynamic>?)
          ?.map(
            (e) => OrderMenuOptionResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$OrderMenuOptionGroupResponseToJson(
  OrderMenuOptionGroupResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'groupId': instance.groupId,
  'key': instance.key,
  'name': instance.name,
  'nameI18n': instance.nameI18n,
  'minSelections': instance.minSelections,
  'maxSelections': instance.maxSelections,
  'isRequired': instance.isRequired,
  'sortOrder': instance.sortOrder,
  'options': instance.options?.map((e) => e.toJson()).toList(),
};

OrderMenuOptionResponse _$OrderMenuOptionResponseFromJson(
  Map<String, dynamic> json,
) => OrderMenuOptionResponse(
  id: json['id'] as String?,
  optionId: json['optionId'] as String?,
  groupId: json['groupId'] as String?,
  key: json['key'] as String?,
  name: json['name'] as String?,
  nameI18n: json['nameI18n'] as Map<String, dynamic>?,
  extraPriceHalala: (json['extraPriceHalala'] as num?)?.toInt(),
  extraWeightUnitGrams: (json['extraWeightUnitGrams'] as num?)?.toInt(),
  extraWeightPriceHalala: (json['extraWeightPriceHalala'] as num?)?.toInt(),
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderMenuOptionResponseToJson(
  OrderMenuOptionResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'optionId': instance.optionId,
  'groupId': instance.groupId,
  'key': instance.key,
  'name': instance.name,
  'nameI18n': instance.nameI18n,
  'extraPriceHalala': instance.extraPriceHalala,
  'extraWeightUnitGrams': instance.extraWeightUnitGrams,
  'extraWeightPriceHalala': instance.extraWeightPriceHalala,
  'sortOrder': instance.sortOrder,
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
