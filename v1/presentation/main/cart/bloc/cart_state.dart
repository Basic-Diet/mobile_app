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
        !isSelectedRestaurantClosed &&
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

  bool get isSelectedRestaurantClosed {
    final branchData = _branchData(resolvedBranchId);
    if (branchData == null) return false;

    final isOpenNow = branchData['isOpenNow'];
    if (isOpenNow is bool) return !isOpenNow;

    return _isRestaurantClosedReason(branchData['reason']) ||
        _isRestaurantClosedReason(branchData['blockingReason']) ||
        _isRestaurantClosedReason(branchData['lockedReason']);
  }

  String get selectedWorkingHoursSummary {
    final branchData = _branchData(resolvedBranchId);
    if (branchData == null) return '';

    final openTime = branchData['openTime'];
    final closeTime = branchData['closeTime'];
    if (openTime is String &&
        openTime.trim().isNotEmpty &&
        closeTime is String &&
        closeTime.trim().isNotEmpty) {
      return _formatRestaurantHours('${openTime.trim()} - ${closeTime.trim()}');
    }

    final workingHours = branchData['workingHours'] ?? branchData['hours'];
    if (workingHours is String && workingHours.trim().isNotEmpty) {
      return _formatRestaurantHours(workingHours);
    }

    return '';
  }

  Map<String, dynamic>? _branchData(String? branchId) {
    if (branchId == null || branchId.isEmpty) return null;
    final branchData = restaurantHours[branchId];
    if (branchData is Map<String, dynamic>) return branchData;
    if (restaurantHours.containsKey('isOpenNow')) return restaurantHours;
    return null;
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

bool _isRestaurantClosedReason(dynamic value) {
  return value is String && value.toUpperCase() == 'RESTAURANT_CLOSED';
}

String _formatRestaurantHours(String value) {
  final trimmed = value.trim();
  final parts = trimmed.split(RegExp(r'\s*[-–]\s*'));
  if (parts.length != 2) return trimmed;

  return '${_formatRestaurantTime(parts.first)} - '
      '${_formatRestaurantTime(parts.last)}';
}

String _formatRestaurantTime(String value) {
  final trimmed = value.trim();
  if (trimmed.contains('ص') || trimmed.contains('م')) return trimmed;

  final match = RegExp(r'^(\d{1,2}):(\d{2})').firstMatch(trimmed);
  if (match == null) return trimmed;

  final hour24 = int.tryParse(match.group(1) ?? '');
  if (hour24 == null) return trimmed;

  final minute = match.group(2) ?? '00';
  final hour12 = hour24 % 12 == 0 ? 12 : hour24 % 12;
  final period = hour24 < 12 ? 'ص' : 'م';
  return '${hour12.toString().padLeft(2, '0')}:$minute $period';
}
