import 'package:json_annotation/json_annotation.dart';

part 'client_profile_response.g.dart';

@JsonSerializable()
class ClientProfileResponse {
  @JsonKey(name: 'ok')
  final bool? ok;
  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'data')
  final ClientProfileDataResponse? data;

  const ClientProfileResponse({this.ok, this.status, this.data});

  factory ClientProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClientProfileResponseToJson(this);
}

@JsonSerializable()
class ClientProfileDataResponse {
  @JsonKey(name: 'user')
  final ClientProfileUserResponse? user;
  @JsonKey(name: 'subscriptionSummary')
  final ClientSubscriptionSummaryResponse? subscriptionSummary;
  @JsonKey(name: 'profileMenu')
  final ClientProfileMenuResponse? profileMenu;

  const ClientProfileDataResponse({
    this.user,
    this.subscriptionSummary,
    this.profileMenu,
  });

  factory ClientProfileDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientProfileDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClientProfileDataResponseToJson(this);
}

@JsonSerializable()
class ClientProfileUserResponse {
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'displayName')
  final String? displayName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;

  const ClientProfileUserResponse({
    this.id,
    this.displayName,
    this.email,
    this.phone,
    this.avatarUrl,
  });

  factory ClientProfileUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientProfileUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClientProfileUserResponseToJson(this);
}

@JsonSerializable()
class ClientSubscriptionSummaryResponse {
  @JsonKey(name: 'hasActiveSubscription')
  final bool? hasActiveSubscription;
  @JsonKey(name: 'planName')
  final String? planName;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'statusLabelAr')
  final String? statusLabelAr;
  @JsonKey(name: 'remainingMeals')
  final int? remainingMeals;
  @JsonKey(name: 'totalMeals')
  final int? totalMeals;

  const ClientSubscriptionSummaryResponse({
    this.hasActiveSubscription,
    this.planName,
    this.status,
    this.statusLabelAr,
    this.remainingMeals,
    this.totalMeals,
  });

  factory ClientSubscriptionSummaryResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ClientSubscriptionSummaryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClientSubscriptionSummaryResponseToJson(this);
}

@JsonSerializable()
class ClientProfileMenuResponse {
  @JsonKey(name: 'orders')
  final ClientProfileCounterItemResponse? orders;
  @JsonKey(name: 'addresses')
  final ClientProfileCounterItemResponse? addresses;
  @JsonKey(name: 'language')
  final ClientProfileLanguageItemResponse? language;
  @JsonKey(name: 'support')
  final ClientProfileSupportItemResponse? support;
  @JsonKey(name: 'legal')
  final ClientProfileLegalItemResponse? legal;

  const ClientProfileMenuResponse({
    this.orders,
    this.addresses,
    this.language,
    this.support,
    this.legal,
  });

  factory ClientProfileMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientProfileMenuResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClientProfileMenuResponseToJson(this);
}

@JsonSerializable()
class ClientProfileCounterItemResponse {
  @JsonKey(name: 'labelAr')
  final String? labelAr;
  @JsonKey(name: 'count')
  final int? count;

  const ClientProfileCounterItemResponse({this.labelAr, this.count});

  factory ClientProfileCounterItemResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ClientProfileCounterItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClientProfileCounterItemResponseToJson(this);
}

@JsonSerializable()
class ClientProfileLanguageItemResponse {
  @JsonKey(name: 'labelAr')
  final String? labelAr;
  @JsonKey(name: 'current')
  final String? current;
  @JsonKey(name: 'code')
  final String? code;

  const ClientProfileLanguageItemResponse({
    this.labelAr,
    this.current,
    this.code,
  });

  factory ClientProfileLanguageItemResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ClientProfileLanguageItemResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ClientProfileLanguageItemResponseToJson(this);
}

@JsonSerializable()
class ClientProfileSupportItemResponse {
  @JsonKey(name: 'labelAr')
  final String? labelAr;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'whatsapp')
  final String? whatsapp;
  @JsonKey(name: 'email')
  final String? email;

  const ClientProfileSupportItemResponse({
    this.labelAr,
    this.phone,
    this.whatsapp,
    this.email,
  });

  factory ClientProfileSupportItemResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$ClientProfileSupportItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClientProfileSupportItemResponseToJson(this);
}

@JsonSerializable()
class ClientProfileLegalItemResponse {
  @JsonKey(name: 'labelAr')
  final String? labelAr;
  @JsonKey(name: 'termsUrl')
  final String? termsUrl;
  @JsonKey(name: 'privacyUrl')
  final String? privacyUrl;

  const ClientProfileLegalItemResponse({
    this.labelAr,
    this.termsUrl,
    this.privacyUrl,
  });

  factory ClientProfileLegalItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientProfileLegalItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClientProfileLegalItemResponseToJson(this);
}
