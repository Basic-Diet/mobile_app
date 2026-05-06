import 'package:json_annotation/json_annotation.dart';

part 'order_quote_request.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderQuoteRequest {
  @JsonKey(name: 'fulfillmentMethod')
  final String fulfillmentMethod;

  @JsonKey(name: 'pickup')
  final OrderQuotePickupRequest? pickup;

  @JsonKey(name: 'items')
  final List<OrderQuoteItemRequest> items;

  const OrderQuoteRequest({
    required this.fulfillmentMethod,
    this.pickup,
    required this.items,
  });

  factory OrderQuoteRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderQuotePickupRequest {
  @JsonKey(name: 'branchId')
  final String branchId;

  @JsonKey(name: 'pickupWindow')
  final String pickupWindow;

  const OrderQuotePickupRequest({
    required this.branchId,
    required this.pickupWindow,
  });

  factory OrderQuotePickupRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderQuotePickupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuotePickupRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderQuoteItemRequest {
  @JsonKey(name: 'productId')
  final String productId;

  @JsonKey(name: 'qty')
  final int qty;

  @JsonKey(name: 'weightGrams')
  final int? weightGrams;

  @JsonKey(name: 'selectedOptions')
  final List<OrderQuoteSelectedOptionRequest>? selectedOptions;

  const OrderQuoteItemRequest({
    required this.productId,
    required this.qty,
    this.weightGrams,
    this.selectedOptions,
  });

  factory OrderQuoteItemRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteItemRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderQuoteSelectedOptionRequest {
  @JsonKey(name: 'groupId')
  final String groupId;

  @JsonKey(name: 'optionId')
  final String optionId;

  @JsonKey(name: 'extraWeightGrams')
  final int? extraWeightGrams;

  const OrderQuoteSelectedOptionRequest({
    required this.groupId,
    required this.optionId,
    this.extraWeightGrams,
  });

  factory OrderQuoteSelectedOptionRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteSelectedOptionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteSelectedOptionRequestToJson(this);
}
