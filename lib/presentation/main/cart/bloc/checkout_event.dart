import 'package:equatable/equatable.dart';
import 'package:basic_diet/domain/model/order_quote_request_model.dart';
import 'package:basic_diet/domain/model/create_order_request_model.dart';

abstract class CheckoutEvent extends Equatable {
  const CheckoutEvent();

  @override
  List<Object?> get props => [];
}

class GetOrderQuoteEvent extends CheckoutEvent {
  final OrderQuoteRequestModel request;

  const GetOrderQuoteEvent(this.request);

  @override
  List<Object?> get props => [request];
}

class CreateOrderEvent extends CheckoutEvent {
  final CreateOrderRequestModel request;
  final String idempotencyKey;

  const CreateOrderEvent(this.request, {required this.idempotencyKey});

  @override
  List<Object?> get props => [request, idempotencyKey];
}

class VerifyPaymentEvent extends CheckoutEvent {
  final String orderId;
  final String paymentId;
  final String? providerPaymentId;
  final String? providerInvoiceId;

  const VerifyPaymentEvent({
    required this.orderId,
    required this.paymentId,
    this.providerPaymentId,
    this.providerInvoiceId,
  });

  @override
  List<Object?> get props => [orderId, paymentId, providerPaymentId, providerInvoiceId];
}

class ResetCheckoutEvent extends CheckoutEvent {
  const ResetCheckoutEvent();
}
