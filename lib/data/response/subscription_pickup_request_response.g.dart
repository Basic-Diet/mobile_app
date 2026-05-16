// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_pickup_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionPickupRequestResponse _$SubscriptionPickupRequestResponseFromJson(
  Map<String, dynamic> json,
) => SubscriptionPickupRequestResponse(
  requestId: json['requestId'] as String?,
  entityId: json['entityId'] as String?,
  subscriptionId: json['subscriptionId'] as String?,
  subscriptionDayId: json['subscriptionDayId'] as String?,
  date: json['date'] as String?,
  mealCount: (json['mealCount'] as num?)?.toInt(),
  currentStep: (json['currentStep'] as num?)?.toInt(),
  status: json['status'] as String?,
  statusLabel: json['statusLabel'] as String?,
  message: json['message'] as String?,
  isReady: json['isReady'] as bool?,
  isCompleted: json['isCompleted'] as bool?,
  pickupCode: json['pickupCode'] as String?,
  pickupCodeIssuedAt: json['pickupCodeIssuedAt'] as String?,
  fulfilledAt: json['fulfilledAt'] as String?,
  createdAt: json['createdAt'] as String?,
  creditsReserved: json['creditsReserved'] as bool?,
  idempotent: json['idempotent'] as bool?,
  nextAction: json['nextAction'] as String?,
);

Map<String, dynamic> _$SubscriptionPickupRequestResponseToJson(
  SubscriptionPickupRequestResponse instance,
) => <String, dynamic>{
  'requestId': instance.requestId,
  'entityId': instance.entityId,
  'subscriptionId': instance.subscriptionId,
  'subscriptionDayId': instance.subscriptionDayId,
  'date': instance.date,
  'mealCount': instance.mealCount,
  'currentStep': instance.currentStep,
  'status': instance.status,
  'statusLabel': instance.statusLabel,
  'message': instance.message,
  'isReady': instance.isReady,
  'isCompleted': instance.isCompleted,
  'pickupCode': instance.pickupCode,
  'pickupCodeIssuedAt': instance.pickupCodeIssuedAt,
  'fulfilledAt': instance.fulfilledAt,
  'createdAt': instance.createdAt,
  'creditsReserved': instance.creditsReserved,
  'idempotent': instance.idempotent,
  'nextAction': instance.nextAction,
};

SubscriptionPickupRequestListDataResponse
_$SubscriptionPickupRequestListDataResponseFromJson(
  Map<String, dynamic> json,
) => SubscriptionPickupRequestListDataResponse(
  requests:
      (json['requests'] as List<dynamic>?)
          ?.map(
            (e) => SubscriptionPickupRequestResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$SubscriptionPickupRequestListDataResponseToJson(
  SubscriptionPickupRequestListDataResponse instance,
) => <String, dynamic>{'requests': instance.requests};

SubscriptionPickupRequestApiResponse
_$SubscriptionPickupRequestApiResponseFromJson(Map<String, dynamic> json) =>
    SubscriptionPickupRequestApiResponse(
        json['data'] == null
            ? null
            : SubscriptionPickupRequestResponse.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      )
      ..ok = json['ok'] as bool?
      ..status = json['status']
      ..message = json['message'] as String?
      ..phoneE164 = json['phoneE164'] as String?
      ..cooldownSeconds = (json['cooldownSeconds'] as num?)?.toInt();

Map<String, dynamic> _$SubscriptionPickupRequestApiResponseToJson(
  SubscriptionPickupRequestApiResponse instance,
) => <String, dynamic>{
  'ok': instance.ok,
  'status': instance.status,
  'message': instance.message,
  'phoneE164': instance.phoneE164,
  'cooldownSeconds': instance.cooldownSeconds,
  'data': instance.data,
};

SubscriptionPickupRequestListApiResponse
_$SubscriptionPickupRequestListApiResponseFromJson(Map<String, dynamic> json) =>
    SubscriptionPickupRequestListApiResponse(
        json['data'] == null
            ? null
            : SubscriptionPickupRequestListDataResponse.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
      )
      ..ok = json['ok'] as bool?
      ..status = json['status']
      ..message = json['message'] as String?
      ..phoneE164 = json['phoneE164'] as String?
      ..cooldownSeconds = (json['cooldownSeconds'] as num?)?.toInt();

Map<String, dynamic> _$SubscriptionPickupRequestListApiResponseToJson(
  SubscriptionPickupRequestListApiResponse instance,
) => <String, dynamic>{
  'ok': instance.ok,
  'status': instance.status,
  'message': instance.message,
  'phoneE164': instance.phoneE164,
  'cooldownSeconds': instance.cooldownSeconds,
  'data': instance.data,
};
