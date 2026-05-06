import 'package:basic_diet/domain/usecase/get_order_detail_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'order_tracking_event.dart';
import 'order_tracking_state.dart';

class OrderTrackingBloc
    extends Bloc<OrderTrackingEvent, OrderTrackingState> {
  final GetOrderDetailUseCase _getOrderDetailUseCase;

  OrderTrackingBloc(this._getOrderDetailUseCase)
      : super(const OrderTrackingInitial()) {
    on<LoadOrderDetailEvent>(_onLoadOrderDetail);
    on<RefreshOrderDetailEvent>(_onLoadOrderDetail);
  }

  Future<void> _onLoadOrderDetail(
    OrderTrackingEvent event,
    Emitter<OrderTrackingState> emit,
  ) async {
    final orderId = (event as dynamic).orderId as String;
    emit(const OrderTrackingLoading());
    final result = await _getOrderDetailUseCase.execute(orderId);
    result.fold(
      (failure) => emit(OrderTrackingError(failure.message)),
      (order) => emit(OrderTrackingSuccess(order)),
    );
  }
}
