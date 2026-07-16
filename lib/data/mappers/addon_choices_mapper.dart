import 'package:basic_diet/app/extensions.dart';
import 'package:basic_diet/data/response/addon_choices_response.dart';
import 'package:basic_diet/domain/model/addon_choices_model.dart';

extension AddonChoicesResponseMapper on AddonChoicesResponse? {
  AddonChoicesModel toDomain() {
    final rawCategories = this?.data ?? const <String, AddonChoiceCategoryResponse>{};
    final orderedCategories = <AddonChoiceCategoryModel>[];
    final groupedResponses = this?.addonChoiceGroups ?? const <AddonChoiceCategoryResponse>[];

    if (groupedResponses.isNotEmpty) {
      for (final response in groupedResponses) {
        orderedCategories.add(response.toDomain());
      }
      return AddonChoicesModel(categories: orderedCategories);
    }

    for (final entry in rawCategories.entries) {
      orderedCategories.add(entry.value.toDomain(categoryKey: entry.key));
    }
    return AddonChoicesModel(categories: orderedCategories);
  }
}

extension AddonChoiceCategoryResponseMapper on AddonChoiceCategoryResponse? {
  AddonChoiceCategoryModel toDomain({String? categoryKey}) {
    final resolvedGroupKey =
        this?.groupId.orEmpty().isNotEmpty == true
            ? this!.groupId!.trim()
            : this?.addonPlanId.orEmpty().isNotEmpty == true
            ? this!.addonPlanId!.trim()
            : categoryKey.orEmpty();
    final resolvedLabel =
        this?.label.orEmpty().isNotEmpty == true
            ? this!.label!.trim()
            : this?.addonPlanName.orEmpty().isNotEmpty == true
            ? this!.addonPlanName!.trim()
            : this?.displayCategory.orEmpty().isNotEmpty == true
            ? this!.displayCategory!.trim()
            : this?.category.orEmpty() ?? categoryKey.orEmpty();
    final resolvedDisplayCategory =
        this?.displayCategory.orEmpty().isNotEmpty == true
            ? this!.displayCategory!.trim()
            : this?.category.orEmpty() ?? categoryKey.orEmpty();
    final resolvedAllowanceCategory =
        this?.allowanceCategory.orEmpty().isNotEmpty == true
            ? this!.allowanceCategory!.trim()
            : resolvedDisplayCategory;

    return AddonChoiceCategoryModel(
      groupKey: resolvedGroupKey,
      groupId: this?.groupId.orEmpty() ?? '',
      addonPlanId: this?.addonPlanId.orEmpty() ?? '',
      label: resolvedLabel,
      displayCategory: resolvedDisplayCategory,
      allowanceCategory: resolvedAllowanceCategory,
      category: resolvedDisplayCategory,
      sourceCategories: this?.sourceCategories ?? const [],
      choices:
          this?.choices.map((choice) => choice.toDomain()).toList() ??
          const [],
    );
  }
}

extension AddonChoiceResponseMapper on AddonChoiceResponse? {
  AddonChoiceModel toDomain() {
    final localeMap =
        (this?.nameI18n ?? const <String, dynamic>{}).map(
          (key, value) => MapEntry(key, value?.toString() ?? ''),
        );
    final rawId = this?.id.orEmpty() ?? '';
    final productId = this?.productId.orEmpty() ?? '';
    final menuProductId = this?.menuProductId.orEmpty() ?? '';
    final selectionId =
        productId.isNotEmpty
            ? productId
            : menuProductId.isNotEmpty
                ? menuProductId
                : rawId;
    return AddonChoiceModel(
      id: selectionId,
      rawId: rawId,
      productId: productId,
      menuProductId: menuProductId,
      key: this?.key.orEmpty() ?? '',
      name: this?.name.orEmpty() ?? '',
      nameAr: this?.nameAr.orEmpty() ?? '',
      nameI18n: localeMap,
      priceHalala: this?.priceHalala.orZero() ?? 0,
      priceSar: this?.priceSar.orZero() ?? 0,
      currency: this?.currency.orEmpty() ?? 'SAR',
      calories: this?.calories,
      prepTimeMinutes: this?.prepTimeMinutes,
      categoryKey: this?.categoryKey.orEmpty() ?? '',
      category: this?.category.orEmpty() ?? '',
      allowanceCategory: this?.allowanceCategory.orEmpty() ?? '',
      itemType: this?.itemType.orEmpty() ?? '',
      type: this?.type.orEmpty() ?? '',
      available: this?.available ?? true,
      active: this?.active ?? true,
      source: this?.source.orEmpty() ?? '',
      isEligibleForAllowance: this?.isEligibleForAllowance,
      includedTotalQty: this?.includedTotalQty.orZero() ?? 0,
      remainingQty: this?.remainingQty.orZero() ?? 0,
      freeQtyAvailable: this?.freeQtyAvailable.orZero() ?? 0,
      requestedQty: this?.requestedQty.orZero() ?? 0,
      coveredQty: this?.coveredQty.orZero() ?? 0,
      paidQty: this?.paidQty.orZero() ?? 0,
      remainingBefore: this?.remainingBefore.orZero() ?? 0,
      remainingAfter: this?.remainingAfter.orZero() ?? 0,
      payableTotalHalala: this?.payableTotalHalala.orZero() ?? 0,
      unitPriceHalala: this?.unitPriceHalala.orZero() ?? 0,
      pricingMode: this?.pricingMode.orEmpty() ?? '',
      availableForNewSale: this?.availableForNewSale,
      legacyRecovered: this?.legacyRecovered ?? false,
      entitlementKey: this?.entitlementKey.orEmpty() ?? '',
      balanceBucketId: this?.balanceBucketId.orEmpty() ?? '',
      addonPlanId: this?.addonPlanId.orEmpty() ?? '',
      maxPerDay: this?.maxPerDay,
      ui: this?.ui ?? const {},
    );
  }
}
