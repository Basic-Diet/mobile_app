import 'package:equatable/equatable.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/domain/model/order_timeline_model.dart';

abstract class OrderTrackingState extends Equatable {
  const OrderTrackingState();

  OrderModel? get orderOrNull;
  OrderTimelineModel? get timeline;

  @override
  List<Object?> get props => [];
}

class OrderTrackingInitial extends OrderTrackingState {
  const OrderTrackingInitial();

  @override
  OrderModel? get orderOrNull => null;
  @override
  OrderTimelineModel? get timeline => null;
}

class OrderTrackingLoading extends OrderTrackingState {
  const OrderTrackingLoading();

  @override
  OrderModel? get orderOrNull => null;
  @override
  OrderTimelineModel? get timeline => null;
}

class OrderTrackingRefreshing extends OrderTrackingState {
  final OrderModel order;
  final OrderTimelineModel? _timeline;

  const OrderTrackingRefreshing(this.order, OrderTimelineModel? timeline)
    : _timeline = timeline;

  @override
  OrderModel? get orderOrNull => order;
  @override
  OrderTimelineModel? get timeline => _timeline;

  @override
  List<Object?> get props => [order, _timeline];
}

class OrderTrackingSuccess extends OrderTrackingState {
  final OrderModel order;
  final OrderTimelineModel? _timeline;

  const OrderTrackingSuccess({
    required this.order,
    OrderTimelineModel? timeline,
  }) : _timeline = timeline;

  @override
  OrderModel? get orderOrNull => order;
  @override
  OrderTimelineModel? get timeline => _timeline;

  @override
  List<Object?> get props => [order, _timeline];
}

class OrderTrackingVerifying extends OrderTrackingState {
  final OrderModel order;
  final OrderTimelineModel? _timeline;

  const OrderTrackingVerifying({
    required this.order,
    OrderTimelineModel? timeline,
  }) : _timeline = timeline;

  @override
  OrderModel? get orderOrNull => order;
  @override
  OrderTimelineModel? get timeline => _timeline;

  @override
  List<Object?> get props => [order, _timeline];
}

class OrderTrackingVerifyProcessing extends OrderTrackingState {
  final OrderModel order;
  final OrderTimelineModel? _timeline;
  final String orderStatus;

  const OrderTrackingVerifyProcessing({
    required this.order,
    OrderTimelineModel? timeline,
    required this.orderStatus,
  }) : _timeline = timeline;

  @override
  OrderModel? get orderOrNull => order;
  @override
  OrderTimelineModel? get timeline => _timeline;

  @override
  List<Object?> get props => [order, _timeline, orderStatus];
}

class OrderTrackingVerifyFailure extends OrderTrackingState {
  final OrderModel order;
  final OrderTimelineModel? _timeline;
  final String message;

  const OrderTrackingVerifyFailure({
    required this.order,
    OrderTimelineModel? timeline,
    required this.message,
  }) : _timeline = timeline;

  @override
  OrderModel? get orderOrNull => order;
  @override
  OrderTimelineModel? get timeline => _timeline;

  @override
  List<Object?> get props => [order, _timeline, message];
}

class OrderTrackingError extends OrderTrackingState {
  final String message;

  const OrderTrackingError(this.message);

  @override
  OrderModel? get orderOrNull => null;
  @override
  OrderTimelineModel? get timeline => null;

  @override
  List<Object?> get props => [message];
}
