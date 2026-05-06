// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyPaymentResponse _$VerifyPaymentResponseFromJson(
  Map<String, dynamic> json,
) => VerifyPaymentResponse(
  status: json['status'] as bool?,
  message: json['message'] as String?,
  data:
      json['data'] == null
          ? null
          : VerifyPaymentDataResponse.fromJson(
            json['data'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$VerifyPaymentResponseToJson(
  VerifyPaymentResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

VerifyPaymentDataResponse _$VerifyPaymentDataResponseFromJson(
  Map<String, dynamic> json,
) => VerifyPaymentDataResponse(
  orderId: json['orderId'] as String?,
  paymentId: json['paymentId'] as String?,
  orderStatus: json['orderStatus'] as String?,
  paymentStatus: json['paymentStatus'] as String?,
  applied: json['applied'] as bool?,
  providerInvoiceStatus: json['providerInvoiceStatus'] as String?,
  isFinal: json['isFinal'] as bool?,
);

Map<String, dynamic> _$VerifyPaymentDataResponseToJson(
  VerifyPaymentDataResponse instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'paymentId': instance.paymentId,
  'orderStatus': instance.orderStatus,
  'paymentStatus': instance.paymentStatus,
  'applied': instance.applied,
  'providerInvoiceStatus': instance.providerInvoiceStatus,
  'isFinal': instance.isFinal,
};
