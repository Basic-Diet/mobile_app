import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/base__model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class ChangePasswordUseCase
    implements BaseUseCase<ChangePasswordUseCaseInput, BaseModel> {
  final Repository _repository;

  ChangePasswordUseCase(this._repository);

  @override
  Future<Either<Failure, BaseModel>> execute(
    ChangePasswordUseCaseInput input,
  ) async {
    return await _repository.changePassword(
      input.currentPassword,
      input.newPassword,
      input.confirmPassword,
    );
  }
}

class ChangePasswordUseCaseInput {
  final String currentPassword;
  final String newPassword;
  final String confirmPassword;

  const ChangePasswordUseCaseInput({
    required this.currentPassword,
    required this.newPassword,
    required this.confirmPassword,
  });
}
