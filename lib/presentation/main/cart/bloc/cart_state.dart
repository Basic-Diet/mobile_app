import 'package:equatable/equatable.dart';
import 'cart_event.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object?> get props => [];
}

class CartInitial extends CartState {
  const CartInitial();
}

class CartLoaded extends CartState {
  final List<CartItem> items;
  final String? selectedBranchId;
  final String? selectedPickupWindow;

  const CartLoaded({
    required this.items,
    this.selectedBranchId,
    this.selectedPickupWindow,
  });

  int get totalQty => items.fold(0, (sum, item) => sum + item.qty);

  int? get previewTotalHalala {
    if (items.isEmpty) return null;
    return items.fold<int>(0, (sum, item) {
      final price = item.unitPriceHalala ?? 0;
      return sum + (price * item.qty);
    });
  }

  bool get canCheckout {
    return items.isNotEmpty &&
        selectedBranchId != null &&
        selectedBranchId!.isNotEmpty &&
        selectedPickupWindow != null &&
        selectedPickupWindow!.isNotEmpty;
  }

  CartLoaded copyWith({
    List<CartItem>? items,
    String? selectedBranchId,
    String? selectedPickupWindow,
  }) {
    return CartLoaded(
      items: items ?? this.items,
      selectedBranchId: selectedBranchId ?? this.selectedBranchId,
      selectedPickupWindow: selectedPickupWindow ?? this.selectedPickupWindow,
    );
  }

  @override
  List<Object?> get props => [items, selectedBranchId, selectedPickupWindow];
}
