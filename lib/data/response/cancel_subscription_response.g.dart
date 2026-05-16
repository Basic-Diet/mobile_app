// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_subscription_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelSubscriptionDataResponse _$CancelSubscriptionDataResponseFromJson(
  Map<String, dynamic> json,
) => CancelSubscriptionDataResponse(
  id: json['_id'] as String?,
  status: json['status'] as String?,
  canceledAt: json['canceledAt'] as String?,
);

Map<String, dynamic> _$CancelSubscriptionDataResponseToJson(
  CancelSubscriptionDataResponse instance,
) => <String, dynamic>{
  '_id': instance.id,
  'status': instance.status,
  'canceledAt': instance.canceledAt,
};

CancelSubscriptionResponse _$CancelSubscriptionResponseFromJson(
  Map<String, dynamic> json,
) =>
    CancelSubscriptionResponse(
        data:
            json['data'] == null
                ? null
                : CancelSubscriptionDataResponse.fromJson(
                  json['data'] as Map<String, dynamic>,
                ),
      )
      ..ok = json['ok'] as bool?
      ..status = json['status']
      ..message = json['message'] as String?
      ..phoneE164 = json['phoneE164'] as String?
      ..cooldownSeconds = (json['cooldownSeconds'] as num?)?.toInt();

Map<String, dynamic> _$CancelSubscriptionResponseToJson(
  CancelSubscriptionResponse instance,
) => <String, dynamic>{
  'ok': instance.ok,
  'status': instance.status,
  'message': instance.message,
  'phoneE164': instance.phoneE164,
  'cooldownSeconds': instance.cooldownSeconds,
  'data': instance.data,
};
