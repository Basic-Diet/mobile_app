// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderRequest _$CreateOrderRequestFromJson(Map<String, dynamic> json) =>
    CreateOrderRequest(
      fulfillmentMethod: json['fulfillmentMethod'] as String,
      pickup:
          json['pickup'] == null
              ? null
              : CreateOrderPickupRequest.fromJson(
                json['pickup'] as Map<String, dynamic>,
              ),
      items:
          (json['items'] as List<dynamic>)
              .map(
                (e) =>
                    CreateOrderItemRequest.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      successUrl: json['successUrl'] as String,
      backUrl: json['backUrl'] as String,
    );

Map<String, dynamic> _$CreateOrderRequestToJson(CreateOrderRequest instance) =>
    <String, dynamic>{
      'fulfillmentMethod': instance.fulfillmentMethod,
      'pickup': instance.pickup?.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'successUrl': instance.successUrl,
      'backUrl': instance.backUrl,
    };

CreateOrderPickupRequest _$CreateOrderPickupRequestFromJson(
  Map<String, dynamic> json,
) => CreateOrderPickupRequest(
  branchId: json['branchId'] as String,
  pickupWindow: json['pickupWindow'] as String,
);

Map<String, dynamic> _$CreateOrderPickupRequestToJson(
  CreateOrderPickupRequest instance,
) => <String, dynamic>{
  'branchId': instance.branchId,
  'pickupWindow': instance.pickupWindow,
};

CreateOrderItemRequest _$CreateOrderItemRequestFromJson(
  Map<String, dynamic> json,
) => CreateOrderItemRequest(
  productId: json['productId'] as String,
  qty: (json['qty'] as num).toInt(),
  weightGrams: (json['weightGrams'] as num?)?.toInt(),
  selectedOptions:
      (json['selectedOptions'] as List<dynamic>?)
          ?.map(
            (e) => CreateOrderSelectedOptionRequest.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$CreateOrderItemRequestToJson(
  CreateOrderItemRequest instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'qty': instance.qty,
  'weightGrams': instance.weightGrams,
  'selectedOptions': instance.selectedOptions?.map((e) => e.toJson()).toList(),
};

CreateOrderSelectedOptionRequest _$CreateOrderSelectedOptionRequestFromJson(
  Map<String, dynamic> json,
) => CreateOrderSelectedOptionRequest(
  groupId: json['groupId'] as String,
  optionId: json['optionId'] as String,
  extraWeightGrams: (json['extraWeightGrams'] as num?)?.toInt(),
);

Map<String, dynamic> _$CreateOrderSelectedOptionRequestToJson(
  CreateOrderSelectedOptionRequest instance,
) => <String, dynamic>{
  'groupId': instance.groupId,
  'optionId': instance.optionId,
  'extraWeightGrams': instance.extraWeightGrams,
};
