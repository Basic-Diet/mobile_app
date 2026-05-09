// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailResponse _$OrderDetailResponseFromJson(Map<String, dynamic> json) =>
    OrderDetailResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data:
          json['data'] == null
              ? null
              : OrderDetailDataResponse.fromJson(
                json['data'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$OrderDetailResponseToJson(
  OrderDetailResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

OrderDetailDataResponse _$OrderDetailDataResponseFromJson(
  Map<String, dynamic> json,
) => OrderDetailDataResponse(
  id: json['id'] as String?,
  orderNumber: json['orderNumber'] as String?,
  status: json['status'] as String?,
  paymentStatus: json['paymentStatus'] as String?,
  fulfillmentMethod: json['fulfillmentMethod'] as String?,
  pickup:
      json['pickup'] == null
          ? null
          : OrderDetailPickupResponse.fromJson(
            json['pickup'] as Map<String, dynamic>,
          ),
  pricing:
      json['pricing'] == null
          ? null
          : OrderDetailPricingResponse.fromJson(
            json['pricing'] as Map<String, dynamic>,
          ),
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => OrderDetailItemResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  createdAt: json['createdAt'] as String?,
  expiresAt: json['expiresAt'] as String?,
);

Map<String, dynamic> _$OrderDetailDataResponseToJson(
  OrderDetailDataResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'orderNumber': instance.orderNumber,
  'status': instance.status,
  'paymentStatus': instance.paymentStatus,
  'fulfillmentMethod': instance.fulfillmentMethod,
  'pickup': instance.pickup?.toJson(),
  'pricing': instance.pricing?.toJson(),
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'createdAt': instance.createdAt,
  'expiresAt': instance.expiresAt,
};

OrderDetailPickupResponse _$OrderDetailPickupResponseFromJson(
  Map<String, dynamic> json,
) => OrderDetailPickupResponse(
  branchId: json['branchId'] as String?,
  pickupWindow: json['pickupWindow'] as String?,
  pickupCode: json['pickupCode'] as String?,
);

Map<String, dynamic> _$OrderDetailPickupResponseToJson(
  OrderDetailPickupResponse instance,
) => <String, dynamic>{
  'branchId': instance.branchId,
  'pickupWindow': instance.pickupWindow,
  'pickupCode': instance.pickupCode,
};

OrderDetailPricingResponse _$OrderDetailPricingResponseFromJson(
  Map<String, dynamic> json,
) => OrderDetailPricingResponse(
  currency: json['currency'] as String?,
  totalHalala: (json['totalHalala'] as num?)?.toInt(),
  vatIncluded: json['vatIncluded'] as bool?,
  subtotalHalala: (json['subtotalHalala'] as num?)?.toInt(),
  deliveryFeeHalala: (json['deliveryFeeHalala'] as num?)?.toInt(),
  discountHalala: (json['discountHalala'] as num?)?.toInt(),
  vatHalala: (json['vatHalala'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderDetailPricingResponseToJson(
  OrderDetailPricingResponse instance,
) => <String, dynamic>{
  'currency': instance.currency,
  'totalHalala': instance.totalHalala,
  'vatIncluded': instance.vatIncluded,
  'subtotalHalala': instance.subtotalHalala,
  'deliveryFeeHalala': instance.deliveryFeeHalala,
  'discountHalala': instance.discountHalala,
  'vatHalala': instance.vatHalala,
};

OrderDetailItemResponse _$OrderDetailItemResponseFromJson(
  Map<String, dynamic> json,
) => OrderDetailItemResponse(
  itemType: json['itemType'] as String?,
  productId: json['productId'] as String?,
  qty: (json['qty'] as num?)?.toInt(),
  weightGrams: (json['weightGrams'] as num?)?.toInt(),
  name: _readOrderItemName(json, 'name') as String?,
  unitPriceHalala: (json['unitPriceHalala'] as num?)?.toInt(),
  totalPriceHalala:
      (_readOrderItemTotalPriceHalala(json, 'totalPriceHalala') as num?)
          ?.toInt(),
  selectedOptions:
      (json['selectedOptions'] as List<dynamic>?)
          ?.map(
            (e) => OrderDetailSelectedOptionResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$OrderDetailItemResponseToJson(
  OrderDetailItemResponse instance,
) => <String, dynamic>{
  'itemType': instance.itemType,
  'productId': instance.productId,
  'qty': instance.qty,
  'weightGrams': instance.weightGrams,
  'name': instance.name,
  'unitPriceHalala': instance.unitPriceHalala,
  'totalPriceHalala': instance.totalPriceHalala,
  'selectedOptions': instance.selectedOptions?.map((e) => e.toJson()).toList(),
};

OrderDetailSelectedOptionResponse _$OrderDetailSelectedOptionResponseFromJson(
  Map<String, dynamic> json,
) => OrderDetailSelectedOptionResponse(
  groupId: json['groupId'] as String?,
  optionId: json['optionId'] as String?,
  extraWeightGrams: (json['extraWeightGrams'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderDetailSelectedOptionResponseToJson(
  OrderDetailSelectedOptionResponse instance,
) => <String, dynamic>{
  'groupId': instance.groupId,
  'optionId': instance.optionId,
  'extraWeightGrams': instance.extraWeightGrams,
};
