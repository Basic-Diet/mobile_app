class OrderQuoteRequestModel {
  final String fulfillmentMethod;
  final OrderQuotePickupRequestModel? pickup;
  final List<OrderQuoteItemRequestModel> items;

  const OrderQuoteRequestModel({
    required this.fulfillmentMethod,
    this.pickup,
    required this.items,
  });
}

class OrderQuotePickupRequestModel {
  final String branchId;
  final String pickupWindow;

  const OrderQuotePickupRequestModel({
    required this.branchId,
    required this.pickupWindow,
  });
}

class OrderQuoteItemRequestModel {
  final String productId;
  final int qty;
  final int? weightGrams;
  final List<OrderQuoteSelectedOptionRequestModel>? selectedOptions;

  const OrderQuoteItemRequestModel({
    required this.productId,
    required this.qty,
    this.weightGrams,
    this.selectedOptions,
  });
}

class OrderQuoteSelectedOptionRequestModel {
  final String groupId;
  final String optionId;
  final int? extraWeightGrams;

  const OrderQuoteSelectedOptionRequestModel({
    required this.groupId,
    required this.optionId,
    this.extraWeightGrams,
  });
}
