import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/order_quote_response.dart';
import 'package:basic_diet/domain/model/order_quote_model.dart';

extension OrderQuoteResponseMapper on OrderQuoteResponse? {
  OrderQuoteModel toDomain() {
    return OrderQuoteModel(
      currency: this?.data?.currency ?? Constants.empty,
      items:
          this?.data?.items?.map((e) => e.toDomain()).toList() ?? const [],
      pricing: this?.data?.pricing.toDomain() ??
          const OrderQuotePricingModel(
            subtotalHalala: 0,
            deliveryFeeHalala: 0,
            discountHalala: 0,
            totalHalala: 0,
            vatPercentage: 0,
            vatHalala: 0,
            vatIncluded: true,
          ),
      appliedPromo: this?.data?.appliedPromo.toDomain(),
    );
  }
}

extension OrderQuoteItemDataResponseMapper on OrderQuoteItemDataResponse? {
  OrderQuoteItemModel toDomain() {
    return OrderQuoteItemModel(
      itemType: this?.itemType ?? Constants.empty,
      productId: this?.productId ?? Constants.empty,
      menuVersionId: this?.menuVersionId,
      qty: this?.qty ?? Constants.zero,
      weightGrams: this?.weightGrams,
      unitPriceHalala: this?.unitPriceHalala,
      lineTotalHalala: this?.lineTotalHalala,
      name: this?.name,
      productSnapshot: this?.productSnapshot,
      selectedOptions:
          this?.selectedOptions?.map((e) => e.toDomain()).toList(),
      pricingSnapshot: this?.pricingSnapshot,
    );
  }
}

extension OrderQuoteSelectedOptionResponseMapper on OrderQuoteSelectedOptionResponse? {
  OrderQuoteSelectedOptionModel toDomain() {
    return OrderQuoteSelectedOptionModel(
      groupId: this?.groupId ?? Constants.empty,
      optionId: this?.optionId ?? Constants.empty,
      extraWeightGrams: this?.extraWeightGrams,
    );
  }
}

extension OrderQuotePricingResponseMapper on OrderQuotePricingResponse? {
  OrderQuotePricingModel toDomain() {
    return OrderQuotePricingModel(
      subtotalHalala: this?.subtotalHalala ?? Constants.zero,
      deliveryFeeHalala: this?.deliveryFeeHalala ?? Constants.zero,
      discountHalala: this?.discountHalala ?? Constants.zero,
      totalHalala: this?.totalHalala ?? Constants.zero,
      vatPercentage: this?.vatPercentage ?? Constants.zero,
      vatHalala: this?.vatHalala ?? Constants.zero,
      vatIncluded: this?.vatIncluded ?? true,
    );
  }
}

extension OrderQuoteAppliedPromoResponseMapper
    on OrderQuoteAppliedPromoResponse? {
  OrderQuoteAppliedPromoModel? toDomain() {
    if (this == null) return null;
    return OrderQuoteAppliedPromoModel(
      code: this?.code ?? Constants.empty,
      label: this?.label ?? Constants.empty,
      message: this?.message ?? Constants.empty,
    );
  }
}
