import 'package:equatable/equatable.dart';
import 'package:basic_diet/domain/model/order_model.dart';

abstract class OrdersState extends Equatable {
  const OrdersState();

  @override
  List<Object?> get props => [];
}

class OrdersInitial extends OrdersState {
  const OrdersInitial();
}

class OrdersLoading extends OrdersState {
  const OrdersLoading();
}

class OrdersSuccess extends OrdersState {
  final List<OrderModel> orders;
  final bool hasMore;
  final bool isRefreshing;
  final bool isLoadingMore;
  final int currentPage;

  const OrdersSuccess({
    required this.orders,
    this.hasMore = false,
    this.isRefreshing = false,
    this.isLoadingMore = false,
    this.currentPage = 1,
  });

  OrdersSuccess copyWith({
    List<OrderModel>? orders,
    bool? hasMore,
    bool? isRefreshing,
    bool? isLoadingMore,
    int? currentPage,
  }) {
    return OrdersSuccess(
      orders: orders ?? this.orders,
      hasMore: hasMore ?? this.hasMore,
      isRefreshing: isRefreshing ?? this.isRefreshing,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [orders, hasMore, isRefreshing, isLoadingMore, currentPage];
}

class OrdersError extends OrdersState {
  final String message;

  const OrdersError(this.message);

  @override
  List<Object?> get props => [message];
}

class OrderCancelLoading extends OrdersState {
  final List<OrderModel> orders;

  const OrderCancelLoading(this.orders);

  @override
  List<Object?> get props => [orders];
}

class OrderCancelSuccess extends OrdersState {
  final List<OrderModel> orders;
  final String cancelledOrderId;

  const OrderCancelSuccess(this.orders, this.cancelledOrderId);

  @override
  List<Object?> get props => [orders, cancelledOrderId];
}
