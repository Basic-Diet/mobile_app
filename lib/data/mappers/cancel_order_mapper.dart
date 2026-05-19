import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/cancel_order_response.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/domain/model/order_status.dart';

extension CancelOrderResponseMapper on CancelOrderResponse? {
  OrderModel toDomain() {
    final rawStatus = this?.data?.status;
    return OrderModel(
      id: this?.data?.id ?? Constants.empty,
      orderNumber: Constants.empty,
      status: OrderStatus.fromString(rawStatus),
      paymentStatus: this?.data?.paymentStatus ?? Constants.empty,
      fulfillmentMethod: Constants.empty,
      pickup: null,
      pricing: null,
      items: const [],
      createdAt: null,
      expiresAt: null,
      allowedActions: _toStringList(this?.data?.allowedActions),
      cancelledBy: _normalizeCancelledBy(
        this?.data?.cancelledBy ?? this?.data?.canceledBy,
      ),
      cancellationReason:
          this?.data?.cancellationReason ?? this?.data?.cancellationNote,
      cancellationSource: this?.data?.cancellationNote,
      cancelledAt: this?.data?.cancelledAt ?? this?.data?.canceledAt,
    );
  }
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
