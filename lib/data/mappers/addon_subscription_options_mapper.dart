import 'package:basic_diet/data/response/addon_subscription_options_response.dart';
import 'package:basic_diet/domain/model/addon_subscription_options_model.dart';

extension AddonSubscriptionOptionsResponseMapper
    on AddonSubscriptionOptionsResponse? {
  AddonSubscriptionOptionsModel toDomain() {
    return AddonSubscriptionOptionsModel(
      planId: this?.data?.planId ?? '',
      addons:
          this?.data?.addons
              .where((addon) => addon.isAvailable ?? false)
              .map((addon) => addon.toDomain())
              .toList() ??
          const [],
    );
  }
}

extension on AddonSubscriptionOptionResponse {
  AddonSubscriptionOptionModel toDomain() {
    final resolvedId = id ?? addonPlanId ?? '';
    return AddonSubscriptionOptionModel(
      id: resolvedId,
      addonPlanId: addonPlanId ?? resolvedId,
      name: name.toDomain(),
      category: category ?? '',
      maxPerDay: maxPerDay ?? 0,
      pricingMode: pricingMode ?? '',
      priceHalala: priceHalala ?? 0,
      priceSar: priceSar ?? 0,
      priceLabel: priceLabel ?? '',
      currency: currency ?? '',
      isAvailable: isAvailable ?? false,
      menuProductIds: menuProductIds,
      menuProductsCount: menuProductsCount ?? menuProducts.length,
      menuProducts: menuProducts.map((product) => product.toDomain()).toList(),
    );
  }
}

extension on AddonMenuProductResponse {
  AddonMenuProductModel toDomain() {
    return AddonMenuProductModel(
      id: id ?? mongoId ?? '',
      name: name.toDomain(),
      image: image ?? '',
      category: category ?? '',
      isActive: isActive ?? false,
    );
  }
}

extension on LocalizedNameResponse? {
  LocalizedNameModel toDomain() {
    return LocalizedNameModel(ar: this?.ar ?? '', en: this?.en ?? '');
  }
}
