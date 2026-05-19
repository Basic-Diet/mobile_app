import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/subscription_pickup_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetPickupRequestStatusUseCase
    implements
        BaseUseCase<
          GetPickupRequestStatusInput,
          SubscriptionPickupRequestModel
        > {
  final Repository _repository;

  GetPickupRequestStatusUseCase(this._repository);

  @override
  Future<Either<Failure, SubscriptionPickupRequestModel>> execute(
    GetPickupRequestStatusInput input,
  ) {
    return _repository.getPickupRequestStatus(
      subscriptionId: input.subscriptionId,
      requestId: input.requestId,
    );
  }
}

class GetPickupRequestStatusInput {
  final String subscriptionId;
  final String requestId;

  const GetPickupRequestStatusInput({
    required this.subscriptionId,
    required this.requestId,
  });
}
