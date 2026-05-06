class OrderModel {
  final String id;
  final String orderNumber;
  final String status;
  final String paymentStatus;
  final String fulfillmentMethod;
  final OrderPickupModel? pickup;
  final OrderPricingModel? pricing;
  final List<OrderItemModel> items;
  final String? createdAt;
  final String? expiresAt;

  const OrderModel({
    required this.id,
    required this.orderNumber,
    required this.status,
    required this.paymentStatus,
    required this.fulfillmentMethod,
    this.pickup,
    this.pricing,
    required this.items,
    this.createdAt,
    this.expiresAt,
  });
}

class OrderPickupModel {
  final String branchId;
  final String pickupWindow;

  const OrderPickupModel({required this.branchId, required this.pickupWindow});
}

class OrderPricingModel {
  final String currency;
  final int totalHalala;
  final bool vatIncluded;
  final int? subtotalHalala;
  final int? deliveryFeeHalala;
  final int? discountHalala;
  final int? vatHalala;

  const OrderPricingModel({
    required this.currency,
    required this.totalHalala,
    required this.vatIncluded,
    this.subtotalHalala,
    this.deliveryFeeHalala,
    this.discountHalala,
    this.vatHalala,
  });
}

class OrderItemModel {
  final String itemType;
  final int qty;
  final String? name;
  final int? unitPriceHalala;
  final int? totalPriceHalala;

  const OrderItemModel({
    required this.itemType,
    required this.qty,
    this.name,
    this.unitPriceHalala,
    this.totalPriceHalala,
  });
}

class OrdersListModel {
  final List<OrderModel> items;
  final OrdersPaginationModel pagination;

  const OrdersListModel({required this.items, required this.pagination});
}

class OrdersPaginationModel {
  final int page;
  final int limit;
  final int total;
  final int pages;

  const OrdersPaginationModel({
    required this.page,
    required this.limit,
    required this.total,
    required this.pages,
  });
}
