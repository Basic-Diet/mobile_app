import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/auth_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetCurrentUserUseCase
    implements BaseUseCase<Object?, AuthenticationModel> {
  final Repository _repository;

  GetCurrentUserUseCase(this._repository);

  @override
  Future<Either<Failure, AuthenticationModel>> execute(Object? input) {
    return _repository.getCurrentUser();
  }
}
