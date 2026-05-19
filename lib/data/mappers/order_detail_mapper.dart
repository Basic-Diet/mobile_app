import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/order_detail_response.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/domain/model/order_status.dart';

extension OrderDetailResponseMapper on OrderDetailResponse? {
  OrderModel toDomain() {
    final rawStatus = this?.data?.status;
    final paymentStatus = this?.data?.paymentStatus ?? Constants.empty;

    return OrderModel(
      id: this?.data?.id ?? Constants.empty,
      orderNumber: this?.data?.orderNumber ?? Constants.empty,
      status: _resolveStatus(rawStatus, paymentStatus),
      paymentStatus: paymentStatus,
      paymentId: this?.data?.paymentId ?? Constants.empty,
      fulfillmentMethod: this?.data?.fulfillmentMethod ?? Constants.empty,
      pickup: this?.data?.pickup.toDomain(),
      pricing: this?.data?.pricing.toDomain(),
      items:
          this?.data?.items?.map((e) => e.toDomain()).toList() ?? const [],
      createdAt: this?.data?.createdAt,
      expiresAt: this?.data?.expiresAt,
      updatedAt: this?.data?.updatedAt,
      allowedActions: _toStringList(this?.data?.allowedActions),
      cancelledBy: _normalizeCancelledBy(
        this?.data?.cancelledBy ?? this?.data?.canceledBy,
      ),
      cancellationReason:
          this?.data?.cancellationReason ?? this?.data?.cancellationNote,
      cancellationSource: this?.data?.cancellationNote,
      cancelledAt: this?.data?.cancelledAt ?? this?.data?.canceledAt,
      timelineEndpoint: this?.data?.timelineEndpoint,
    );
  }
}

extension OrderDetailPickupResponseMapper on OrderDetailPickupResponse? {
  OrderPickupModel? toDomain() {
    if (this == null) return null;
    return OrderPickupModel(
      branchId: this?.branchId ?? Constants.empty,
      pickupWindow: this?.pickupWindow ?? Constants.empty,
      pickupCode: this?.pickupCode,
    );
  }
}

extension OrderDetailPricingResponseMapper on OrderDetailPricingResponse? {
  OrderPricingModel? toDomain() {
    if (this == null) return null;
    return OrderPricingModel(
      currency: this?.currency ?? Constants.empty,
      totalHalala: this?.totalHalala ?? Constants.zero,
      vatIncluded: this?.vatIncluded ?? true,
      subtotalHalala: this?.subtotalHalala,
      deliveryFeeHalala: this?.deliveryFeeHalala,
      discountHalala: this?.discountHalala,
      vatHalala: this?.vatHalala,
    );
  }
}

extension OrderDetailItemResponseMapper on OrderDetailItemResponse? {
  OrderItemModel toDomain() {
    return OrderItemModel(
      itemType: this?.itemType ?? Constants.empty,
      productId: this?.productId,
      qty: this?.qty ?? Constants.zero,
      weightGrams: this?.weightGrams,
      name: this?.name,
      unitPriceHalala: this?.unitPriceHalala,
      totalPriceHalala: this?.totalPriceHalala,
      selectedOptions:
          this?.selectedOptions?.map((e) => e.toDomain()).toList(),
    );
  }
}

extension OrderDetailSelectedOptionResponseMapper on OrderDetailSelectedOptionResponse? {
  OrderItemSelectedOptionModel toDomain() {
    return OrderItemSelectedOptionModel(
      groupId: this?.groupId ?? Constants.empty,
      optionId: this?.optionId ?? Constants.empty,
      extraWeightGrams: this?.extraWeightGrams,
    );
  }
}

OrderStatus _resolveStatus(String? rawStatus, String paymentStatus) {
  final normalized = OrderStatus.normalize(rawStatus);
  if (normalized == null) {
    // Legacy 'created' alias: pending_payment if unpaid, otherwise confirmed
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
