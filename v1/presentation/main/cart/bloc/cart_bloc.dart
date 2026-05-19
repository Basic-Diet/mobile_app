import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartLoaded(items: [])) {
    on<AddItemEvent>(_onAddItem);
    on<RemoveItemEvent>(_onRemoveItem);
    on<UpdateQtyEvent>(_onUpdateQty);
    on<SelectBranchEvent>(_onSelectBranch);
    on<SelectPickupWindowEvent>(_onSelectPickupWindow);
    on<ClearCartEvent>(_onClearCart);
    on<SetRestaurantHoursEvent>(_onSetRestaurantHours);
  }

  void _onAddItem(AddItemEvent event, Emitter<CartState> emit) {
    if (state is! CartLoaded) return;
    final current = state as CartLoaded;
    final existingIndex = current.items.indexWhere(
      (item) => item.compositeKey == event.item.compositeKey,
    );

    List<CartItem> newItems;
    if (existingIndex >= 0) {
      newItems = List.from(current.items);
      final existing = newItems[existingIndex];
      newItems[existingIndex] = existing.copyWith(
        qty: existing.qty + event.item.qty,
      );
    } else {
      newItems = [...current.items, event.item];
    }

    emit(current.copyWith(items: newItems));
  }

  void _onRemoveItem(RemoveItemEvent event, Emitter<CartState> emit) {
    if (state is! CartLoaded) return;
    final current = state as CartLoaded;
    final newItems = current.items.where((i) => i.compositeKey != event.compositeKey).toList();
    emit(current.copyWith(items: newItems));
  }

  void _onUpdateQty(UpdateQtyEvent event, Emitter<CartState> emit) {
    if (state is! CartLoaded) return;
    final current = state as CartLoaded;
    if (event.qty < 1) {
      add(RemoveItemEvent(event.compositeKey));
      return;
    }
    final newItems = current.items.map((item) {
      if (item.compositeKey == event.compositeKey) {
        return item.copyWith(qty: event.qty);
      }
      return item;
    }).toList();
    emit(current.copyWith(items: newItems));
  }

  void _onSelectBranch(SelectBranchEvent event, Emitter<CartState> emit) {
    if (state is! CartLoaded) return;
    final current = state as CartLoaded;
    emit(current.copyWith(selectedBranchId: event.branchId));
  }

  void _onSelectPickupWindow(
    SelectPickupWindowEvent event,
    Emitter<CartState> emit,
  ) {
    if (state is! CartLoaded) return;
    final current = state as CartLoaded;
    emit(current.copyWith(selectedPickupWindow: event.pickupWindow));
  }

  void _onClearCart(ClearCartEvent event, Emitter<CartState> emit) {
    if (state is CartLoaded) {
      final current = state as CartLoaded;
      emit(CartLoaded(
        items: const [],
        restaurantHours: current.restaurantHours,
      ));
    } else {
      emit(const CartLoaded(items: []));
    }
  }

  void _onSetRestaurantHours(
    SetRestaurantHoursEvent event,
    Emitter<CartState> emit,
  ) {
    if (state is! CartLoaded) return;
    final current = state as CartLoaded;
    emit(current.copyWith(restaurantHours: event.restaurantHours));
  }
}
