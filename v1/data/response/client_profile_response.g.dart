// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientProfileResponse _$ClientProfileResponseFromJson(
  Map<String, dynamic> json,
) => ClientProfileResponse(
  ok: json['ok'] as bool?,
  status: json['status'] as bool?,
  data:
      json['data'] == null
          ? null
          : ClientProfileDataResponse.fromJson(
            json['data'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$ClientProfileResponseToJson(
  ClientProfileResponse instance,
) => <String, dynamic>{
  'ok': instance.ok,
  'status': instance.status,
  'data': instance.data,
};

ClientProfileDataResponse _$ClientProfileDataResponseFromJson(
  Map<String, dynamic> json,
) => ClientProfileDataResponse(
  user:
      json['user'] == null
          ? null
          : ClientProfileUserResponse.fromJson(
            json['user'] as Map<String, dynamic>,
          ),
  subscriptionSummary:
      json['subscriptionSummary'] == null
          ? null
          : ClientSubscriptionSummaryResponse.fromJson(
            json['subscriptionSummary'] as Map<String, dynamic>,
          ),
  profileMenu:
      json['profileMenu'] == null
          ? null
          : ClientProfileMenuResponse.fromJson(
            json['profileMenu'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$ClientProfileDataResponseToJson(
  ClientProfileDataResponse instance,
) => <String, dynamic>{
  'user': instance.user,
  'subscriptionSummary': instance.subscriptionSummary,
  'profileMenu': instance.profileMenu,
};

ClientProfileUserResponse _$ClientProfileUserResponseFromJson(
  Map<String, dynamic> json,
) => ClientProfileUserResponse(
  id: json['id'] as String?,
  displayName: json['displayName'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
);

Map<String, dynamic> _$ClientProfileUserResponseToJson(
  ClientProfileUserResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'displayName': instance.displayName,
  'email': instance.email,
  'phone': instance.phone,
  'avatarUrl': instance.avatarUrl,
};

ClientSubscriptionSummaryResponse _$ClientSubscriptionSummaryResponseFromJson(
  Map<String, dynamic> json,
) => ClientSubscriptionSummaryResponse(
  hasActiveSubscription: json['hasActiveSubscription'] as bool?,
  planName: json['planName'] as String?,
  status: json['status'] as String?,
  statusLabelAr: json['statusLabelAr'] as String?,
  remainingMeals: (json['remainingMeals'] as num?)?.toInt(),
  totalMeals: (json['totalMeals'] as num?)?.toInt(),
);

Map<String, dynamic> _$ClientSubscriptionSummaryResponseToJson(
  ClientSubscriptionSummaryResponse instance,
) => <String, dynamic>{
  'hasActiveSubscription': instance.hasActiveSubscription,
  'planName': instance.planName,
  'status': instance.status,
  'statusLabelAr': instance.statusLabelAr,
  'remainingMeals': instance.remainingMeals,
  'totalMeals': instance.totalMeals,
};

ClientProfileMenuResponse _$ClientProfileMenuResponseFromJson(
  Map<String, dynamic> json,
) => ClientProfileMenuResponse(
  orders:
      json['orders'] == null
          ? null
          : ClientProfileCounterItemResponse.fromJson(
            json['orders'] as Map<String, dynamic>,
          ),
  addresses:
      json['addresses'] == null
          ? null
          : ClientProfileCounterItemResponse.fromJson(
            json['addresses'] as Map<String, dynamic>,
          ),
  language:
      json['language'] == null
          ? null
          : ClientProfileLanguageItemResponse.fromJson(
            json['language'] as Map<String, dynamic>,
          ),
  support:
      json['support'] == null
          ? null
          : ClientProfileSupportItemResponse.fromJson(
            json['support'] as Map<String, dynamic>,
          ),
  legal:
      json['legal'] == null
          ? null
          : ClientProfileLegalItemResponse.fromJson(
            json['legal'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$ClientProfileMenuResponseToJson(
  ClientProfileMenuResponse instance,
) => <String, dynamic>{
  'orders': instance.orders,
  'addresses': instance.addresses,
  'language': instance.language,
  'support': instance.support,
  'legal': instance.legal,
};

ClientProfileCounterItemResponse _$ClientProfileCounterItemResponseFromJson(
  Map<String, dynamic> json,
) => ClientProfileCounterItemResponse(
  labelAr: json['labelAr'] as String?,
  count: (json['count'] as num?)?.toInt(),
);

Map<String, dynamic> _$ClientProfileCounterItemResponseToJson(
  ClientProfileCounterItemResponse instance,
) => <String, dynamic>{'labelAr': instance.labelAr, 'count': instance.count};

ClientProfileLanguageItemResponse _$ClientProfileLanguageItemResponseFromJson(
  Map<String, dynamic> json,
) => ClientProfileLanguageItemResponse(
  labelAr: json['labelAr'] as String?,
  current: json['current'] as String?,
  code: json['code'] as String?,
);

Map<String, dynamic> _$ClientProfileLanguageItemResponseToJson(
  ClientProfileLanguageItemResponse instance,
) => <String, dynamic>{
  'labelAr': instance.labelAr,
  'current': instance.current,
  'code': instance.code,
};

ClientProfileSupportItemResponse _$ClientProfileSupportItemResponseFromJson(
  Map<String, dynamic> json,
) => ClientProfileSupportItemResponse(
  labelAr: json['labelAr'] as String?,
  phone: json['phone'] as String?,
  whatsapp: json['whatsapp'] as String?,
  email: json['email'] as String?,
);

Map<String, dynamic> _$ClientProfileSupportItemResponseToJson(
  ClientProfileSupportItemResponse instance,
) => <String, dynamic>{
  'labelAr': instance.labelAr,
  'phone': instance.phone,
  'whatsapp': instance.whatsapp,
  'email': instance.email,
};

ClientProfileLegalItemResponse _$ClientProfileLegalItemResponseFromJson(
  Map<String, dynamic> json,
) => ClientProfileLegalItemResponse(
  labelAr: json['labelAr'] as String?,
  termsUrl: json['termsUrl'] as String?,
  privacyUrl: json['privacyUrl'] as String?,
);

Map<String, dynamic> _$ClientProfileLegalItemResponseToJson(
  ClientProfileLegalItemResponse instance,
) => <String, dynamic>{
  'labelAr': instance.labelAr,
  'termsUrl': instance.termsUrl,
  'privacyUrl': instance.privacyUrl,
};
