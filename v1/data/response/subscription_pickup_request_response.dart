import 'package:basic_diet/data/response/base_response/base_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_pickup_request_response.g.dart';

@JsonSerializable()
class SubscriptionPickupRequestResponse {
  @JsonKey(name: 'requestId')
  final String? requestId;
  @JsonKey(name: 'entityId')
  final String? entityId;
  @JsonKey(name: 'subscriptionId')
  final String? subscriptionId;
  @JsonKey(name: 'subscriptionDayId')
  final String? subscriptionDayId;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'mealCount')
  final int? mealCount;
  @JsonKey(name: 'currentStep')
  final int? currentStep;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'statusLabel')
  final String? statusLabel;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'isReady')
  final bool? isReady;
  @JsonKey(name: 'isCompleted')
  final bool? isCompleted;
  @JsonKey(name: 'pickupCode')
  final String? pickupCode;
  @JsonKey(name: 'pickupCodeIssuedAt')
  final String? pickupCodeIssuedAt;
  @JsonKey(name: 'fulfilledAt')
  final String? fulfilledAt;
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @JsonKey(name: 'creditsReserved')
  final bool? creditsReserved;
  @JsonKey(name: 'idempotent')
  final bool? idempotent;
  @JsonKey(name: 'nextAction')
  final String? nextAction;

  const SubscriptionPickupRequestResponse({
    this.requestId,
    this.entityId,
    this.subscriptionId,
    this.subscriptionDayId,
    this.date,
    this.mealCount,
    this.currentStep,
    this.status,
    this.statusLabel,
    this.message,
    this.isReady,
    this.isCompleted,
    this.pickupCode,
    this.pickupCodeIssuedAt,
    this.fulfilledAt,
    this.createdAt,
    this.creditsReserved,
    this.idempotent,
    this.nextAction,
  });

  factory SubscriptionPickupRequestResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$SubscriptionPickupRequestResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubscriptionPickupRequestResponseToJson(this);
}

@JsonSerializable()
class SubscriptionPickupRequestListDataResponse {
  @JsonKey(name: 'requests')
  final List<SubscriptionPickupRequestResponse>? requests;

  const SubscriptionPickupRequestListDataResponse({this.requests});

  factory SubscriptionPickupRequestListDataResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$SubscriptionPickupRequestListDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubscriptionPickupRequestListDataResponseToJson(this);
}

@JsonSerializable()
class SubscriptionPickupRequestApiResponse extends BaseResponse {
  @JsonKey(name: 'data')
  final SubscriptionPickupRequestResponse? data;

  SubscriptionPickupRequestApiResponse(this.data);

  factory SubscriptionPickupRequestApiResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$SubscriptionPickupRequestApiResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionPickupRequestApiResponseToJson(this);
}

@JsonSerializable()
class SubscriptionPickupRequestListApiResponse extends BaseResponse {
  @JsonKey(name: 'data')
  final SubscriptionPickupRequestListDataResponse? data;

  SubscriptionPickupRequestListApiResponse(this.data);

  factory SubscriptionPickupRequestListApiResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$SubscriptionPickupRequestListApiResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionPickupRequestListApiResponseToJson(this);
}
