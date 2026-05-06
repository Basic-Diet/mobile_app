import 'package:equatable/equatable.dart';
import 'package:basic_diet/domain/model/order_model.dart';

abstract class OrderTrackingState extends Equatable {
  const OrderTrackingState();

  @override
  List<Object?> get props => [];
}

class OrderTrackingInitial extends OrderTrackingState {
  const OrderTrackingInitial();
}

class OrderTrackingLoading extends OrderTrackingState {
  const OrderTrackingLoading();
}

class OrderTrackingSuccess extends OrderTrackingState {
  final OrderModel order;

  const OrderTrackingSuccess(this.order);

  @override
  List<Object?> get props => [order];
}

class OrderTrackingError extends OrderTrackingState {
  final String message;

  const OrderTrackingError(this.message);

  @override
  List<Object?> get props => [message];
}
