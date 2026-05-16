// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
  ok: json['ok'] as bool?,
  status: json['status'],
  message: json['message'] as String?,
  phoneE164: json['phoneE164'] as String?,
  cooldownSeconds: (json['cooldownSeconds'] as num?)?.toInt(),
);

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'status': instance.status,
      'message': instance.message,
      'phoneE164': instance.phoneE164,
      'cooldownSeconds': instance.cooldownSeconds,
    };
