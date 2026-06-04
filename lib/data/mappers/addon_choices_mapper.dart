import 'package:basic_diet/app/extensions.dart';
import 'package:basic_diet/data/response/addon_choices_response.dart';
import 'package:basic_diet/domain/model/addon_choices_model.dart';

extension AddonChoicesResponseMapper on AddonChoicesResponse? {
  AddonChoicesModel toDomain() {
    final rawCategories = this?.data ?? const <String, AddonChoiceCategoryResponse>{};
    final orderedCategories = <AddonChoiceCategoryModel>[];
    for (final entry in rawCategories.entries) {
      orderedCategories.add(entry.value.toDomain(categoryKey: entry.key));
    }
    return AddonChoicesModel(categories: orderedCategories);
  }
}

extension AddonChoiceCategoryResponseMapper on AddonChoiceCategoryResponse? {
  AddonChoiceCategoryModel toDomain({String? categoryKey}) {
    return AddonChoiceCategoryModel(
      category: this?.category.orEmpty() ?? categoryKey.orEmpty(),
      sourceCategories: this?.sourceCategories ?? const [],
      choices: this?.choices.map((choice) => choice.toDomain()).toList() ?? const [],
    );
  }
}

extension AddonChoiceResponseMapper on AddonChoiceResponse? {
  AddonChoiceModel toDomain() {
    final localeMap =
        (this?.nameI18n ?? const <String, dynamic>{}).map(
          (key, value) => MapEntry(key, value?.toString() ?? ''),
        );
    return AddonChoiceModel(
      id: this?.id.orEmpty() ?? '',
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
      itemType: this?.itemType.orEmpty() ?? '',
      type: this?.type.orEmpty() ?? '',
      available: this?.available ?? false,
      active: this?.active ?? false,
      ui: this?.ui ?? const {},
    );
  }
}
