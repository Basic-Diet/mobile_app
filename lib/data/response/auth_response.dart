import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthenticationResponse {
  @JsonKey(name: "ok")
  final bool? ok;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "accessToken")
  final String? accessToken;
  @JsonKey(name: "refreshToken")
  final String? refreshToken;
  @JsonKey(name: "expiresIn")
  final int? expiresIn;
  @JsonKey(name: "refreshExpiresIn")
  final int? refreshExpiresIn;
  @JsonKey(name: "user")
  final AuthUserResponse? user;

  const AuthenticationResponse({
    this.ok,
    this.status,
    this.accessToken,
    this.refreshToken,
    this.expiresIn,
    this.refreshExpiresIn,
    this.user,
  });

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}

@JsonSerializable()
class AuthUserResponse {
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "phoneE164")
  final String? phoneE164;
  @JsonKey(name: "phoneVerified")
  final bool? phoneVerified;

  const AuthUserResponse({this.id, this.phoneE164, this.phoneVerified});

  factory AuthUserResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserResponseToJson(this);
}
