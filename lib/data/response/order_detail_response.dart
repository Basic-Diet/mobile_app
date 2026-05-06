import 'package:json_annotation/json_annotation.dart';

part 'order_detail_response.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderDetailResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final OrderDetailDataResponse? data;

  OrderDetailResponse({this.status, this.message, this.data});

  factory OrderDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderDetailDataResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'orderNumber')
  final String? orderNumber;

  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;

  @JsonKey(name: 'fulfillmentMethod')
  final String? fulfillmentMethod;

  @JsonKey(name: 'pickup')
  final OrderDetailPickupResponse? pickup;

  @JsonKey(name: 'pricing')
  final OrderDetailPricingResponse? pricing;

  @JsonKey(name: 'items')
  final List<OrderDetailItemResponse>? items;

  @JsonKey(name: 'createdAt')
  final String? createdAt;

  @JsonKey(name: 'expiresAt')
  final String? expiresAt;

  OrderDetailDataResponse({
    this.id,
    this.orderNumber,
    this.status,
    this.paymentStatus,
    this.fulfillmentMethod,
    this.pickup,
    this.pricing,
    this.items,
    this.createdAt,
    this.expiresAt,
  });

  factory OrderDetailDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailDataResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderDetailPickupResponse {
  @JsonKey(name: 'branchId')
  final String? branchId;

  @JsonKey(name: 'pickupWindow')
  final String? pickupWindow;

  @JsonKey(name: 'pickupCode')
  final String? pickupCode;

  OrderDetailPickupResponse({this.branchId, this.pickupWindow, this.pickupCode});

  factory OrderDetailPickupResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailPickupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailPickupResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderDetailPricingResponse {
  @JsonKey(name: 'currency')
  final String? currency;

  @JsonKey(name: 'totalHalala')
  final int? totalHalala;

  @JsonKey(name: 'vatIncluded')
  final bool? vatIncluded;

  @JsonKey(name: 'subtotalHalala')
  final int? subtotalHalala;

  @JsonKey(name: 'deliveryFeeHalala')
  final int? deliveryFeeHalala;

  @JsonKey(name: 'discountHalala')
  final int? discountHalala;

  @JsonKey(name: 'vatHalala')
  final int? vatHalala;

  OrderDetailPricingResponse({
    this.currency,
    this.totalHalala,
    this.vatIncluded,
    this.subtotalHalala,
    this.deliveryFeeHalala,
    this.discountHalala,
    this.vatHalala,
  });

  factory OrderDetailPricingResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailPricingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailPricingResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderDetailItemResponse {
  @JsonKey(name: 'itemType')
  final String? itemType;

  @JsonKey(name: 'productId')
  final String? productId;

  @JsonKey(name: 'qty')
  final int? qty;

  @JsonKey(name: 'weightGrams')
  final int? weightGrams;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'unitPriceHalala')
  final int? unitPriceHalala;

  @JsonKey(name: 'totalPriceHalala')
  final int? totalPriceHalala;

  @JsonKey(name: 'selectedOptions')
  final List<OrderDetailSelectedOptionResponse>? selectedOptions;

  OrderDetailItemResponse({
    this.itemType,
    this.productId,
    this.qty,
    this.weightGrams,
    this.name,
    this.unitPriceHalala,
    this.totalPriceHalala,
    this.selectedOptions,
  });

  factory OrderDetailItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailItemResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderDetailSelectedOptionResponse {
  @JsonKey(name: 'groupId')
  final String? groupId;

  @JsonKey(name: 'optionId')
  final String? optionId;

  @JsonKey(name: 'extraWeightGrams')
  final int? extraWeightGrams;

  OrderDetailSelectedOptionResponse({
    this.groupId,
    this.optionId,
    this.extraWeightGrams,
  });

  factory OrderDetailSelectedOptionResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailSelectedOptionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailSelectedOptionResponseToJson(this);
}
