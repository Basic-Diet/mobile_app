import 'package:json_annotation/json_annotation.dart';

part 'order_quote_response.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderQuoteResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final OrderQuoteDataResponse? data;

  OrderQuoteResponse({this.status, this.message, this.data});

  factory OrderQuoteResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderQuoteDataResponse {
  @JsonKey(name: 'quoteId')
  final String? quoteId;

  @JsonKey(name: 'currency')
  final String? currency;

  @JsonKey(name: 'items')
  final List<OrderQuoteItemDataResponse>? items;

  @JsonKey(name: 'pricing')
  final OrderQuotePricingResponse? pricing;

  @JsonKey(name: 'appliedPromo')
  final OrderQuoteAppliedPromoResponse? appliedPromo;

  @JsonKey(name: 'expiresInSeconds')
  final int? expiresInSeconds;

  OrderQuoteDataResponse({
    this.quoteId,
    this.currency,
    this.items,
    this.pricing,
    this.appliedPromo,
    this.expiresInSeconds,
  });

  factory OrderQuoteDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteDataResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderQuoteItemDataResponse {
  @JsonKey(name: 'itemType')
  final String? itemType;

  @JsonKey(name: 'qty')
  final int? qty;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'unitPriceHalala')
  final int? unitPriceHalala;

  @JsonKey(name: 'totalPriceHalala')
  final int? totalPriceHalala;

  OrderQuoteItemDataResponse({
    this.itemType,
    this.qty,
    this.name,
    this.unitPriceHalala,
    this.totalPriceHalala,
  });

  factory OrderQuoteItemDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteItemDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteItemDataResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderQuotePricingResponse {
  @JsonKey(name: 'subtotalHalala')
  final int? subtotalHalala;

  @JsonKey(name: 'deliveryFeeHalala')
  final int? deliveryFeeHalala;

  @JsonKey(name: 'discountHalala')
  final int? discountHalala;

  @JsonKey(name: 'totalHalala')
  final int? totalHalala;

  @JsonKey(name: 'vatPercentage')
  final int? vatPercentage;

  @JsonKey(name: 'vatHalala')
  final int? vatHalala;

  @JsonKey(name: 'vatIncluded')
  final bool? vatIncluded;

  OrderQuotePricingResponse({
    this.subtotalHalala,
    this.deliveryFeeHalala,
    this.discountHalala,
    this.totalHalala,
    this.vatPercentage,
    this.vatHalala,
    this.vatIncluded,
  });

  factory OrderQuotePricingResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderQuotePricingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuotePricingResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderQuoteAppliedPromoResponse {
  @JsonKey(name: 'code')
  final String? code;

  @JsonKey(name: 'label')
  final String? label;

  @JsonKey(name: 'message')
  final String? message;

  OrderQuoteAppliedPromoResponse({this.code, this.label, this.message});

  factory OrderQuoteAppliedPromoResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteAppliedPromoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteAppliedPromoResponseToJson(this);
}
