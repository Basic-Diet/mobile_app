import 'package:basic_diet/domain/model/verify_payment_request_model.dart';
import 'package:basic_diet/domain/usecase/get_order_detail_usecase.dart';
import 'package:basic_diet/domain/usecase/verify_order_payment_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'order_tracking_event.dart';
import 'order_tracking_state.dart';

class OrderTrackingBloc
    extends Bloc<OrderTrackingEvent, OrderTrackingState> {
  final GetOrderDetailUseCase _getOrderDetailUseCase;
  final VerifyOrderPaymentUseCase _verifyOrderPaymentUseCase;

  OrderTrackingBloc(
    this._getOrderDetailUseCase,
    this._verifyOrderPaymentUseCase,
  ) : super(const OrderTrackingInitial()) {
    on<LoadOrderDetailEvent>(_onLoadOrderDetail);
    on<RefreshOrderDetailEvent>(_onLoadOrderDetail);
    on<VerifyOrderPaymentEvent>(_onVerifyOrderPayment);
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
      (order) {
        emit(OrderTrackingSuccess(order));
        if (order.status == 'pending_payment' && order.paymentId.isNotEmpty) {
          add(VerifyOrderPaymentEvent(order.id, order.paymentId));
        }
      },
    );
  }

  Future<void> _onVerifyOrderPayment(
    VerifyOrderPaymentEvent event,
    Emitter<OrderTrackingState> emit,
  ) async {
    if (state is! OrderTrackingSuccess) return;
    final current = state as OrderTrackingSuccess;
    emit(OrderTrackingVerifying(current.order));

    final result = await _verifyOrderPaymentUseCase.execute(
      VerifyOrderPaymentInput(
        orderId: current.order.id,
        paymentId: event.paymentId,
        request: const VerifyPaymentRequestModel(),
      ),
    );

    result.fold(
      (failure) => emit(
        OrderTrackingVerifyFailure(current.order, failure.message),
      ),
      (verify) async {
        if (verify.isFinal) {
          add(RefreshOrderDetailEvent(current.order.id));
        } else {
          emit(
            OrderTrackingVerifyProcessing(current.order, verify.orderStatus),
          );
        }
      },
    );
  }
}
