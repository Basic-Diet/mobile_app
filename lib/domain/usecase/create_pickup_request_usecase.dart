import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/data/request/pickup_request.dart';
import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class CreatePickupRequestUseCase
    implements
        BaseUseCase<CreatePickupRequestUseCaseInput, PickupRequestModel> {
  final Repository _repository;

  CreatePickupRequestUseCase(this._repository);

  @override
  Future<Either<Failure, PickupRequestModel>> execute(
    CreatePickupRequestUseCaseInput input,
  ) {
    return _repository.createPickupRequest(
      input.subscriptionId,
      CreatePickupRequest(
        date: input.date,
        subscriptionDayId:
            input.subscriptionDayId.isEmpty ? null : input.subscriptionDayId,
        selectedPickupItemIds: input.selectedPickupItemIds,
        selectedMealSlotIds: input.selectedMealSlotIds,
        mealCount: input.mealCount,
        idempotencyKey: input.idempotencyKey,
      ),
    );
  }
}

class CreatePickupRequestUseCaseInput extends Equatable {
  final String subscriptionId;
  final String date;
  final String subscriptionDayId;
  final List<String> selectedPickupItemIds;
  final List<String>? selectedMealSlotIds;
  final int? mealCount;
  final String idempotencyKey;

  const CreatePickupRequestUseCaseInput({
    required this.subscriptionId,
    required this.date,
    required this.selectedPickupItemIds,
    required this.idempotencyKey,
    this.selectedMealSlotIds,
    this.mealCount,
    this.subscriptionDayId = '',
  });

  @override
  List<Object?> get props => [
    subscriptionId,
    date,
    subscriptionDayId,
    selectedPickupItemIds,
    selectedMealSlotIds,
    mealCount,
    idempotencyKey,
  ];
}
