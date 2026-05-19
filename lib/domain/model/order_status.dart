import 'package:basic_diet/app/constants.dart';

enum OrderStatus {
  pendingPayment,
  confirmed,
  inPreparation,
  readyForPickup,
  fulfilled,
  cancelled,
  expired,
  unknown;

  static OrderStatus fromString(String? raw) {
    final normalized = normalize(raw);
    return OrderStatus.values.firstWhere(
      (e) => e.value == normalized,
      orElse: () => OrderStatus.unknown,
    );
  }

  static String? normalize(String? raw) {
    if (raw == null || raw.isEmpty) return null;
    final v = raw.trim().toLowerCase();
    // Legacy alias mapping per lifecycle doc
    switch (v) {
      case 'created':
        return null; // caller must decide: pending_payment if unpaid, else confirmed
      case 'preparing':
        return OrderStatus.inPreparation.value;
      case 'delivered':
        return OrderStatus.fulfilled.value;
      case 'canceled':
        return OrderStatus.cancelled.value;
      default:
        return v;
    }
  }

  String get value {
    switch (this) {
      case OrderStatus.pendingPayment:
        return 'pending_payment';
      case OrderStatus.confirmed:
        return 'confirmed';
      case OrderStatus.inPreparation:
        return 'in_preparation';
      case OrderStatus.readyForPickup:
        return 'ready_for_pickup';
      case OrderStatus.fulfilled:
        return 'fulfilled';
      case OrderStatus.cancelled:
        return 'cancelled';
      case OrderStatus.expired:
        return 'expired';
      case OrderStatus.unknown:
        return Constants.empty;
    }
  }

  bool get isFinal {
    return this == OrderStatus.fulfilled ||
        this == OrderStatus.cancelled ||
        this == OrderStatus.expired;
  }

  bool get allowsCancellation {
    return this == OrderStatus.pendingPayment ||
        this == OrderStatus.confirmed ||
        this == OrderStatus.inPreparation ||
        this == OrderStatus.readyForPickup;
  }
}
