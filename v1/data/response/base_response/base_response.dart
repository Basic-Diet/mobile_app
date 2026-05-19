import 'package:json_annotation/json_annotation.dart';
part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "ok")
  bool? ok;
  @JsonKey(name: "status")
  dynamic status;
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "phoneE164")
  String? phoneE164;
  @JsonKey(name: "cooldownSeconds")
  int? cooldownSeconds;

  BaseResponse({
    this.ok,
    this.status,
    this.message,
    this.phoneE164,
    this.cooldownSeconds,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
