import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/create_order_request_model.dart';
import 'package:basic_diet/domain/model/one_time_order_model.dart';
import 'package:basic_diet/domain/model/order_quote_model.dart';
import 'package:basic_diet/domain/model/order_quote_request_model.dart';
import 'package:basic_diet/domain/model/verify_payment_model.dart';
import 'package:basic_diet/domain/model/verify_payment_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/create_order_usecase.dart';
import 'package:basic_diet/domain/usecase/get_order_quote_usecase.dart';
import 'package:basic_diet/domain/usecase/verify_order_payment_usecase.dart';
import 'package:basic_diet/presentation/main/cart/bloc/checkout_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/checkout_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/checkout_state.dart';
import 'package:basic_diet/presentation/main/cart/checkout_screen.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('shouldVerifyPaymentAfterWebView', () {
    test('verifies only after explicit success result', () {
      expect(shouldVerifyPaymentAfterWebView(true), isTrue);
      expect(shouldVerifyPaymentAfterWebView(false), isFalse);
      expect(shouldVerifyPaymentAfterWebView(null), isFalse);
    });
  });

  group('CheckoutBloc payment result handling', () {
    test('payment success result verifies payment', () async {
      final repository = _CheckoutRepository();
      final bloc = _checkoutBloc(repository);

      final expectation = expectLater(
        bloc.stream,
        emitsThrough(
          isA<CheckoutLoaded>().having(
            (state) => state.verifyStatus,
            'verifyStatus',
            OrderVerifyStatus.success,
          ),
        ),
      );

      bloc.add(_createOrderEvent());
      await _waitForCreateSuccess(bloc);

      if (shouldVerifyPaymentAfterWebView(true)) {
        bloc.add(
          const VerifyPaymentEvent(
            orderId: 'order-1',
            paymentId: 'payment-1',
            providerInvoiceId: 'invoice-1',
          ),
        );
      }

      await expectation;
      await bloc.close();

      expect(repository.verifiedOrderId, 'order-1');
      expect(repository.verifiedPaymentId, 'payment-1');
      expect(repository.verifiedRequest?.providerInvoiceId, 'invoice-1');
    });

    test('cancel, back, and close results do not verify payment', () async {
      for (final result in <bool?>[false, null]) {
        final repository = _CheckoutRepository();
        final bloc = _checkoutBloc(repository);

        bloc.add(_createOrderEvent());
        await _waitForCreateSuccess(bloc);

        if (shouldVerifyPaymentAfterWebView(result)) {
          bloc.add(
            const VerifyPaymentEvent(
              orderId: 'order-1',
              paymentId: 'payment-1',
              providerInvoiceId: 'invoice-1',
            ),
          );
        } else {
          bloc.add(const CancelCheckoutPaymentEvent());
        }

        await _waitForCancelState(bloc);
        await bloc.close();

        expect(repository.verifyCallCount, 0);
      }
    });

    test('cancel state clears created order and payment verification state', () async {
      final repository = _CheckoutRepository();
      final bloc = _checkoutBloc(repository);

      bloc.add(_createOrderEvent());
      await _waitForCreateSuccess(bloc);
      bloc.add(const CancelCheckoutPaymentEvent());
      final cancelState = await _waitForCancelState(bloc);
      await bloc.close();

      expect(cancelState.createStatus, OrderCreateStatus.initial);
      expect(cancelState.order, isNull);
      expect(cancelState.createErrorMessage, isNull);
      expect(cancelState.createErrorCode, isNull);
      expect(cancelState.verifyStatus, OrderVerifyStatus.initial);
      expect(cancelState.verifyResult, isNull);
      expect(cancelState.verifyErrorMessage, isNull);
    });
  });
}

CheckoutBloc _checkoutBloc(_CheckoutRepository repository) {
  return CheckoutBloc(
    GetOrderQuoteUseCase(repository),
    CreateOrderUseCase(repository),
    VerifyOrderPaymentUseCase(repository),
  );
}

CreateOrderEvent _createOrderEvent() {
  return const CreateOrderEvent(
    CreateOrderRequestModel(
      fulfillmentMethod: 'pickup',
      items: [],
      successUrl: 'https://basicdiet145.onrender.com/payment-success',
      backUrl: 'https://basicdiet145.onrender.com/payment-cancel',
    ),
    idempotencyKey: 'test-key',
  );
}

Future<void> _waitForCreateSuccess(CheckoutBloc bloc) async {
  await bloc.stream.firstWhere(
    (state) =>
        state is CheckoutLoaded &&
        state.createStatus == OrderCreateStatus.success,
  );
}

Future<CheckoutLoaded> _waitForCancelState(CheckoutBloc bloc) async {
  return await bloc.stream.firstWhere(
        (state) =>
            state is CheckoutLoaded &&
            state.createStatus == OrderCreateStatus.initial &&
            state.order == null &&
            state.verifyStatus == OrderVerifyStatus.initial,
      )
      as CheckoutLoaded;
}

class _CheckoutRepository implements Repository {
  int verifyCallCount = 0;
  String? verifiedOrderId;
  String? verifiedPaymentId;
  VerifyPaymentRequestModel? verifiedRequest;

  @override
  Future<Either<Failure, OneTimeOrderModel>> createOrder(
    CreateOrderRequestModel request, {
    required String idempotencyKey,
  }) async {
    return right(
      const OneTimeOrderModel(
        orderId: 'order-1',
        paymentId: 'payment-1',
        paymentUrl: 'https://pay.example.com/session',
        invoiceId: 'invoice-1',
        status: 'pending',
        paymentStatus: 'pending',
      ),
    );
  }

  @override
  Future<Either<Failure, VerifyPaymentModel>> verifyOrderPayment(
    String orderId,
    String paymentId,
    VerifyPaymentRequestModel request,
  ) async {
    verifyCallCount += 1;
    verifiedOrderId = orderId;
    verifiedPaymentId = paymentId;
    verifiedRequest = request;
    return right(
      VerifyPaymentModel(
        orderId: orderId,
        paymentId: paymentId,
        orderStatus: 'accepted',
        paymentStatus: 'paid',
        applied: true,
        providerInvoiceStatus: 'paid',
        isFinal: true,
      ),
    );
  }

  @override
  Future<Either<Failure, OrderQuoteModel>> getOrderQuote(
    OrderQuoteRequestModel request,
  ) async {
    return right(
      const OrderQuoteModel(
        currency: 'SAR',
        items: [],
        pricing: OrderQuotePricingModel(
          subtotalHalala: 0,
          deliveryFeeHalala: 0,
          discountHalala: 0,
          totalHalala: 0,
          vatPercentage: 0,
          vatHalala: 0,
          vatIncluded: true,
        ),
      ),
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
