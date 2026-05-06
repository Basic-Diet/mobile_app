import 'package:equatable/equatable.dart';
import 'package:basic_diet/domain/model/order_quote_model.dart';
import 'package:basic_diet/domain/model/one_time_order_model.dart';

abstract class CheckoutState extends Equatable {
  const CheckoutState();

  @override
  List<Object?> get props => [];
}

class CheckoutInitial extends CheckoutState {
  const CheckoutInitial();
}

enum OrderQuoteStatus { initial, loading, success, failure }

enum OrderCreateStatus { initial, loading, success, failure }

class CheckoutLoaded extends CheckoutState {
  final OrderQuoteStatus quoteStatus;
  final OrderQuoteModel? quote;
  final String? quoteErrorMessage;
  final dynamic quoteErrorCode;

  final OrderCreateStatus createStatus;
  final OneTimeOrderModel? order;
  final String? createErrorMessage;

  const CheckoutLoaded({
    this.quoteStatus = OrderQuoteStatus.initial,
    this.quote,
    this.quoteErrorMessage,
    this.quoteErrorCode,
    this.createStatus = OrderCreateStatus.initial,
    this.order,
    this.createErrorMessage,
  });

  CheckoutLoaded copyWith({
    OrderQuoteStatus? quoteStatus,
    Object? quote = _noChange,
    Object? quoteErrorMessage = _noChange,
    Object? quoteErrorCode = _noChange,
    OrderCreateStatus? createStatus,
    Object? order = _noChange,
    Object? createErrorMessage = _noChange,
  }) {
    return CheckoutLoaded(
      quoteStatus: quoteStatus ?? this.quoteStatus,
      quote: identical(quote, _noChange)
          ? this.quote
          : quote as OrderQuoteModel?,
      quoteErrorMessage: identical(quoteErrorMessage, _noChange)
          ? this.quoteErrorMessage
          : quoteErrorMessage as String?,
      quoteErrorCode: identical(quoteErrorCode, _noChange)
          ? this.quoteErrorCode
          : quoteErrorCode,
      createStatus: createStatus ?? this.createStatus,
      order: identical(order, _noChange)
          ? this.order
          : order as OneTimeOrderModel?,
      createErrorMessage: identical(createErrorMessage, _noChange)
          ? this.createErrorMessage
          : createErrorMessage as String?,
    );
  }

  @override
  List<Object?> get props => [
    quoteStatus,
    quote,
    quoteErrorMessage,
    quoteErrorCode,
    createStatus,
    order,
    createErrorMessage,
  ];
}

const Object _noChange = Object();
