import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetPickupAvailabilityUseCase
    implements
        BaseUseCase<
          GetPickupAvailabilityUseCaseInput,
          PickupAvailabilityModel
        > {
  final Repository _repository;

  GetPickupAvailabilityUseCase(this._repository);

  @override
  Future<Either<Failure, PickupAvailabilityModel>> execute(
    GetPickupAvailabilityUseCaseInput input,
  ) {
    return _repository.getPickupAvailability(
      input.subscriptionId,
      input.date,
      includeUnavailable: input.includeUnavailable,
      includeHistory: input.includeHistory,
    );
  }
}

class GetPickupAvailabilityUseCaseInput extends Equatable {
  final String subscriptionId;
  final String date;
  final bool? includeUnavailable;
  final bool? includeHistory;

  const GetPickupAvailabilityUseCaseInput({
    required this.subscriptionId,
    required this.date,
    this.includeUnavailable,
    this.includeHistory,
  });

  @override
  List<Object?> get props => [
    subscriptionId,
    date,
    includeUnavailable,
    includeHistory,
  ];
}
