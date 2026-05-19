class ClientProfileModel {
  final bool status;
  final ClientProfileDataModel? data;

  const ClientProfileModel({this.status = false, this.data});
}

class ClientProfileDataModel {
  final ClientProfileUserModel user;
  final ClientSubscriptionSummaryModel subscriptionSummary;
  final ClientProfileMenuModel profileMenu;

  const ClientProfileDataModel({
    this.user = const ClientProfileUserModel(),
    this.subscriptionSummary = const ClientSubscriptionSummaryModel(),
    this.profileMenu = const ClientProfileMenuModel(),
  });
}

class ClientProfileUserModel {
  final String id;
  final String displayName;
  final String phone;
  final String email;
  final String avatarUrl;

  const ClientProfileUserModel({
    this.id = '',
    this.displayName = '',
    this.phone = '',
    this.email = '',
    this.avatarUrl = '',
  });
}

class ClientSubscriptionSummaryModel {
  final bool hasActiveSubscription;
  final String planName;
  final String status;
  final String statusLabelAr;
  final int remainingMeals;
  final int totalMeals;

  const ClientSubscriptionSummaryModel({
    this.hasActiveSubscription = false,
    this.planName = '',
    this.status = '',
    this.statusLabelAr = '',
    this.remainingMeals = 0,
    this.totalMeals = 0,
  });
}

class ClientProfileMenuModel {
  final ClientProfileCounterItemModel orders;
  final ClientProfileCounterItemModel addresses;
  final ClientProfileLanguageItemModel language;
  final ClientProfileSupportItemModel support;
  final ClientProfileLegalItemModel legal;

  const ClientProfileMenuModel({
    this.orders = const ClientProfileCounterItemModel(),
    this.addresses = const ClientProfileCounterItemModel(),
    this.language = const ClientProfileLanguageItemModel(),
    this.support = const ClientProfileSupportItemModel(),
    this.legal = const ClientProfileLegalItemModel(),
  });
}

class ClientProfileCounterItemModel {
  final String labelAr;
  final int count;

  const ClientProfileCounterItemModel({this.labelAr = '', this.count = 0});
}

class ClientProfileLanguageItemModel {
  final String labelAr;
  final String current;
  final String code;

  const ClientProfileLanguageItemModel({
    this.labelAr = '',
    this.current = '',
    this.code = '',
  });
}

class ClientProfileSupportItemModel {
  final String labelAr;
  final String phone;
  final String whatsapp;
  final String email;

  const ClientProfileSupportItemModel({
    this.labelAr = '',
    this.phone = '',
    this.whatsapp = '',
    this.email = '',
  });

  bool get hasContact =>
      phone.trim().isNotEmpty ||
      whatsapp.trim().isNotEmpty ||
      email.trim().isNotEmpty;
}

class ClientProfileLegalItemModel {
  final String labelAr;
  final String termsUrl;
  final String privacyUrl;

  const ClientProfileLegalItemModel({
    this.labelAr = '',
    this.termsUrl = '',
    this.privacyUrl = '',
  });

  bool get hasLinks =>
      termsUrl.trim().isNotEmpty || privacyUrl.trim().isNotEmpty;
}
