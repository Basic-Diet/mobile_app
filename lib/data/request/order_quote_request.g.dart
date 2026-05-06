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
  productId: json['productId'] as String,
  qty: (json['qty'] as num).toInt(),
  weightGrams: (json['weightGrams'] as num?)?.toInt(),
  selectedOptions:
      (json['selectedOptions'] as List<dynamic>?)
          ?.map(
            (e) => OrderQuoteSelectedOptionRequest.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$OrderQuoteItemRequestToJson(
  OrderQuoteItemRequest instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'qty': instance.qty,
  'weightGrams': instance.weightGrams,
  'selectedOptions': instance.selectedOptions?.map((e) => e.toJson()).toList(),
};

OrderQuoteSelectedOptionRequest _$OrderQuoteSelectedOptionRequestFromJson(
  Map<String, dynamic> json,
) => OrderQuoteSelectedOptionRequest(
  groupId: json['groupId'] as String,
  optionId: json['optionId'] as String,
  extraWeightGrams: (json['extraWeightGrams'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderQuoteSelectedOptionRequestToJson(
  OrderQuoteSelectedOptionRequest instance,
) => <String, dynamic>{
  'groupId': instance.groupId,
  'optionId': instance.optionId,
  'extraWeightGrams': instance.extraWeightGrams,
};
