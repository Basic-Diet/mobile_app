import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/data/request/day_selection_request.dart';
import 'package:basic_diet/data/request/pickup_request.dart';
import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class AppendMealsToDayUseCase
    implements
        BaseUseCase<AppendMealsToDayUseCaseInput, PickupAvailabilityModel> {
  final Repository _repository;

  AppendMealsToDayUseCase(this._repository);

  @override
  Future<Either<Failure, PickupAvailabilityModel>> execute(
    AppendMealsToDayUseCaseInput input,
  ) {
    return _repository.appendMealsToDay(
      input.subscriptionId,
      input.date,
      AppendMealsRequest(
        mealSlots: input.mealSlots,
        idempotencyKey: input.idempotencyKey,
      ),
    );
  }
}

class AppendMealsToDayUseCaseInput extends Equatable {
  final String subscriptionId;
  final String date;
  final List<MealSlotRequest> mealSlots;
  final String idempotencyKey;

  const AppendMealsToDayUseCaseInput({
    required this.subscriptionId,
    required this.date,
    required this.mealSlots,
    required this.idempotencyKey,
  });

  @override
  List<Object?> get props => [subscriptionId, date, mealSlots, idempotencyKey];
}
