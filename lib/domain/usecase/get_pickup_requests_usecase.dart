import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetPickupRequestsUseCase
    implements
        BaseUseCase<GetPickupRequestsUseCaseInput, List<PickupRequestModel>> {
  final Repository _repository;

  GetPickupRequestsUseCase(this._repository);

  @override
  Future<Either<Failure, List<PickupRequestModel>>> execute(
    GetPickupRequestsUseCaseInput input,
  ) {
    return _repository.getPickupRequests(
      input.subscriptionId,
      date: input.date,
      status: input.status,
    );
  }
}

class GetPickupRequestsUseCaseInput extends Equatable {
  final String subscriptionId;
  final String? date;
  final String? status;

  const GetPickupRequestsUseCaseInput({
    required this.subscriptionId,
    this.date,
    this.status,
  });

  @override
  List<Object?> get props => [subscriptionId, date, status];
}
