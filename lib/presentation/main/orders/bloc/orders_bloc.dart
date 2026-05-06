import 'package:basic_diet/domain/usecase/get_orders_usecase.dart';
import 'package:basic_diet/domain/usecase/cancel_order_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'orders_event.dart';
import 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final GetOrdersUseCase _getOrdersUseCase;
  final CancelOrderUseCase _cancelOrderUseCase;

  OrdersBloc(
    this._getOrdersUseCase,
    this._cancelOrderUseCase,
  ) : super(const OrdersInitial()) {
    on<LoadOrdersEvent>(_onLoadOrders);
    on<RefreshOrdersEvent>(_onRefreshOrders);
    on<CancelOrderEvent>(_onCancelOrder);
  }

  Future<void> _onLoadOrders(
    LoadOrdersEvent event,
    Emitter<OrdersState> emit,
  ) async {
    emit(const OrdersLoading());
    final result = await _getOrdersUseCase.execute(
      GetOrdersInput(page: event.page, limit: event.limit),
    );
    result.fold(
      (failure) => emit(OrdersError(failure.message)),
      (ordersList) => emit(
        OrdersSuccess(
          orders: ordersList.items,
          hasMore: ordersList.pagination.page < ordersList.pagination.pages,
        ),
      ),
    );
  }

  Future<void> _onRefreshOrders(
    RefreshOrdersEvent event,
    Emitter<OrdersState> emit,
  ) async {
    if (state is OrdersSuccess) {
      final current = state as OrdersSuccess;
      emit(current.copyWith(isRefreshing: true));
    } else {
      emit(const OrdersLoading());
    }
    final result = await _getOrdersUseCase.execute(
      const GetOrdersInput(page: 1, limit: 20),
    );
    result.fold(
      (failure) => emit(OrdersError(failure.message)),
      (ordersList) => emit(
        OrdersSuccess(
          orders: ordersList.items,
          hasMore: ordersList.pagination.page < ordersList.pagination.pages,
          isRefreshing: false,
        ),
      ),
    );
  }

  Future<void> _onCancelOrder(
    CancelOrderEvent event,
    Emitter<OrdersState> emit,
  ) async {
    if (state is! OrdersSuccess) return;
    final current = state as OrdersSuccess;
    emit(OrderCancelLoading(current.orders));
    final result = await _cancelOrderUseCase.execute(event.orderId);
    result.fold(
      (failure) => emit(OrdersError(failure.message)),
      (cancelledOrder) {
        final updatedOrders = current.orders.map((order) {
          if (order.id == cancelledOrder.id) {
            return cancelledOrder;
          }
          return order;
        }).toList();
        emit(OrderCancelSuccess(updatedOrders, cancelledOrder.id));
      },
    );
  }
}
