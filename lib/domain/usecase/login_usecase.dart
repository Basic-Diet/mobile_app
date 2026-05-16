import 'package:basic_diet/domain/model/auth_model.dart';
import 'package:dartz/dartz.dart';
import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, AuthenticationModel> {
  final Repository _repository;
  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, AuthenticationModel>> execute(
    LoginUseCaseInput input,
  ) async {
    return await _repository.login(input.phone, input.password);
  }
}

class LoginUseCaseInput {
  final String phone;
  final String password;

  const LoginUseCaseInput(this.phone, this.password);
}
