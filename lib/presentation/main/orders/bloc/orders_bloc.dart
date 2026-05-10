import 'package:basic_diet/domain/usecase/get_orders_usecase.dart';
import 'package:basic_diet/domain/usecase/cancel_order_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'orders_event.dart';
import 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final GetOrdersUseCase _getOrdersUseCase;
  final CancelOrderUseCase _cancelOrderUseCase;

  OrdersBloc(this._getOrdersUseCase, this._cancelOrderUseCase)
    : super(const OrdersInitial()) {
    on<LoadOrdersEvent>(_onLoadOrders);
    on<RefreshOrdersEvent>(_onRefreshOrders);
    on<LoadMoreOrdersEvent>(_onLoadMoreOrders);
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
      (failure) {
        if (!isClosed) {
          emit(OrdersError(failure.message));
        }
      },
      (ordersList) {
        if (!isClosed) {
          emit(
            OrdersSuccess(
              orders: ordersList.items,
              hasMore: ordersList.pagination.page < ordersList.pagination.pages,
              currentPage: ordersList.pagination.page,
            ),
          );
        }
      },
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
      (failure) {
        if (!isClosed) {
          emit(OrdersError(failure.message));
        }
      },
      (ordersList) {
        if (!isClosed) {
          emit(
            OrdersSuccess(
              orders: ordersList.items,
              hasMore: ordersList.pagination.page < ordersList.pagination.pages,
              currentPage: ordersList.pagination.page,
              isRefreshing: false,
            ),
          );
        }
      },
    );
  }

  Future<void> _onLoadMoreOrders(
    LoadMoreOrdersEvent event,
    Emitter<OrdersState> emit,
  ) async {
    if (state is! OrdersSuccess) return;
    final current = state as OrdersSuccess;
    if (!current.hasMore || current.isLoadingMore) return;

    emit(current.copyWith(isLoadingMore: true));
    final nextPage = current.currentPage + 1;
    final result = await _getOrdersUseCase.execute(
      GetOrdersInput(page: nextPage, limit: 20),
    );
    result.fold(
      (failure) {
        if (!isClosed) {
          emit(current.copyWith(isLoadingMore: false));
        }
      },
      (ordersList) {
        final allOrders = [...current.orders, ...ordersList.items];
        if (!isClosed) {
          emit(
            OrdersSuccess(
              orders: allOrders,
              hasMore: ordersList.pagination.page < ordersList.pagination.pages,
              currentPage: ordersList.pagination.page,
              isLoadingMore: false,
            ),
          );
        }
      },
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
      (failure) {
        if (!isClosed) {
          emit(OrdersError(failure.message));
        }
      },
      (cancelledOrder) {
        final updatedOrders =
            current.orders.map((order) {
              if (order.id == cancelledOrder.id) {
                return cancelledOrder;
              }
              return order;
            }).toList();
        if (!isClosed) {
          emit(OrderCancelSuccess(updatedOrders, cancelledOrder.id));
        }
      },
    );
  }
}
