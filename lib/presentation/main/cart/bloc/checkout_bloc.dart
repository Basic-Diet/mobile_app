import 'package:basic_diet/domain/usecase/get_order_quote_usecase.dart';
import 'package:basic_diet/domain/usecase/create_order_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'checkout_event.dart';
import 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final GetOrderQuoteUseCase _getOrderQuoteUseCase;
  final CreateOrderUseCase _createOrderUseCase;

  CheckoutBloc(
    this._getOrderQuoteUseCase,
    this._createOrderUseCase,
  ) : super(const CheckoutInitial()) {
    on<GetOrderQuoteEvent>(_onGetOrderQuote);
    on<CreateOrderEvent>(_onCreateOrder);
    on<ResetCheckoutEvent>(_onResetCheckout);
  }

  Future<void> _onGetOrderQuote(
    GetOrderQuoteEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(const CheckoutLoaded(quoteStatus: OrderQuoteStatus.loading));
    final result = await _getOrderQuoteUseCase.execute(event.request);
    result.fold(
      (failure) => emit(
        CheckoutLoaded(
          quoteStatus: OrderQuoteStatus.failure,
          quoteErrorMessage: failure.message,
          quoteErrorCode: failure.code,
        ),
      ),
      (quote) => emit(
        CheckoutLoaded(
          quoteStatus: OrderQuoteStatus.success,
          quote: quote,
        ),
      ),
    );
  }

  Future<void> _onCreateOrder(
    CreateOrderEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    if (state is CheckoutLoaded) {
      final current = state as CheckoutLoaded;
      emit(
        current.copyWith(
          createStatus: OrderCreateStatus.loading,
          createErrorMessage: null,
        ),
      );
    } else {
      emit(const CheckoutLoaded(createStatus: OrderCreateStatus.loading));
    }

    final result = await _createOrderUseCase.execute(event.request);
    result.fold(
      (failure) {
        if (state is CheckoutLoaded) {
          final current = state as CheckoutLoaded;
          emit(
            current.copyWith(
              createStatus: OrderCreateStatus.failure,
              createErrorMessage: failure.message,
            ),
          );
        } else {
          emit(
            CheckoutLoaded(
              createStatus: OrderCreateStatus.failure,
              createErrorMessage: failure.message,
            ),
          );
        }
      },
      (order) {
        if (state is CheckoutLoaded) {
          final current = state as CheckoutLoaded;
          emit(
            current.copyWith(
              createStatus: OrderCreateStatus.success,
              order: order,
            ),
          );
        } else {
          emit(
            CheckoutLoaded(
              createStatus: OrderCreateStatus.success,
              order: order,
            ),
          );
        }
      },
    );
  }

  void _onResetCheckout(ResetCheckoutEvent event, Emitter<CheckoutState> emit) {
    emit(const CheckoutInitial());
  }
}
