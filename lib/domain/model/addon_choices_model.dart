import 'package:equatable/equatable.dart';

class AddonChoicesModel extends Equatable {
  final List<AddonChoiceCategoryModel> categories;

  const AddonChoicesModel({this.categories = const []});

  bool get isEmpty => categories.isEmpty;

  Map<String, AddonChoiceCategoryModel> get categoriesByKey {
    return {
      for (final category in categories)
        (category.groupKey.isNotEmpty ? category.groupKey : category.category):
            category,
    };
  }

  @override
  List<Object?> get props => [categories];
}

class AddonChoiceCategoryModel extends Equatable {
  final String groupKey;
  final String groupId;
  final String addonPlanId;
  final String label;
  final String displayCategory;
  final String allowanceCategory;
  final String category;
  final List<String> sourceCategories;
  final List<AddonChoiceModel> choices;

  const AddonChoiceCategoryModel({
    this.groupKey = '',
    this.groupId = '',
    this.addonPlanId = '',
    this.label = '',
    this.displayCategory = '',
    this.allowanceCategory = '',
    required this.category,
    this.sourceCategories = const [],
    this.choices = const [],
  });

  @override
  List<Object?> get props => [
    groupKey,
    groupId,
    addonPlanId,
    label,
    displayCategory,
    allowanceCategory,
    category,
    sourceCategories,
    choices,
  ];
}

class AddonChoiceModel extends Equatable {
  final String id;
  final String rawId;
  final String productId;
  final String menuProductId;
  final String key;
  final String name;
  final String nameAr;
  final Map<String, String> nameI18n;
  final int priceHalala;
  final double priceSar;
  final String currency;
  final int? calories;
  final int? prepTimeMinutes;
  final String categoryKey;
  final String category;
  final String allowanceCategory;
  final String itemType;
  final String type;
  final bool available;
  final bool active;
  final String source;
  final bool? isEligibleForAllowance;
  final int includedTotalQty;
  final int remainingQty;
  final int freeQtyAvailable;
  final int requestedQty;
  final int coveredQty;
  final int paidQty;
  final int remainingBefore;
  final int remainingAfter;
  final int payableTotalHalala;
  final int unitPriceHalala;
  final String pricingMode;
  final bool? availableForNewSale;
  final bool legacyRecovered;
  final String entitlementKey;
  final String balanceBucketId;
  final String addonPlanId;
  final int? maxPerDay;
  final Map<String, dynamic> ui;

  const AddonChoiceModel({
    required this.id,
    this.rawId = '',
    this.productId = '',
    this.menuProductId = '',
    required this.key,
    required this.name,
    required this.nameAr,
    required this.nameI18n,
    required this.priceHalala,
    required this.priceSar,
    required this.currency,
    required this.calories,
    required this.prepTimeMinutes,
    required this.categoryKey,
    this.category = '',
    this.allowanceCategory = '',
    required this.itemType,
    required this.type,
    required this.available,
    required this.active,
    this.source = '',
    this.isEligibleForAllowance,
    this.includedTotalQty = 0,
    this.remainingQty = 0,
    this.freeQtyAvailable = 0,
    this.requestedQty = 0,
    this.coveredQty = 0,
    this.paidQty = 0,
    this.remainingBefore = 0,
    this.remainingAfter = 0,
    this.payableTotalHalala = 0,
    this.unitPriceHalala = 0,
    this.pricingMode = '',
    this.availableForNewSale,
    this.legacyRecovered = false,
    this.entitlementKey = '',
    this.balanceBucketId = '',
    this.addonPlanId = '',
    this.maxPerDay,
    required this.ui,
  });

  bool get isSelectable => available && active;

  bool get hasAuthoritativePricing =>
      pricingMode.isNotEmpty ||
      coveredQty > 0 ||
      paidQty > 0 ||
      payableTotalHalala > 0 ||
      source.isNotEmpty;

  bool get isIncludedByBackend =>
      coveredQty > 0 || pricingMode == 'allowance_covered';

  bool get isPayableByBackend =>
      paidQty > 0 ||
      payableTotalHalala > 0 ||
      pricingMode == 'paid_no_entitlement' ||
      pricingMode == 'paid_overage' ||
      pricingMode == 'allowance_partial';

  int get displayPriceHalala =>
      payableTotalHalala > 0
          ? payableTotalHalala
          : unitPriceHalala > 0
              ? unitPriceHalala
              : priceHalala;

  String displayName(String localeCode) {
    final normalizedLocale = localeCode.toLowerCase().replaceAll('_', '-');
    final languageCode = normalizedLocale.split('-').first;
    if (nameI18n.containsKey(normalizedLocale)) {
      return nameI18n[normalizedLocale] ?? name;
    }
    if (nameI18n.containsKey(languageCode)) {
      return nameI18n[languageCode] ?? name;
    }
    if (languageCode == 'ar' && nameAr.isNotEmpty) {
      return nameAr;
    }
    return name;
  }

  @override
  List<Object?> get props => [
    id,
    rawId,
    productId,
    menuProductId,
    key,
    name,
    nameAr,
    nameI18n,
    priceHalala,
    priceSar,
    currency,
    calories,
    prepTimeMinutes,
    categoryKey,
    category,
    allowanceCategory,
    itemType,
    type,
    available,
    active,
    source,
    isEligibleForAllowance,
    includedTotalQty,
    remainingQty,
    freeQtyAvailable,
    requestedQty,
    coveredQty,
    paidQty,
    remainingBefore,
    remainingAfter,
    payableTotalHalala,
    unitPriceHalala,
    pricingMode,
    availableForNewSale,
    legacyRecovered,
    entitlementKey,
    balanceBucketId,
    addonPlanId,
    maxPerDay,
    ui,
  ];
}
