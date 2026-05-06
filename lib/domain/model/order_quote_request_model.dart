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
  final String itemType;
  final int qty;
  final Map<String, dynamic> selections;

  const OrderQuoteItemRequestModel({
    required this.itemType,
    required this.qty,
    required this.selections,
  });
}
