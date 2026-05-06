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
  quoteId: json['quoteId'] as String?,
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
  expiresInSeconds: (json['expiresInSeconds'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderQuoteDataResponseToJson(
  OrderQuoteDataResponse instance,
) => <String, dynamic>{
  'quoteId': instance.quoteId,
  'currency': instance.currency,
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'pricing': instance.pricing?.toJson(),
  'appliedPromo': instance.appliedPromo?.toJson(),
  'expiresInSeconds': instance.expiresInSeconds,
};

OrderQuoteItemDataResponse _$OrderQuoteItemDataResponseFromJson(
  Map<String, dynamic> json,
) => OrderQuoteItemDataResponse(
  itemType: json['itemType'] as String?,
  qty: (json['qty'] as num?)?.toInt(),
  name: json['name'] as String?,
  unitPriceHalala: (json['unitPriceHalala'] as num?)?.toInt(),
  totalPriceHalala: (json['totalPriceHalala'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrderQuoteItemDataResponseToJson(
  OrderQuoteItemDataResponse instance,
) => <String, dynamic>{
  'itemType': instance.itemType,
  'qty': instance.qty,
  'name': instance.name,
  'unitPriceHalala': instance.unitPriceHalala,
  'totalPriceHalala': instance.totalPriceHalala,
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
