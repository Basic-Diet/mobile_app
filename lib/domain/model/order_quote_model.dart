class OrderQuoteModel {
  final String? quoteId;
  final String currency;
  final List<OrderQuoteItemModel> items;
  final OrderQuotePricingModel pricing;
  final OrderQuoteAppliedPromoModel? appliedPromo;
  final int expiresInSeconds;

  const OrderQuoteModel({
    this.quoteId,
    required this.currency,
    required this.items,
    required this.pricing,
    this.appliedPromo,
    required this.expiresInSeconds,
  });
}

class OrderQuoteItemModel {
  final String itemType;
  final int qty;
  final String? name;
  final int? unitPriceHalala;
  final int? totalPriceHalala;

  const OrderQuoteItemModel({
    required this.itemType,
    required this.qty,
    this.name,
    this.unitPriceHalala,
    this.totalPriceHalala,
  });
}

class OrderQuotePricingModel {
  final int subtotalHalala;
  final int deliveryFeeHalala;
  final int discountHalala;
  final int totalHalala;
  final int vatPercentage;
  final int vatHalala;
  final bool vatIncluded;

  const OrderQuotePricingModel({
    required this.subtotalHalala,
    required this.deliveryFeeHalala,
    required this.discountHalala,
    required this.totalHalala,
    required this.vatPercentage,
    required this.vatHalala,
    required this.vatIncluded,
  });
}

class OrderQuoteAppliedPromoModel {
  final String code;
  final String label;
  final String message;

  const OrderQuoteAppliedPromoModel({
    required this.code,
    required this.label,
    required this.message,
  });
}
