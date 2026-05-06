import 'package:json_annotation/json_annotation.dart';

part 'verify_payment_request.g.dart';

@JsonSerializable(explicitToJson: true)
class VerifyPaymentRequest {
  @JsonKey(name: 'providerPaymentId')
  final String? providerPaymentId;

  @JsonKey(name: 'providerInvoiceId')
  final String? providerInvoiceId;

  const VerifyPaymentRequest({
    this.providerPaymentId,
    this.providerInvoiceId,
  });

  factory VerifyPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyPaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyPaymentRequestToJson(this);
}
