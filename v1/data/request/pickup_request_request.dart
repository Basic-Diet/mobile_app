import 'package:json_annotation/json_annotation.dart';

part 'pickup_request_request.g.dart';

@JsonSerializable()
class PickupRequestRequest {
  @JsonKey(name: 'date')
  final String date;

  @JsonKey(name: 'mealCount')
  final int mealCount;

  @JsonKey(name: 'idempotencyKey')
  final String? idempotencyKey;

  const PickupRequestRequest({
    required this.date,
    required this.mealCount,
    this.idempotencyKey,
  });

  factory PickupRequestRequest.fromJson(Map<String, dynamic> json) =>
      _$PickupRequestRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PickupRequestRequestToJson(this);
}
