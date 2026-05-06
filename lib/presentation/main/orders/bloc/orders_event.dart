import 'package:equatable/equatable.dart';

abstract class OrdersEvent extends Equatable {
  const OrdersEvent();

  @override
  List<Object?> get props => [];
}

class LoadOrdersEvent extends OrdersEvent {
  final int page;
  final int limit;

  const LoadOrdersEvent({this.page = 1, this.limit = 20});

  @override
  List<Object?> get props => [page, limit];
}

class RefreshOrdersEvent extends OrdersEvent {
  const RefreshOrdersEvent();
}

class CancelOrderEvent extends OrdersEvent {
  final String orderId;

  const CancelOrderEvent(this.orderId);

  @override
  List<Object?> get props => [orderId];
}
