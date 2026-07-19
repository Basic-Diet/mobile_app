import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/auth_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class CompletePasswordChangeUseCase
    implements
        BaseUseCase<CompletePasswordChangeUseCaseInput, AuthenticationModel> {
  final Repository _repository;

  CompletePasswordChangeUseCase(this._repository);

  @override
  Future<Either<Failure, AuthenticationModel>> execute(
    CompletePasswordChangeUseCaseInput input,
  ) {
    return _repository.completePasswordChange(
      input.passwordChangeToken,
      input.newPassword,
      input.confirmPassword,
      input.deviceId,
      input.deviceName,
    );
  }
}

class CompletePasswordChangeUseCaseInput {
  final String passwordChangeToken;
  final String newPassword;
  final String confirmPassword;
  final String? deviceId;
  final String? deviceName;

  const CompletePasswordChangeUseCaseInput({
    required this.passwordChangeToken,
    required this.newPassword,
    required this.confirmPassword,
    this.deviceId,
    this.deviceName,
  });
}
