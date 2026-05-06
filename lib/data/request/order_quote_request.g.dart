// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_quote_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderQuoteRequest _$OrderQuoteRequestFromJson(
  Map<String, dynamic> json,
) => OrderQuoteRequest(
  fulfillmentMethod: json['fulfillmentMethod'] as String,
  pickup:
      json['pickup'] == null
          ? null
          : OrderQuotePickupRequest.fromJson(
            json['pickup'] as Map<String, dynamic>,
          ),
  items:
      (json['items'] as List<dynamic>)
          .map((e) => OrderQuoteItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$OrderQuoteRequestToJson(OrderQuoteRequest instance) =>
    <String, dynamic>{
      'fulfillmentMethod': instance.fulfillmentMethod,
      'pickup': instance.pickup?.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

OrderQuotePickupRequest _$OrderQuotePickupRequestFromJson(
  Map<String, dynamic> json,
) => OrderQuotePickupRequest(
  branchId: json['branchId'] as String,
  pickupWindow: json['pickupWindow'] as String,
);

Map<String, dynamic> _$OrderQuotePickupRequestToJson(
  OrderQuotePickupRequest instance,
) => <String, dynamic>{
  'branchId': instance.branchId,
  'pickupWindow': instance.pickupWindow,
};

OrderQuoteItemRequest _$OrderQuoteItemRequestFromJson(
  Map<String, dynamic> json,
) => OrderQuoteItemRequest(
  itemType: json['itemType'] as String,
  qty: (json['qty'] as num).toInt(),
  selections: json['selections'] as Map<String, dynamic>,
);

Map<String, dynamic> _$OrderQuoteItemRequestToJson(
  OrderQuoteItemRequest instance,
) => <String, dynamic>{
  'itemType': instance.itemType,
  'qty': instance.qty,
  'selections': instance.selections,
};
