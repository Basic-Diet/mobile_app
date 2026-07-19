// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_choices_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AddonChoicesResponseToJson(
  AddonChoicesResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
  'addonChoiceGroups': instance.addonChoiceGroups,
};

AddonChoiceCategoryResponse _$AddonChoiceCategoryResponseFromJson(
  Map<String, dynamic> json,
) => AddonChoiceCategoryResponse(
  groupId: json['groupId'] as String?,
  addonPlanId: json['addonPlanId'] as String?,
  label: json['label'] as String?,
  labelText: json['labelText'] as String?,
  addonPlanName: json['addonPlanName'] as String?,
  displayKey: json['displayKey'] as String?,
  displayCategory: json['displayCategory'] as String?,
  category: json['category'] as String?,
  allowanceCategory: json['allowanceCategory'] as String?,
  entitlementCategory: json['entitlementCategory'] as String?,
  source: json['source'] as String?,
  isPurchased: json['isPurchased'] as bool?,
  includedTotalQty: (json['includedTotalQty'] as num?)?.toInt(),
  remainingIncludedQty: (json['remainingIncludedQty'] as num?)?.toInt(),
  balanceBucketId: json['balanceBucketId'] as String?,
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  sourceCategories:
      (json['sourceCategories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  choices:
      (json['choices'] as List<dynamic>?)
          ?.map((e) => AddonChoiceResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AddonChoiceCategoryResponseToJson(
  AddonChoiceCategoryResponse instance,
) => <String, dynamic>{
  'groupId': instance.groupId,
  'addonPlanId': instance.addonPlanId,
  'label': instance.label,
  'labelText': instance.labelText,
  'addonPlanName': instance.addonPlanName,
  'displayKey': instance.displayKey,
  'displayCategory': instance.displayCategory,
  'category': instance.category,
  'allowanceCategory': instance.allowanceCategory,
  'entitlementCategory': instance.entitlementCategory,
  'source': instance.source,
  'isPurchased': instance.isPurchased,
  'includedTotalQty': instance.includedTotalQty,
  'remainingIncludedQty': instance.remainingIncludedQty,
  'balanceBucketId': instance.balanceBucketId,
  'sortOrder': instance.sortOrder,
  'sourceCategories': instance.sourceCategories,
  'choices': instance.choices,
};

AddonChoiceResponse _$AddonChoiceResponseFromJson(Map<String, dynamic> json) =>
    AddonChoiceResponse(
      id: json['id'] as String?,
      productId: json['productId'] as String?,
      menuProductId: json['menuProductId'] as String?,
      key: json['key'] as String?,
      name: json['name'] as String?,
      nameAr: json['nameAr'] as String?,
      nameI18n: json['nameI18n'] as Map<String, dynamic>?,
      priceHalala: (json['priceHalala'] as num?)?.toInt(),
      priceSar: (json['priceSar'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      calories: (json['calories'] as num?)?.toInt(),
      prepTimeMinutes: (json['prepTimeMinutes'] as num?)?.toInt(),
      categoryKey: json['categoryKey'] as String?,
      category: json['category'] as String?,
      allowanceCategory: json['allowanceCategory'] as String?,
      itemType: json['itemType'] as String?,
      type: json['type'] as String?,
      available: json['available'] as bool?,
      active: json['active'] as bool?,
      source: json['source'] as String?,
      isEligibleForAllowance: json['isEligibleForAllowance'] as bool?,
      includedTotalQty: (json['includedTotalQty'] as num?)?.toInt(),
      remainingQty: (json['remainingQty'] as num?)?.toInt(),
      freeQtyAvailable: (json['freeQtyAvailable'] as num?)?.toInt(),
      requestedQty: (json['requestedQty'] as num?)?.toInt(),
      coveredQty: (json['coveredQty'] as num?)?.toInt(),
      paidQty: (json['paidQty'] as num?)?.toInt(),
      remainingBefore: (json['remainingBefore'] as num?)?.toInt(),
      remainingAfter: (json['remainingAfter'] as num?)?.toInt(),
      payableTotalHalala: (json['payableTotalHalala'] as num?)?.toInt(),
      unitPriceHalala: (json['unitPriceHalala'] as num?)?.toInt(),
      pricingMode: json['pricingMode'] as String?,
      availableForNewSale: json['availableForNewSale'] as bool?,
      legacyRecovered: json['legacyRecovered'] as bool?,
      entitlementKey: json['entitlementKey'] as String?,
      balanceBucketId: json['balanceBucketId'] as String?,
      addonPlanId: json['addonPlanId'] as String?,
      maxPerDay: (json['maxPerDay'] as num?)?.toInt(),
      ui: json['ui'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AddonChoiceResponseToJson(
  AddonChoiceResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'menuProductId': instance.menuProductId,
  'key': instance.key,
  'name': instance.name,
  'nameAr': instance.nameAr,
  'nameI18n': instance.nameI18n,
  'priceHalala': instance.priceHalala,
  'priceSar': instance.priceSar,
  'currency': instance.currency,
  'calories': instance.calories,
  'prepTimeMinutes': instance.prepTimeMinutes,
  'categoryKey': instance.categoryKey,
  'category': instance.category,
  'allowanceCategory': instance.allowanceCategory,
  'itemType': instance.itemType,
  'type': instance.type,
  'available': instance.available,
  'active': instance.active,
  'source': instance.source,
  'isEligibleForAllowance': instance.isEligibleForAllowance,
  'includedTotalQty': instance.includedTotalQty,
  'remainingQty': instance.remainingQty,
  'freeQtyAvailable': instance.freeQtyAvailable,
  'requestedQty': instance.requestedQty,
  'coveredQty': instance.coveredQty,
  'paidQty': instance.paidQty,
  'remainingBefore': instance.remainingBefore,
  'remainingAfter': instance.remainingAfter,
  'payableTotalHalala': instance.payableTotalHalala,
  'unitPriceHalala': instance.unitPriceHalala,
  'pricingMode': instance.pricingMode,
  'availableForNewSale': instance.availableForNewSale,
  'legacyRecovered': instance.legacyRecovered,
  'entitlementKey': instance.entitlementKey,
  'balanceBucketId': instance.balanceBucketId,
  'addonPlanId': instance.addonPlanId,
  'maxPerDay': instance.maxPerDay,
  'ui': instance.ui,
};
