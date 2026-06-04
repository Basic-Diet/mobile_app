// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_choices_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AddonChoicesResponseToJson(
  AddonChoicesResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

AddonChoiceCategoryResponse _$AddonChoiceCategoryResponseFromJson(
  Map<String, dynamic> json,
) => AddonChoiceCategoryResponse(
  category: json['category'] as String?,
  sourceCategories:
      (json['sourceCategories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  choices:
      (json['choices'] as List<dynamic>?)
          ?.map((e) => AddonChoiceResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AddonChoiceCategoryResponseToJson(
  AddonChoiceCategoryResponse instance,
) => <String, dynamic>{
  'category': instance.category,
  'sourceCategories': instance.sourceCategories,
  'choices': instance.choices,
};

AddonChoiceResponse _$AddonChoiceResponseFromJson(Map<String, dynamic> json) =>
    AddonChoiceResponse(
      id: json['id'] as String?,
      key: json['key'] as String?,
      name: json['name'] as String?,
      nameAr: json['nameAr'] as String?,
      nameI18n: json['nameI18n'] as Map<String, dynamic>?,
      priceHalala: (json['priceHalala'] as num?)?.toInt(),
      priceSar: (json['priceSar'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      calories: (json['calories'] as num?)?.toInt(),
      prepTimeMinutes: (json['prepTimeMinutes'] as num?)?.toInt(),
      categoryKey: json['categoryKey'] as String?,
      itemType: json['itemType'] as String?,
      type: json['type'] as String?,
      available: json['available'] as bool?,
      active: json['active'] as bool?,
      ui: json['ui'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AddonChoiceResponseToJson(
  AddonChoiceResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'key': instance.key,
  'name': instance.name,
  'nameAr': instance.nameAr,
  'nameI18n': instance.nameI18n,
  'priceHalala': instance.priceHalala,
  'priceSar': instance.priceSar,
  'currency': instance.currency,
  'calories': instance.calories,
  'prepTimeMinutes': instance.prepTimeMinutes,
  'categoryKey': instance.categoryKey,
  'itemType': instance.itemType,
  'type': instance.type,
  'available': instance.available,
  'active': instance.active,
  'ui': instance.ui,
};
