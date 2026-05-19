import 'package:basic_diet/domain/model/order_status.dart';

class OrderModel {
  final String id;
  final String orderNumber;
  final OrderStatus status;
  final String paymentStatus;
  final String paymentId;
  final String fulfillmentMethod;
  final OrderPickupModel? pickup;
  final OrderPricingModel? pricing;
  final List<OrderItemModel> items;
  final String? createdAt;
  final String? expiresAt;
  final String? updatedAt;

  // Lifecycle-mandated fields
  final List<String> allowedActions;
  final String? cancelledBy;
  final String? cancellationReason;
  final String? cancellationSource;
  final String? cancelledAt;
  final String? timelineEndpoint;

  const OrderModel({
    required this.id,
    required this.orderNumber,
    required this.status,
    required this.paymentStatus,
    this.paymentId = '',
    required this.fulfillmentMethod,
    this.pickup,
    this.pricing,
    required this.items,
    this.createdAt,
    this.expiresAt,
    this.updatedAt,
    this.allowedActions = const [],
    this.cancelledBy,
    this.cancellationReason,
    this.cancellationSource,
    this.cancelledAt,
    this.timelineEndpoint,
  });

  /// Defensive: if fulfillmentMethod is null/unrecognized, treat as pickup
  bool get isPickup {
    final method = fulfillmentMethod.trim().toLowerCase();
    return method.isEmpty || method == 'pickup';
  }

  bool get canCancel => allowedActions.contains('cancel');
}

class OrderPickupModel {
  final String branchId;
  final String pickupWindow;
  final String? pickupCode;

  const OrderPickupModel({
    required this.branchId,
    required this.pickupWindow,
    this.pickupCode,
  });
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
  final String? productId;
  final int qty;
  final int? weightGrams;
  final String? name;
  final int? unitPriceHalala;
  final int? totalPriceHalala;
  final List<OrderItemSelectedOptionModel>? selectedOptions;

  const OrderItemModel({
    required this.itemType,
    this.productId,
    required this.qty,
    this.weightGrams,
    this.name,
    this.unitPriceHalala,
    this.totalPriceHalala,
    this.selectedOptions,
  });
}

class OrderItemSelectedOptionModel {
  final String groupId;
  final String optionId;
  final int? extraWeightGrams;

  const OrderItemSelectedOptionModel({
    required this.groupId,
    required this.optionId,
    this.extraWeightGrams,
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
