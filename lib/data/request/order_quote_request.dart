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
  @JsonKey(name: 'itemType')
  final String itemType;

  @JsonKey(name: 'qty')
  final int qty;

  @JsonKey(name: 'selections')
  final Map<String, dynamic> selections;

  const OrderQuoteItemRequest({
    required this.itemType,
    required this.qty,
    required this.selections,
  });

  factory OrderQuoteItemRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderQuoteItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OrderQuoteItemRequestToJson(this);
}
