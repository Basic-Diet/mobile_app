import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/verify_payment_model.dart';
import 'package:basic_diet/domain/model/verify_payment_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class VerifyOrderPaymentUseCase
    implements
        BaseUseCase<VerifyOrderPaymentInput, VerifyPaymentModel> {
  final Repository _repository;

  VerifyOrderPaymentUseCase(this._repository);

  @override
  Future<Either<Failure, VerifyPaymentModel>> execute(
    VerifyOrderPaymentInput input,
  ) async {
    return await _repository.verifyOrderPayment(
      input.orderId,
      input.paymentId,
      input.request,
    );
  }
}

class VerifyOrderPaymentInput {
  final String orderId;
  final String paymentId;
  final VerifyPaymentRequestModel request;

  const VerifyOrderPaymentInput({
    required this.orderId,
    required this.paymentId,
    required this.request,
  });
}
