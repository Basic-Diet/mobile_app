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
  static const String defaultBranchId = 'main';
  static const String defaultPickupWindow = '18:00-20:00';

  final List<CartItem> items;
  final String? selectedBranchId;
  final String? selectedPickupWindow;
  final Map<String, dynamic> restaurantHours;

  const CartLoaded({
    required this.items,
    this.selectedBranchId,
    this.selectedPickupWindow,
    this.restaurantHours = const {},
  });

  int get totalQty => items.fold(0, (sum, item) => sum + item.qty);

  String? get resolvedBranchId {
    if (selectedBranchId != null && selectedBranchId!.isNotEmpty) {
      return selectedBranchId;
    }

    if (branchIds.isNotEmpty) {
      return branchIds.first;
    }

    return defaultBranchId;
  }

  String? get resolvedPickupWindow {
    if (selectedPickupWindow != null && selectedPickupWindow!.isNotEmpty) {
      return selectedPickupWindow;
    }

    final windows = availableWindowsForBranch(resolvedBranchId);
    if (windows.isNotEmpty) {
      return windows.first;
    }

    return defaultPickupWindow;
  }

  bool get canCheckout {
    return items.isNotEmpty &&
        resolvedBranchId != null &&
        resolvedBranchId!.isNotEmpty &&
        resolvedPickupWindow != null &&
        resolvedPickupWindow!.isNotEmpty;
  }

  List<String> get branchIds {
    if (restaurantHours.isEmpty) return const [];
    return restaurantHours.keys.whereType<String>().toList();
  }

  List<String> get availableWindows {
    return availableWindowsForBranch(resolvedBranchId);
  }

  List<String> availableWindowsForBranch(String? branchId) {
    if (branchId == null || branchId.isEmpty) return const [];
    final branchData = restaurantHours[branchId];
    if (branchData is Map<String, dynamic>) {
      final windows = branchData['windows'] ?? branchData['pickupWindows'];
      if (windows is List) {
        return windows.whereType<String>().toList();
      }
    }
    return const [];
  }

  CartLoaded copyWith({
    List<CartItem>? items,
    String? selectedBranchId,
    String? selectedPickupWindow,
    Map<String, dynamic>? restaurantHours,
  }) {
    return CartLoaded(
      items: items ?? this.items,
      selectedBranchId: selectedBranchId ?? this.selectedBranchId,
      selectedPickupWindow: selectedPickupWindow ?? this.selectedPickupWindow,
      restaurantHours: restaurantHours ?? this.restaurantHours,
    );
  }

  @override
  List<Object?> get props => [
    items,
    selectedBranchId,
    selectedPickupWindow,
    restaurantHours,
  ];
}
