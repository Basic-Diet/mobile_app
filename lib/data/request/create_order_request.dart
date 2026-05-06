import 'package:json_annotation/json_annotation.dart';

part 'create_order_request.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateOrderRequest {
  @JsonKey(name: 'fulfillmentMethod')
  final String fulfillmentMethod;

  @JsonKey(name: 'pickup')
  final CreateOrderPickupRequest? pickup;

  @JsonKey(name: 'items')
  final List<CreateOrderItemRequest> items;

  @JsonKey(name: 'successUrl')
  final String successUrl;

  @JsonKey(name: 'backUrl')
  final String backUrl;

  const CreateOrderRequest({
    required this.fulfillmentMethod,
    this.pickup,
    required this.items,
    required this.successUrl,
    required this.backUrl,
  });

  factory CreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateOrderPickupRequest {
  @JsonKey(name: 'branchId')
  final String branchId;

  @JsonKey(name: 'pickupWindow')
  final String pickupWindow;

  const CreateOrderPickupRequest({
    required this.branchId,
    required this.pickupWindow,
  });

  factory CreateOrderPickupRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderPickupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderPickupRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateOrderItemRequest {
  @JsonKey(name: 'productId')
  final String productId;

  @JsonKey(name: 'qty')
  final int qty;

  @JsonKey(name: 'weightGrams')
  final int? weightGrams;

  @JsonKey(name: 'selectedOptions')
  final List<CreateOrderSelectedOptionRequest>? selectedOptions;

  const CreateOrderItemRequest({
    required this.productId,
    required this.qty,
    this.weightGrams,
    this.selectedOptions,
  });

  factory CreateOrderItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderItemRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateOrderSelectedOptionRequest {
  @JsonKey(name: 'groupId')
  final String groupId;

  @JsonKey(name: 'optionId')
  final String optionId;

  @JsonKey(name: 'extraWeightGrams')
  final int? extraWeightGrams;

  const CreateOrderSelectedOptionRequest({
    required this.groupId,
    required this.optionId,
    this.extraWeightGrams,
  });

  factory CreateOrderSelectedOptionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderSelectedOptionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderSelectedOptionRequestToJson(this);
}
