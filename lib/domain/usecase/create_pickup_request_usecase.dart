import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/subscription_pickup_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class CreatePickupRequestUseCase
    implements
        BaseUseCase<CreatePickupRequestInput, SubscriptionPickupRequestModel> {
  final Repository _repository;

  CreatePickupRequestUseCase(this._repository);

  @override
  Future<Either<Failure, SubscriptionPickupRequestModel>> execute(
    CreatePickupRequestInput input,
  ) {
    final normalizedDate =
        input.date.contains('T') ? input.date.split('T')[0] : input.date;
    return _repository.createPickupRequest(
      subscriptionId: input.subscriptionId,
      date: normalizedDate,
      mealCount: input.mealCount,
      idempotencyKey: input.idempotencyKey,
    );
  }
}

class CreatePickupRequestInput {
  final String subscriptionId;
  final String date;
  final int mealCount;
  final String? idempotencyKey;

  const CreatePickupRequestInput({
    required this.subscriptionId,
    required this.date,
    required this.mealCount,
    this.idempotencyKey,
  });
}
