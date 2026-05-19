import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/base__model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class ResetPasswordInput {
  final String phone;
  final String otp;
  final String newPassword;

  const ResetPasswordInput({
    required this.phone,
    required this.otp,
    required this.newPassword,
  });
}

class ResetPasswordUseCase implements BaseUseCase<ResetPasswordInput, BaseModel> {
  final Repository _repository;

  ResetPasswordUseCase(this._repository);

  @override
  Future<Either<Failure, BaseModel>> execute(ResetPasswordInput input) async {
    return await _repository.resetPassword(
      input.phone,
      input.otp,
      input.newPassword,
    );
  }
}
