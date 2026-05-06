import 'package:equatable/equatable.dart';

class CartItem extends Equatable {
  final String id;
  final String itemType;
  final String name;
  final int qty;
  final Map<String, dynamic> selections;
  final int? unitPriceHalala;

  const CartItem({
    required this.id,
    required this.itemType,
    required this.name,
    required this.qty,
    required this.selections,
    this.unitPriceHalala,
  });

  CartItem copyWith({
    String? id,
    String? itemType,
    String? name,
    int? qty,
    Map<String, dynamic>? selections,
    int? unitPriceHalala,
  }) {
    return CartItem(
      id: id ?? this.id,
      itemType: itemType ?? this.itemType,
      name: name ?? this.name,
      qty: qty ?? this.qty,
      selections: selections ?? this.selections,
      unitPriceHalala: unitPriceHalala ?? this.unitPriceHalala,
    );
  }

  @override
  List<Object?> get props => [id, itemType, name, qty, selections, unitPriceHalala];
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
  final String itemId;

  const RemoveItemEvent(this.itemId);

  @override
  List<Object?> get props => [itemId];
}

class UpdateQtyEvent extends CartEvent {
  final String itemId;
  final int qty;

  const UpdateQtyEvent(this.itemId, this.qty);

  @override
  List<Object?> get props => [itemId, qty];
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
