import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/app/extensions.dart';
import 'package:basic_diet/data/response/client_profile_response.dart';
import 'package:basic_diet/domain/model/client_profile_model.dart';

extension ClientProfileResponseMapper on ClientProfileResponse? {
  ClientProfileModel toDomain() {
    return ClientProfileModel(
      status: this?.status ?? false,
      data: this?.data.toDomain(),
    );
  }
}

extension ClientProfileDataResponseMapper on ClientProfileDataResponse? {
  ClientProfileDataModel toDomain() {
    return ClientProfileDataModel(
      user: this?.user.toDomain() ?? const ClientProfileUserModel(),
      subscriptionSummary:
          this?.subscriptionSummary.toDomain() ??
          const ClientSubscriptionSummaryModel(),
      profileMenu:
          this?.profileMenu.toDomain() ?? const ClientProfileMenuModel(),
    );
  }
}

extension ClientProfileUserResponseMapper on ClientProfileUserResponse? {
  ClientProfileUserModel toDomain() {
    return ClientProfileUserModel(
      id: this?.id.orEmpty() ?? Constants.empty,
      displayName: this?.displayName.orEmpty() ?? Constants.empty,
      phone: this?.phone.orEmpty() ?? Constants.empty,
      email: this?.email.orEmpty() ?? Constants.empty,
      avatarUrl: this?.avatarUrl.orEmpty() ?? Constants.empty,
    );
  }
}

extension ClientSubscriptionSummaryResponseMapper
    on ClientSubscriptionSummaryResponse? {
  ClientSubscriptionSummaryModel toDomain() {
    return ClientSubscriptionSummaryModel(
      hasActiveSubscription: this?.hasActiveSubscription ?? false,
      planName: this?.planName.orEmpty() ?? Constants.empty,
      status: this?.status.orEmpty() ?? Constants.empty,
      statusLabelAr: this?.statusLabelAr.orEmpty() ?? Constants.empty,
      remainingMeals: this?.remainingMeals.orZero() ?? Constants.zero,
      totalMeals: this?.totalMeals.orZero() ?? Constants.zero,
    );
  }
}

extension ClientProfileMenuResponseMapper on ClientProfileMenuResponse? {
  ClientProfileMenuModel toDomain() {
    return ClientProfileMenuModel(
      orders:
          this?.orders.toDomain() ?? const ClientProfileCounterItemModel(),
      addresses:
          this?.addresses.toDomain() ?? const ClientProfileCounterItemModel(),
      language:
          this?.language.toDomain() ?? const ClientProfileLanguageItemModel(),
      support:
          this?.support.toDomain() ?? const ClientProfileSupportItemModel(),
      legal: this?.legal.toDomain() ?? const ClientProfileLegalItemModel(),
    );
  }
}

extension ClientProfileCounterItemResponseMapper
    on ClientProfileCounterItemResponse? {
  ClientProfileCounterItemModel toDomain() {
    return ClientProfileCounterItemModel(
      labelAr: this?.labelAr.orEmpty() ?? Constants.empty,
      count: this?.count.orZero() ?? Constants.zero,
    );
  }
}

extension ClientProfileLanguageItemResponseMapper
    on ClientProfileLanguageItemResponse? {
  ClientProfileLanguageItemModel toDomain() {
    return ClientProfileLanguageItemModel(
      labelAr: this?.labelAr.orEmpty() ?? Constants.empty,
      current: this?.current.orEmpty() ?? Constants.empty,
      code: this?.code.orEmpty() ?? Constants.empty,
    );
  }
}

extension ClientProfileSupportItemResponseMapper
    on ClientProfileSupportItemResponse? {
  ClientProfileSupportItemModel toDomain() {
    return ClientProfileSupportItemModel(
      labelAr: this?.labelAr.orEmpty() ?? Constants.empty,
      phone: this?.phone.orEmpty() ?? Constants.empty,
      whatsapp: this?.whatsapp.orEmpty() ?? Constants.empty,
      email: this?.email.orEmpty() ?? Constants.empty,
    );
  }
}

extension ClientProfileLegalItemResponseMapper on ClientProfileLegalItemResponse? {
  ClientProfileLegalItemModel toDomain() {
    return ClientProfileLegalItemModel(
      labelAr: this?.labelAr.orEmpty() ?? Constants.empty,
      termsUrl: this?.termsUrl.orEmpty() ?? Constants.empty,
      privacyUrl: this?.privacyUrl.orEmpty() ?? Constants.empty,
    );
  }
}
