import 'dart:async';

import 'package:basic_diet/domain/model/verify_payment_request_model.dart';
import 'package:basic_diet/domain/usecase/get_order_detail_usecase.dart';
import 'package:basic_diet/domain/usecase/get_order_timeline_usecase.dart';
import 'package:basic_diet/domain/usecase/verify_order_payment_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'order_tracking_event.dart';
import 'order_tracking_state.dart';

class OrderTrackingBloc extends Bloc<OrderTrackingEvent, OrderTrackingState> {
  final GetOrderDetailUseCase _getOrderDetailUseCase;
  final VerifyOrderPaymentUseCase _verifyOrderPaymentUseCase;
  final GetOrderTimelineUseCase _getOrderTimelineUseCase;

  Timer? _pollingTimer;
  static const Duration _pollingInterval = Duration(seconds: 10);

  OrderTrackingBloc(
    this._getOrderDetailUseCase,
    this._verifyOrderPaymentUseCase,
    this._getOrderTimelineUseCase,
  ) : super(const OrderTrackingInitial()) {
    on<LoadOrderDetailEvent>(_onLoadOrderDetail);
    on<RefreshOrderDetailEvent>(_onRefreshOrderDetail);
    on<VerifyOrderPaymentEvent>(_onVerifyOrderPayment);
    on<FetchOrderTimelineEvent>(_onFetchOrderTimeline);
    on<StartPollingEvent>(_onStartPolling);
    on<StopPollingEvent>(_onStopPolling);
  }

  Future<void> _onLoadOrderDetail(
    LoadOrderDetailEvent event,
    Emitter<OrderTrackingState> emit,
  ) async {
    emit(const OrderTrackingLoading());
    await _fetchOrderAndTimeline(event.orderId, emit);
  }

  Future<void> _onRefreshOrderDetail(
    RefreshOrderDetailEvent event,
    Emitter<OrderTrackingState> emit,
  ) async {
    final currentOrder = state.orderOrNull;
    if (currentOrder != null) {
      emit(OrderTrackingRefreshing(currentOrder, state.timeline));
    }
    await _fetchOrderAndTimeline(event.orderId, emit);
  }

  Future<void> _fetchOrderAndTimeline(
    String orderId,
    Emitter<OrderTrackingState> emit,
  ) async {
    final orderResult = await _getOrderDetailUseCase.execute(orderId);

    await orderResult.fold(
      (failure) async {
        if (!isClosed) {
          emit(OrderTrackingError(failure.message));
        }
      },
      (order) async {
        // Fetch timeline in parallel
        final timelineResult = await _getOrderTimelineUseCase.execute(orderId);
        final timeline = timelineResult.fold((_) => state.timeline, (t) => t);

        if (!isClosed) {
          emit(OrderTrackingSuccess(order: order, timeline: timeline));
          if (order.status.value == 'pending_payment' &&
              order.paymentId.isNotEmpty) {
            add(VerifyOrderPaymentEvent(order.id, order.paymentId));
          }
        }
      },
    );
  }

  Future<void> _onVerifyOrderPayment(
    VerifyOrderPaymentEvent event,
    Emitter<OrderTrackingState> emit,
  ) async {
    final currentOrder = state.orderOrNull;
    if (currentOrder == null) return;

    emit(OrderTrackingVerifying(order: currentOrder, timeline: state.timeline));

    final result = await _verifyOrderPaymentUseCase.execute(
      VerifyOrderPaymentInput(
        orderId: currentOrder.id,
        paymentId: event.paymentId,
        request: const VerifyPaymentRequestModel(),
      ),
    );

    result.fold(
      (failure) {
        if (!isClosed) {
          emit(
            OrderTrackingVerifyFailure(
              order: currentOrder,
              timeline: state.timeline,
              message: failure.message,
            ),
          );
        }
      },
      (verify) async {
        if (verify.isFinal) {
          add(RefreshOrderDetailEvent(currentOrder.id));
        } else {
          if (!isClosed) {
            emit(
              OrderTrackingVerifyProcessing(
                order: currentOrder,
                timeline: state.timeline,
                orderStatus: verify.orderStatus,
              ),
            );
          }
        }
      },
    );
  }

  Future<void> _onFetchOrderTimeline(
    FetchOrderTimelineEvent event,
    Emitter<OrderTrackingState> emit,
  ) async {
    final result = await _getOrderTimelineUseCase.execute(event.orderId);
    result.fold(
      (_) {
        /* ignore */
      },
      (timeline) {
        final currentOrder = state.orderOrNull;
        if (currentOrder != null && !isClosed) {
          emit(OrderTrackingSuccess(order: currentOrder, timeline: timeline));
        }
      },
    );
  }

  void _onStartPolling(
    StartPollingEvent event,
    Emitter<OrderTrackingState> emit,
  ) {
    _stopPolling();
    _pollingTimer = Timer.periodic(_pollingInterval, (_) {
      if (isClosed) return;
      final order = state.orderOrNull;
      if (order == null || order.status.isFinal) {
        _stopPolling();
        return;
      }
      add(RefreshOrderDetailEvent(order.id));
    });
  }

  void _onStopPolling(
    StopPollingEvent event,
    Emitter<OrderTrackingState> emit,
  ) {
    _stopPolling();
  }

  void _stopPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }

  @override
  Future<void> close() {
    _stopPolling();
    return super.close();
  }
}
