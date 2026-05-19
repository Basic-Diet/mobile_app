import 'package:equatable/equatable.dart';
import 'package:basic_diet/domain/model/order_quote_model.dart';
import 'package:basic_diet/domain/model/one_time_order_model.dart';
import 'package:basic_diet/domain/model/verify_payment_model.dart';

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

enum OrderVerifyStatus { initial, loading, success, failure, processing }

class CheckoutLoaded extends CheckoutState {
  final OrderQuoteStatus quoteStatus;
  final OrderQuoteModel? quote;
  final String? quoteErrorMessage;
  final dynamic quoteErrorCode;

  final OrderCreateStatus createStatus;
  final OneTimeOrderModel? order;
  final String? createErrorMessage;
  final dynamic createErrorCode;

  final OrderVerifyStatus verifyStatus;
  final VerifyPaymentModel? verifyResult;
  final String? verifyErrorMessage;

  const CheckoutLoaded({
    this.quoteStatus = OrderQuoteStatus.initial,
    this.quote,
    this.quoteErrorMessage,
    this.quoteErrorCode,
    this.createStatus = OrderCreateStatus.initial,
    this.order,
    this.createErrorMessage,
    this.createErrorCode,
    this.verifyStatus = OrderVerifyStatus.initial,
    this.verifyResult,
    this.verifyErrorMessage,
  });

  CheckoutLoaded copyWith({
    OrderQuoteStatus? quoteStatus,
    Object? quote = _noChange,
    Object? quoteErrorMessage = _noChange,
    Object? quoteErrorCode = _noChange,
    OrderCreateStatus? createStatus,
    Object? order = _noChange,
    Object? createErrorMessage = _noChange,
    Object? createErrorCode = _noChange,
    OrderVerifyStatus? verifyStatus,
    Object? verifyResult = _noChange,
    Object? verifyErrorMessage = _noChange,
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
      createErrorCode: identical(createErrorCode, _noChange)
          ? this.createErrorCode
          : createErrorCode,
      verifyStatus: verifyStatus ?? this.verifyStatus,
      verifyResult: identical(verifyResult, _noChange)
          ? this.verifyResult
          : verifyResult as VerifyPaymentModel?,
      verifyErrorMessage: identical(verifyErrorMessage, _noChange)
          ? this.verifyErrorMessage
          : verifyErrorMessage as String?,
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
    createErrorCode,
    verifyStatus,
    verifyResult,
    verifyErrorMessage,
  ];
}

const Object _noChange = Object();
