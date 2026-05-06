// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_quote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderQuoteResponse _$OrderQuoteResponseFromJson(Map<String, dynamic> json) =>
    OrderQuoteResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data:
          json['data'] == null
              ? null
              : OrderQuoteDataResponse.fromJson(
                json['data'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$OrderQuoteResponseToJson(OrderQuoteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

OrderQuoteDataResponse _$OrderQuoteDataResponseFromJson(
  Map<String, dynamic> json,
) => OrderQuoteDataResponse(
  currency: json['currency'] as String?,
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderQuoteItemDataResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  pricing:
      json['pricing'] == null
          ? null
          : OrderQuotePricingResponse.fromJson(
            json['pricing'] as Map<String, dynamic>,
          ),
  appliedPromo:
      json['appliedPromo'] == null
          ? null
          : OrderQuoteAppliedPromoResponse.fromJson(
            json['appliedPromo'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$OrderQuoteDataResponseToJson(
  OrderQuoteDataResponse instance,
) => <String, dynamic>{
  'currency': instance.currency,
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'pricing': instance.pricing?.toJson(),
  'appliedPromo': instance.appliedPromo?.toJson(),
};

OrderQuoteItemDataResponse _$OrderQuoteItemDataResponseFromJson(
  Map<String, dynamic> json,
) => OrderQuoteItemDataResponse(
  itemType: json['itemType'] as String?,
  productId: json['productId'] as String?,
  menuVersionId: json['menuVersionId'] as String?,
  qty: (json['qty'] as num?)?.toInt(),
  weightGrams: (json['weightGrams'] as num?)?.toInt(),
  unitPriceHalala: (json['unitPriceHalala'] as num?)?.toInt(),
  lineTotalHalala: (json['lineTotalHalala'] as num?)?.toInt(),
  name: json['name'] as String?,
  productSnapshot: json['productSnapshot'] as Map<String, dynamic>?,
  selectedOptions:
      (json['selectedOptions'] as List<dynamic>?)
          ?.map(
            (e) => OrderQuoteSelectedOptionResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  pricingSnapshot: json['pricingSnapshot'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$OrderQuoteItemDataResponseToJson(
  OrderQuoteItemDataResponse instance,
) => <String, dynamic>{
  'itemType': instance.itemType,
  'productId': instance.productId,
  'menuVersionId': instance.menuVersionId,
  'qty': instance.qty,
  'weightGrams': instance.weightGrams,
  'unitPriceHalala': instance.unitPriceHalala,
  'lineTotalHalala': instance.lineTotalHalala,
  'name': instance.name,
  'productSnapshot': instance.productSnapshot,
  'selectedOptions': instance.selectedOptions?.map((e) => e.toJson()).toList(),
  'pricingSnapshot': instance.pricingSnapshot,
};

OrderQuoteSelectedOptionResponse _$OrderQuoteSelectedOptionResponseFromJson(
  Map<String, dynamic> json,
) => OrderQuoteSelectedOptionResponse(
  groupId: json['groupId'] as String?,
  optionId: json['optionId'] as String?,
  extraWeightGrams: (json['extraWeightGrams'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderQuoteSelectedOptionResponseToJson(
  OrderQuoteSelectedOptionResponse instance,
) => <String, dynamic>{
  'groupId': instance.groupId,
  'optionId': instance.optionId,
  'extraWeightGrams': instance.extraWeightGrams,
};

OrderQuotePricingResponse _$OrderQuotePricingResponseFromJson(
  Map<String, dynamic> json,
) => OrderQuotePricingResponse(
  subtotalHalala: (json['subtotalHalala'] as num?)?.toInt(),
  deliveryFeeHalala: (json['deliveryFeeHalala'] as num?)?.toInt(),
  discountHalala: (json['discountHalala'] as num?)?.toInt(),
  totalHalala: (json['totalHalala'] as num?)?.toInt(),
  vatPercentage: (json['vatPercentage'] as num?)?.toInt(),
  vatHalala: (json['vatHalala'] as num?)?.toInt(),
  vatIncluded: json['vatIncluded'] as bool?,
);

Map<String, dynamic> _$OrderQuotePricingResponseToJson(
  OrderQuotePricingResponse instance,
) => <String, dynamic>{
  'subtotalHalala': instance.subtotalHalala,
  'deliveryFeeHalala': instance.deliveryFeeHalala,
  'discountHalala': instance.discountHalala,
  'totalHalala': instance.totalHalala,
  'vatPercentage': instance.vatPercentage,
  'vatHalala': instance.vatHalala,
  'vatIncluded': instance.vatIncluded,
};

OrderQuoteAppliedPromoResponse _$OrderQuoteAppliedPromoResponseFromJson(
  Map<String, dynamic> json,
) => OrderQuoteAppliedPromoResponse(
  code: json['code'] as String?,
  label: json['label'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$OrderQuoteAppliedPromoResponseToJson(
  OrderQuoteAppliedPromoResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'label': instance.label,
  'message': instance.message,
};
