// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelOrderResponse _$CancelOrderResponseFromJson(Map<String, dynamic> json) =>
    CancelOrderResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data:
          json['data'] == null
              ? null
              : CancelOrderDataResponse.fromJson(
                json['data'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$CancelOrderResponseToJson(
  CancelOrderResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

CancelOrderDataResponse _$CancelOrderDataResponseFromJson(
  Map<String, dynamic> json,
) => CancelOrderDataResponse(
  id: json['id'] as String?,
  status: json['status'] as String?,
  paymentStatus: json['paymentStatus'] as String?,
);

Map<String, dynamic> _$CancelOrderDataResponseToJson(
  CancelOrderDataResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'paymentStatus': instance.paymentStatus,
};
