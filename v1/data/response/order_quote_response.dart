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
  @JsonKey(name: 'currency')
  final String? currency;

  @JsonKey(name: 'items')
  final List<OrderQuoteItemDataResponse>? items;

  @JsonKey(name: 'pricing')
  final OrderQuotePricingResponse? pricing;

  @JsonKey(name: 'appliedPromo')
  final OrderQuoteAppliedPromoResponse? appliedPromo;

  OrderQuoteDataResponse({
    this.currency,
    this.items,
    this.pricing,
    this.appliedPromo,
  });

  factory OrderQuoteDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteDataResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderQuoteItemDataResponse {
  @JsonKey(name: 'itemType')
  final String? itemType;

  @JsonKey(name: 'productId')
  final String? productId;

  @JsonKey(name: 'menuVersionId')
  final String? menuVersionId;

  @JsonKey(name: 'qty')
  final int? qty;

  @JsonKey(name: 'weightGrams')
  final int? weightGrams;

  @JsonKey(name: 'unitPriceHalala')
  final int? unitPriceHalala;

  @JsonKey(name: 'lineTotalHalala')
  final int? lineTotalHalala;

  @JsonKey(name: 'name', readValue: _readLocalizedText)
  final String? name;

  @JsonKey(name: 'productSnapshot')
  final Map<String, dynamic>? productSnapshot;

  @JsonKey(name: 'selectedOptions')
  final List<OrderQuoteSelectedOptionResponse>? selectedOptions;

  @JsonKey(name: 'pricingSnapshot')
  final Map<String, dynamic>? pricingSnapshot;

  OrderQuoteItemDataResponse({
    this.itemType,
    this.productId,
    this.menuVersionId,
    this.qty,
    this.weightGrams,
    this.unitPriceHalala,
    this.lineTotalHalala,
    this.name,
    this.productSnapshot,
    this.selectedOptions,
    this.pricingSnapshot,
  });

  factory OrderQuoteItemDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteItemDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteItemDataResponseToJson(this);
}

String? _readLocalizedText(Map json, String key) {
  final value = json[key];

  if (value is String) {
    return value;
  }

  if (value is Map) {
    final localizedMap = value.cast<String, dynamic>();
    final arabic = localizedMap['ar'];
    if (arabic is String && arabic.trim().isNotEmpty) {
      return arabic;
    }

    final english = localizedMap['en'];
    if (english is String && english.trim().isNotEmpty) {
      return english;
    }

    for (final localizedValue in localizedMap.values) {
      if (localizedValue is String && localizedValue.trim().isNotEmpty) {
        return localizedValue;
      }
    }
  }

  return null;
}

@JsonSerializable(explicitToJson: true)
class OrderQuoteSelectedOptionResponse {
  @JsonKey(name: 'groupId')
  final String? groupId;

  @JsonKey(name: 'optionId')
  final String? optionId;

  @JsonKey(name: 'extraWeightGrams')
  final int? extraWeightGrams;

  OrderQuoteSelectedOptionResponse({
    this.groupId,
    this.optionId,
    this.extraWeightGrams,
  });

  factory OrderQuoteSelectedOptionResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteSelectedOptionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteSelectedOptionResponseToJson(this);
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
