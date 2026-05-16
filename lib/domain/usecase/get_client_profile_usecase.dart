import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/client_profile_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetClientProfileUseCase
    implements BaseUseCase<Object?, ClientProfileModel> {
  final Repository _repository;

  GetClientProfileUseCase(this._repository);

  @override
  Future<Either<Failure, ClientProfileModel>> execute(Object? input) {
    return _repository.getClientProfile();
  }
}
