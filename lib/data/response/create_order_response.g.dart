// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) =>
    CreateOrderResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data:
          json['data'] == null
              ? null
              : CreateOrderDataResponse.fromJson(
                json['data'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$CreateOrderResponseToJson(
  CreateOrderResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

CreateOrderDataResponse _$CreateOrderDataResponseFromJson(
  Map<String, dynamic> json,
) => CreateOrderDataResponse(
  orderId: json['orderId'] as String?,
  paymentId: json['paymentId'] as String?,
  paymentUrl: json['paymentUrl'] as String?,
  invoiceId: json['invoiceId'] as String?,
  status: json['status'] as String?,
  paymentStatus: json['paymentStatus'] as String?,
  expiresAt: json['expiresAt'] as String?,
  pricing: json['pricing'] as Map<String, dynamic>?,
  items: json['items'] as List<dynamic>?,
);

Map<String, dynamic> _$CreateOrderDataResponseToJson(
  CreateOrderDataResponse instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'paymentId': instance.paymentId,
  'paymentUrl': instance.paymentUrl,
  'invoiceId': instance.invoiceId,
  'status': instance.status,
  'paymentStatus': instance.paymentStatus,
  'expiresAt': instance.expiresAt,
  'pricing': instance.pricing,
  'items': instance.items,
};
