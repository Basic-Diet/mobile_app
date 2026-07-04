import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/subscription_checkout_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class RenewSubscriptionInput extends Equatable {
  final String subscriptionId;
  final SubscriptionCheckoutRequestModel request;

  const RenewSubscriptionInput({
    required this.subscriptionId,
    required this.request,
  });

  @override
  List<Object?> get props => [subscriptionId, request];
}

class RenewSubscriptionUseCase
    implements BaseUseCase<RenewSubscriptionInput, SubscriptionCheckoutModel> {
  final Repository _repository;

  RenewSubscriptionUseCase(this._repository);

  @override
  Future<Either<Failure, SubscriptionCheckoutModel>> execute(
    RenewSubscriptionInput input,
  ) async {
    return await _repository.renewSubscription(
      input.subscriptionId,
      input.request,
    );
  }
}
