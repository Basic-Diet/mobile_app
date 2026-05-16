// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skip_days_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkipDaysResponse _$SkipDaysResponseFromJson(Map<String, dynamic> json) =>
    SkipDaysResponse(json['data'] as Map<String, dynamic>?)
      ..ok = json['ok'] as bool?
      ..status = json['status']
      ..message = json['message'] as String?
      ..phoneE164 = json['phoneE164'] as String?
      ..cooldownSeconds = (json['cooldownSeconds'] as num?)?.toInt();

Map<String, dynamic> _$SkipDaysResponseToJson(SkipDaysResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'status': instance.status,
      'message': instance.message,
      'phoneE164': instance.phoneE164,
      'cooldownSeconds': instance.cooldownSeconds,
      'data': instance.data,
    };
