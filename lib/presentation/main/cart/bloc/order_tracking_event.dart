import 'package:equatable/equatable.dart';

abstract class OrderTrackingEvent extends Equatable {
  const OrderTrackingEvent();

  @override
  List<Object?> get props => [];
}

class LoadOrderDetailEvent extends OrderTrackingEvent {
  final String orderId;

  const LoadOrderDetailEvent(this.orderId);

  @override
  List<Object?> get props => [orderId];
}

class RefreshOrderDetailEvent extends OrderTrackingEvent {
  final String orderId;

  const RefreshOrderDetailEvent(this.orderId);

  @override
  List<Object?> get props => [orderId];
}
