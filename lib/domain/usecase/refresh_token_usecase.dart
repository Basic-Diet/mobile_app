import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/auth_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class RefreshTokenUseCase implements BaseUseCase<String, AuthenticationModel> {
  final Repository _repository;

  RefreshTokenUseCase(this._repository);

  @override
  Future<Either<Failure, AuthenticationModel>> execute(String input) {
    return _repository.refreshToken(input);
  }
}
