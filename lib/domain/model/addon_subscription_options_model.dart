import 'package:equatable/equatable.dart';

class AddonSubscriptionOptionsModel extends Equatable {
  final String planId;
  final List<AddonSubscriptionOptionModel> addons;

  const AddonSubscriptionOptionsModel({
    required this.planId,
    required this.addons,
  });

  @override
  List<Object?> get props => [planId, addons];
}

class AddonSubscriptionOptionModel extends Equatable {
  final String id;
  final String addonPlanId;
  final LocalizedNameModel name;
  final String category;
  final int maxPerDay;
  final String pricingMode;
  final int priceHalala;
  final double priceSar;
  final String priceLabel;
  final String currency;
  final bool isAvailable;
  final List<String> menuProductIds;
  final int menuProductsCount;
  final List<AddonMenuProductModel> menuProducts;

  const AddonSubscriptionOptionModel({
    required this.id,
    required this.addonPlanId,
    required this.name,
    required this.category,
    required this.maxPerDay,
    required this.pricingMode,
    required this.priceHalala,
    required this.priceSar,
    required this.priceLabel,
    required this.currency,
    required this.isAvailable,
    required this.menuProductIds,
    required this.menuProductsCount,
    required this.menuProducts,
  });

  String localizedName(String languageCode) => name.localized(languageCode);

  @override
  List<Object?> get props => [
    id,
    addonPlanId,
    name,
    category,
    maxPerDay,
    pricingMode,
    priceHalala,
    priceSar,
    priceLabel,
    currency,
    isAvailable,
    menuProductIds,
    menuProductsCount,
    menuProducts,
  ];
}

class AddonMenuProductModel extends Equatable {
  final String id;
  final LocalizedNameModel name;
  final String image;
  final String category;
  final bool isActive;

  const AddonMenuProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.category,
    required this.isActive,
  });

  String localizedName(String languageCode) => name.localized(languageCode);

  @override
  List<Object?> get props => [id, name, image, category, isActive];
}

class LocalizedNameModel extends Equatable {
  final String ar;
  final String en;

  const LocalizedNameModel({required this.ar, required this.en});

  String localized(String languageCode) {
    final preferred = languageCode == 'ar' ? ar : en;
    if (preferred.isNotEmpty) return preferred;
    return languageCode == 'ar' ? en : ar;
  }

  @override
  List<Object?> get props => [ar, en];
}
