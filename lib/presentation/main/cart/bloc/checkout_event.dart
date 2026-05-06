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

  const CreateOrderEvent(this.request);

  @override
  List<Object?> get props => [request];
}

class ResetCheckoutEvent extends CheckoutEvent {
  const ResetCheckoutEvent();
}
