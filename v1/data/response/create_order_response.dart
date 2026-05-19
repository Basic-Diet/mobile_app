import 'package:json_annotation/json_annotation.dart';

part 'create_order_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateOrderResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final CreateOrderDataResponse? data;

  CreateOrderResponse({this.status, this.message, this.data});

  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateOrderDataResponse {
  @JsonKey(name: 'orderId')
  final String? orderId;

  @JsonKey(name: 'paymentId')
  final String? paymentId;

  @JsonKey(name: 'paymentUrl')
  final String? paymentUrl;

  @JsonKey(name: 'invoiceId')
  final String? invoiceId;

  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;

  @JsonKey(name: 'expiresAt')
  final String? expiresAt;

  @JsonKey(name: 'pricing')
  final Map<String, dynamic>? pricing;

  @JsonKey(name: 'items')
  final List<dynamic>? items;

  CreateOrderDataResponse({
    this.orderId,
    this.paymentId,
    this.paymentUrl,
    this.invoiceId,
    this.status,
    this.paymentStatus,
    this.expiresAt,
    this.pricing,
    this.items,
  });

  factory CreateOrderDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderDataResponseToJson(this);
}
