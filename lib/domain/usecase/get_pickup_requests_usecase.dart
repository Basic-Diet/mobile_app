import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetPickupRequestsUseCase
    implements BaseUseCase<String, List<PickupRequestModel>> {
  final Repository _repository;

  GetPickupRequestsUseCase(this._repository);

  @override
  Future<Either<Failure, List<PickupRequestModel>>> execute(
    String subscriptionId,
  ) {
    return _repository.getPickupRequests(subscriptionId);
  }
}
