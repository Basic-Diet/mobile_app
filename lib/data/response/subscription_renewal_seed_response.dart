import 'package:json_annotation/json_annotation.dart';

part 'subscription_renewal_seed_response.g.dart';

@JsonSerializable()
class SubscriptionRenewalSeedResponse {
  @JsonKey(name: 'status')
  dynamic status;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'data')
  Map<String, dynamic>? data;

  SubscriptionRenewalSeedResponse({this.status, this.message, this.data});

  factory SubscriptionRenewalSeedResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionRenewalSeedResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubscriptionRenewalSeedResponseToJson(this);
}
