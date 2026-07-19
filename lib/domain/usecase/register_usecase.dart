import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/auth_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class RegisterUseCase
    implements BaseUseCase<RegisterUseCaseInput, AuthenticationModel> {
  final Repository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Either<Failure, AuthenticationModel>> execute(
    RegisterUseCaseInput input,
  ) async {
    return await _repository.register(
      input.fullName,
      input.phone,
      input.password,
      input.confirmPassword,
      email: input.email,
    );
  }
}

class RegisterUseCaseInput {
  final String fullName;
  final String phone;
  final String password;
  final String confirmPassword;
  final String email;

  const RegisterUseCaseInput({
    required this.fullName,
    required this.phone,
    required this.password,
    required this.confirmPassword,
    this.email = '',
  });
}
