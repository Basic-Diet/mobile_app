import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/orders_list_response.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/domain/model/order_status.dart';

extension OrdersListResponseMapper on OrdersListResponse? {
  OrdersListModel toDomain() {
    return OrdersListModel(
      items: this?.data?.items?.map((e) => e.toDomain()).toList() ?? const [],
      pagination:
          this?.data?.pagination.toDomain() ??
          const OrdersPaginationModel(page: 1, limit: 20, total: 0, pages: 0),
    );
  }
}

extension OrdersListItemResponseMapper on OrdersListItemResponse? {
  OrderModel toDomain() {
    final rawStatus = this?.status;
    final paymentStatus = this?.paymentStatus ?? Constants.empty;

    return OrderModel(
      id: this?.id ?? Constants.empty,
      orderNumber: this?.orderNumber ?? Constants.empty,
      status: _resolveStatus(rawStatus, paymentStatus),
      paymentStatus: paymentStatus,
      paymentId: this?.paymentId ?? Constants.empty,
      fulfillmentMethod: this?.fulfillmentMethod ?? Constants.empty,
      pickup: null,
      pricing: _mapPricing(this?.pricing),
      items: const [],
      createdAt: this?.createdAt,
      expiresAt: null,
      allowedActions: _toStringList(this?.allowedActions),
      cancelledBy: _normalizeCancelledBy(this?.cancelledBy ?? this?.canceledBy),
      cancellationReason: this?.cancellationReason ?? this?.cancellationNote,
      cancellationSource: this?.cancellationNote,
      cancelledAt: this?.cancelledAt ?? this?.canceledAt,
    );
  }
}

OrderPricingModel? _mapPricing(Map<String, dynamic>? pricing) {
  if (pricing == null) return null;
  return OrderPricingModel(
    currency: pricing['currency'] as String? ?? Constants.empty,
    totalHalala: pricing['totalHalala'] as int? ?? Constants.zero,
    vatIncluded: pricing['vatIncluded'] as bool? ?? true,
    subtotalHalala: pricing['subtotalHalala'] as int?,
    deliveryFeeHalala: pricing['deliveryFeeHalala'] as int?,
    discountHalala: pricing['discountHalala'] as int?,
    vatHalala: pricing['vatHalala'] as int?,
  );
}

extension OrdersListPaginationResponseMapper on OrdersListPaginationResponse? {
  OrdersPaginationModel toDomain() {
    return OrdersPaginationModel(
      page: this?.page ?? 1,
      limit: this?.limit ?? 20,
      total: this?.total ?? Constants.zero,
      pages: this?.pages ?? Constants.zero,
    );
  }
}

OrderStatus _resolveStatus(String? rawStatus, String paymentStatus) {
  final normalized = OrderStatus.normalize(rawStatus);
  if (normalized == null) {
    if (paymentStatus.toLowerCase() == 'unpaid') {
      return OrderStatus.pendingPayment;
    }
    return OrderStatus.confirmed;
  }
  return OrderStatus.fromString(normalized);
}

String? _normalizeCancelledBy(String? raw) {
  if (raw == null || raw.isEmpty) return null;
  final v = raw.trim().toLowerCase();
  if (v == 'branch') return 'restaurant';
  return v;
}

List<String> _toStringList(List<dynamic>? raw) {
  if (raw == null) return const [];
  return raw.whereType<String>().toList();
}
