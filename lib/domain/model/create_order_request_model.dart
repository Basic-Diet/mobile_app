class CreateOrderRequestModel {
  final String fulfillmentMethod;
  final CreateOrderPickupRequestModel? pickup;
  final List<CreateOrderItemRequestModel> items;
  final String successUrl;
  final String backUrl;

  const CreateOrderRequestModel({
    required this.fulfillmentMethod,
    this.pickup,
    required this.items,
    required this.successUrl,
    required this.backUrl,
  });
}

class CreateOrderPickupRequestModel {
  final String branchId;
  final String pickupWindow;

  const CreateOrderPickupRequestModel({
    required this.branchId,
    required this.pickupWindow,
  });
}

class CreateOrderItemRequestModel {
  final String itemType;
  final int qty;
  final Map<String, dynamic> selections;

  const CreateOrderItemRequestModel({
    required this.itemType,
    required this.qty,
    required this.selections,
  });
}
