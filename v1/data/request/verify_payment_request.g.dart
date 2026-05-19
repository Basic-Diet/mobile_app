// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyPaymentRequest _$VerifyPaymentRequestFromJson(
  Map<String, dynamic> json,
) => VerifyPaymentRequest(
  providerPaymentId: json['providerPaymentId'] as String?,
  providerInvoiceId: json['providerInvoiceId'] as String?,
);

Map<String, dynamic> _$VerifyPaymentRequestToJson(
  VerifyPaymentRequest instance,
) => <String, dynamic>{
  'providerPaymentId': instance.providerPaymentId,
  'providerInvoiceId': instance.providerInvoiceId,
};
