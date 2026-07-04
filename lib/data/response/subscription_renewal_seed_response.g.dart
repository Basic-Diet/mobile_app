// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_renewal_seed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionRenewalSeedResponse _$SubscriptionRenewalSeedResponseFromJson(
  Map<String, dynamic> json,
) => SubscriptionRenewalSeedResponse(
  status: json['status'],
  message: json['message'] as String?,
  data: json['data'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$SubscriptionRenewalSeedResponseToJson(
  SubscriptionRenewalSeedResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};
