// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationResponse _$AuthenticationResponseFromJson(
  Map<String, dynamic> json,
) => AuthenticationResponse(
  ok: json['ok'] as bool?,
  status: json['status'] as String?,
  accessToken: json['accessToken'] as String?,
  refreshToken: json['refreshToken'] as String?,
  expiresIn: (json['expiresIn'] as num?)?.toInt(),
  refreshExpiresIn: (json['refreshExpiresIn'] as num?)?.toInt(),
  user:
      json['user'] == null
          ? null
          : AuthUserResponse.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuthenticationResponseToJson(
  AuthenticationResponse instance,
) => <String, dynamic>{
  'ok': instance.ok,
  'status': instance.status,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'expiresIn': instance.expiresIn,
  'refreshExpiresIn': instance.refreshExpiresIn,
  'user': instance.user,
};

AuthUserResponse _$AuthUserResponseFromJson(Map<String, dynamic> json) =>
    AuthUserResponse(
      id: json['id'] as String?,
      phoneE164: json['phoneE164'] as String?,
      phoneVerified: json['phoneVerified'] as bool?,
    );

Map<String, dynamic> _$AuthUserResponseToJson(AuthUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneE164': instance.phoneE164,
      'phoneVerified': instance.phoneVerified,
    };
