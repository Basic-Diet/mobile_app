class OrderQuoteModel {
  final String currency;
  final List<OrderQuoteItemModel> items;
  final OrderQuotePricingModel pricing;
  final OrderQuoteAppliedPromoModel? appliedPromo;

  const OrderQuoteModel({
    required this.currency,
    required this.items,
    required this.pricing,
    this.appliedPromo,
  });
}

class OrderQuoteItemModel {
  final String itemType;
  final String productId;
  final String? menuVersionId;
  final int qty;
  final int? weightGrams;
  final int? unitPriceHalala;
  final int? lineTotalHalala;
  final String? name;
  final Map<String, dynamic>? productSnapshot;
  final List<OrderQuoteSelectedOptionModel>? selectedOptions;
  final Map<String, dynamic>? pricingSnapshot;

  const OrderQuoteItemModel({
    required this.itemType,
    required this.productId,
    this.menuVersionId,
    required this.qty,
    this.weightGrams,
    this.unitPriceHalala,
    this.lineTotalHalala,
    this.name,
    this.productSnapshot,
    this.selectedOptions,
    this.pricingSnapshot,
  });
}

class OrderQuoteSelectedOptionModel {
  final String groupId;
  final String optionId;
  final int? extraWeightGrams;

  const OrderQuoteSelectedOptionModel({
    required this.groupId,
    required this.optionId,
    this.extraWeightGrams,
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
