import 'package:json_annotation/json_annotation.dart';

part 'verify_payment_response.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyPaymentResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final VerifyPaymentDataResponse? data;

  VerifyPaymentResponse({this.status, this.message, this.data});

  factory VerifyPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyPaymentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyPaymentResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerifyPaymentDataResponse {
  @JsonKey(name: 'orderId')
  final String? orderId;

  @JsonKey(name: 'paymentId')
  final String? paymentId;

  @JsonKey(name: 'orderStatus')
  final String? orderStatus;

  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;

  @JsonKey(name: 'applied')
  final bool? applied;

  @JsonKey(name: 'providerInvoiceStatus')
  final String? providerInvoiceStatus;

  @JsonKey(name: 'isFinal')
  final bool? isFinal;

  VerifyPaymentDataResponse({
    this.orderId,
    this.paymentId,
    this.orderStatus,
    this.paymentStatus,
    this.applied,
    this.providerInvoiceStatus,
    this.isFinal,
  });

  factory VerifyPaymentDataResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyPaymentDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyPaymentDataResponseToJson(this);
}
