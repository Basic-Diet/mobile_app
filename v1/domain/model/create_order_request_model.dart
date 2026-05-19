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
  final String productId;
  final int qty;
  final int? weightGrams;
  final List<CreateOrderSelectedOptionRequestModel>? selectedOptions;

  const CreateOrderItemRequestModel({
    required this.productId,
    required this.qty,
    this.weightGrams,
    this.selectedOptions,
  });
}

class CreateOrderSelectedOptionRequestModel {
  final String groupId;
  final String optionId;
  final int? extraWeightGrams;

  const CreateOrderSelectedOptionRequestModel({
    required this.groupId,
    required this.optionId,
    this.extraWeightGrams,
  });
}
