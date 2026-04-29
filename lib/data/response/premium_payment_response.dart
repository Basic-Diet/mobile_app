import 'package:json_annotation/json_annotation.dart';

part 'premium_payment_response.g.dart';

@JsonSerializable()
class PremiumPaymentResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'data')
  final PremiumPaymentDataResponse? data;

  PremiumPaymentResponse({this.status, this.data});

  factory PremiumPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PremiumPaymentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PremiumPaymentResponseToJson(this);
}

@JsonSerializable()
class PremiumPaymentDataResponse {
  @JsonKey(name: 'paymentId')
  final String? paymentId;

  @JsonKey(name: 'payment_url')
  final String? paymentUrl;

  @JsonKey(name: 'amountHalala')
  final int? amountHalala;

  @JsonKey(name: 'currency')
  final String? currency;

  @JsonKey(name: 'reused')
  final bool? reused;

  PremiumPaymentDataResponse({
    this.paymentId,
    this.paymentUrl,
    this.amountHalala,
    this.currency,
    this.reused,
  });

  factory PremiumPaymentDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PremiumPaymentDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PremiumPaymentDataResponseToJson(this);
}

@JsonSerializable()
class PremiumPaymentVerificationResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'data')
  final PremiumPaymentVerificationData? data;

  PremiumPaymentVerificationResponse({this.status, this.data});

  factory PremiumPaymentVerificationResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PremiumPaymentVerificationResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PremiumPaymentVerificationResponseToJson(this);
}

@JsonSerializable()
class PremiumPaymentVerificationData {
  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'applied')
  final bool? applied;

  @JsonKey(name: 'isFinal')
  final bool? isFinal;

  PremiumPaymentVerificationData({
    this.paymentStatus,
    this.message,
    this.applied,
    this.isFinal,
  });

  factory PremiumPaymentVerificationData.fromJson(Map<String, dynamic> json) =>
      _$PremiumPaymentVerificationDataFromJson(json);

  Map<String, dynamic> toJson() => _$PremiumPaymentVerificationDataToJson(this);
}
