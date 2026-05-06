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
  itemType: json['itemType'] as String,
  qty: (json['qty'] as num).toInt(),
  selections: json['selections'] as Map<String, dynamic>,
);

Map<String, dynamic> _$CreateOrderItemRequestToJson(
  CreateOrderItemRequest instance,
) => <String, dynamic>{
  'itemType': instance.itemType,
  'qty': instance.qty,
  'selections': instance.selections,
};
