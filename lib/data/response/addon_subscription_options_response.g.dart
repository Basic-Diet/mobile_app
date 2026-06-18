// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_subscription_options_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddonSubscriptionOptionsResponse _$AddonSubscriptionOptionsResponseFromJson(
  Map<String, dynamic> json,
) => AddonSubscriptionOptionsResponse(
  status: json['status'],
  message: json['message'] as String?,
  data:
      json['data'] == null
          ? null
          : AddonSubscriptionOptionsDataResponse.fromJson(
            json['data'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$AddonSubscriptionOptionsResponseToJson(
  AddonSubscriptionOptionsResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

AddonSubscriptionOptionsDataResponse
_$AddonSubscriptionOptionsDataResponseFromJson(Map<String, dynamic> json) =>
    AddonSubscriptionOptionsDataResponse(
      planId: json['planId'] as String?,
      addons:
          (json['addons'] as List<dynamic>?)
              ?.map(
                (e) => AddonSubscriptionOptionResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$AddonSubscriptionOptionsDataResponseToJson(
  AddonSubscriptionOptionsDataResponse instance,
) => <String, dynamic>{'planId': instance.planId, 'addons': instance.addons};

AddonSubscriptionOptionResponse _$AddonSubscriptionOptionResponseFromJson(
  Map<String, dynamic> json,
) => AddonSubscriptionOptionResponse(
  id: json['id'] as String?,
  addonPlanId: json['addonPlanId'] as String?,
  name:
      json['name'] == null
          ? null
          : LocalizedNameResponse.fromJson(
            json['name'] as Map<String, dynamic>,
          ),
  category: json['category'] as String?,
  maxPerDay: (json['maxPerDay'] as num?)?.toInt(),
  pricingMode: json['pricingMode'] as String?,
  priceHalala: (json['priceHalala'] as num?)?.toInt(),
  priceSar: (json['priceSar'] as num?)?.toDouble(),
  priceLabel: json['priceLabel'] as String?,
  currency: json['currency'] as String?,
  isAvailable: json['isAvailable'] as bool?,
  menuProductIds:
      (json['menuProductIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  menuProductsCount: (json['menuProductsCount'] as num?)?.toInt(),
  menuProducts:
      (json['menuProducts'] as List<dynamic>?)
          ?.map(
            (e) => AddonMenuProductResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      [],
);

Map<String, dynamic> _$AddonSubscriptionOptionResponseToJson(
  AddonSubscriptionOptionResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'addonPlanId': instance.addonPlanId,
  'name': instance.name,
  'category': instance.category,
  'maxPerDay': instance.maxPerDay,
  'pricingMode': instance.pricingMode,
  'priceHalala': instance.priceHalala,
  'priceSar': instance.priceSar,
  'priceLabel': instance.priceLabel,
  'currency': instance.currency,
  'isAvailable': instance.isAvailable,
  'menuProductIds': instance.menuProductIds,
  'menuProductsCount': instance.menuProductsCount,
  'menuProducts': instance.menuProducts,
};

AddonMenuProductResponse _$AddonMenuProductResponseFromJson(
  Map<String, dynamic> json,
) => AddonMenuProductResponse(
  id: json['id'] as String?,
  mongoId: json['_id'] as String?,
  name:
      json['name'] == null
          ? null
          : LocalizedNameResponse.fromJson(
            json['name'] as Map<String, dynamic>,
          ),
  image: json['image'] as String?,
  category: json['category'] as String?,
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$AddonMenuProductResponseToJson(
  AddonMenuProductResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  '_id': instance.mongoId,
  'name': instance.name,
  'image': instance.image,
  'category': instance.category,
  'isActive': instance.isActive,
};

LocalizedNameResponse _$LocalizedNameResponseFromJson(
  Map<String, dynamic> json,
) =>
    LocalizedNameResponse(ar: json['ar'] as String?, en: json['en'] as String?);

Map<String, dynamic> _$LocalizedNameResponseToJson(
  LocalizedNameResponse instance,
) => <String, dynamic>{'ar': instance.ar, 'en': instance.en};
