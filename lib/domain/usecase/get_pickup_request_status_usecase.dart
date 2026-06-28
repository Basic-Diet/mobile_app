import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetPickupRequestStatusUseCase
    implements
        BaseUseCase<GetPickupRequestStatusUseCaseInput, PickupRequestModel> {
  final Repository _repository;

  GetPickupRequestStatusUseCase(this._repository);

  @override
  Future<Either<Failure, PickupRequestModel>> execute(
    GetPickupRequestStatusUseCaseInput input,
  ) {
    return _repository.getPickupRequestStatus(
      input.subscriptionId,
      input.requestId,
    );
  }
}

class GetPickupRequestStatusUseCaseInput extends Equatable {
  final String subscriptionId;
  final String requestId;

  const GetPickupRequestStatusUseCaseInput({
    required this.subscriptionId,
    required this.requestId,
  });

  @override
  List<Object?> get props => [subscriptionId, requestId];
}
