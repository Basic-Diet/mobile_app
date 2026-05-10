import 'package:equatable/equatable.dart';

class SelectedCartOption extends Equatable {
  final String groupId;
  final String optionId;
  final String optionName;
  final int? extraWeightGrams;

  const SelectedCartOption({
    required this.groupId,
    required this.optionId,
    required this.optionName,
    this.extraWeightGrams,
  });

  SelectedCartOption copyWith({
    String? groupId,
    String? optionId,
    String? optionName,
    int? extraWeightGrams,
  }) {
    return SelectedCartOption(
      groupId: groupId ?? this.groupId,
      optionId: optionId ?? this.optionId,
      optionName: optionName ?? this.optionName,
      extraWeightGrams: extraWeightGrams ?? this.extraWeightGrams,
    );
  }

  @override
  List<Object?> get props => [groupId, optionId, optionName, extraWeightGrams];
}

class CartItem extends Equatable {
  final String productId;
  final String name;
  final int qty;
  final int? weightGrams;
  final List<SelectedCartOption> selectedOptions;
  final int? unitPriceHalala;

  const CartItem({
    required this.productId,
    required this.name,
    required this.qty,
    this.weightGrams,
    this.selectedOptions = const [],
    this.unitPriceHalala,
  });

  CartItem copyWith({
    String? productId,
    String? name,
    int? qty,
    int? weightGrams,
    List<SelectedCartOption>? selectedOptions,
    int? unitPriceHalala,
  }) {
    return CartItem(
      productId: productId ?? this.productId,
      name: name ?? this.name,
      qty: qty ?? this.qty,
      weightGrams: weightGrams ?? this.weightGrams,
      selectedOptions: selectedOptions ?? this.selectedOptions,
      unitPriceHalala: unitPriceHalala ?? this.unitPriceHalala,
    );
  }

  String get compositeKey {
    final optionKey = selectedOptions.map((o) => '${o.groupId}:${o.optionId}:${o.extraWeightGrams ?? 0}').join('|');
    return '${productId}_${weightGrams ?? 0}_$optionKey';
  }

  @override
  List<Object?> get props => [productId, name, qty, weightGrams, selectedOptions, unitPriceHalala];
}

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object?> get props => [];
}

class AddItemEvent extends CartEvent {
  final CartItem item;

  const AddItemEvent(this.item);

  @override
  List<Object?> get props => [item];
}

class RemoveItemEvent extends CartEvent {
  final String compositeKey;

  const RemoveItemEvent(this.compositeKey);

  @override
  List<Object?> get props => [compositeKey];
}

class UpdateQtyEvent extends CartEvent {
  final String compositeKey;
  final int qty;

  const UpdateQtyEvent(this.compositeKey, this.qty);

  @override
  List<Object?> get props => [compositeKey, qty];
}

class SelectBranchEvent extends CartEvent {
  final String branchId;

  const SelectBranchEvent(this.branchId);

  @override
  List<Object?> get props => [branchId];
}

class SelectPickupWindowEvent extends CartEvent {
  final String pickupWindow;

  const SelectPickupWindowEvent(this.pickupWindow);

  @override
  List<Object?> get props => [pickupWindow];
}

class ClearCartEvent extends CartEvent {
  const ClearCartEvent();
}

class SetRestaurantHoursEvent extends CartEvent {
  final Map<String, dynamic> restaurantHours;

  const SetRestaurantHoursEvent(this.restaurantHours);

  @override
  List<Object?> get props => [restaurantHours];
}
