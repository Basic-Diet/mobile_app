import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/subscription_pickup_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetPickupRequestsUseCase
    implements
        BaseUseCase<GetPickupRequestsInput, SubscriptionPickupRequestsModel> {
  final Repository _repository;

  GetPickupRequestsUseCase(this._repository);

  @override
  Future<Either<Failure, SubscriptionPickupRequestsModel>> execute(
    GetPickupRequestsInput input,
  ) {
    return _repository.getPickupRequests(
      subscriptionId: input.subscriptionId,
      date: input.date,
      status: input.status,
    );
  }
}

class GetPickupRequestsInput {
  final String subscriptionId;
  final String? date;
  final String status;

  const GetPickupRequestsInput({
    required this.subscriptionId,
    this.date,
    this.status = 'active',
  });
}
