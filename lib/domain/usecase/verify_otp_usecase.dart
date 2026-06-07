import 'package:basic_diet/domain/model/auth_model.dart';
import 'package:dartz/dartz.dart';
import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';

class VerifyOtpUseCase
    implements BaseUseCase<VerifyOtpUseCaseInput, AuthenticationModel> {
  final Repository _repository;
  VerifyOtpUseCase(this._repository);

  @override
  Future<Either<Failure, AuthenticationModel>> execute(
    VerifyOtpUseCaseInput input,
  ) async {
    return await _repository.verifyRegistrationOtp(
      _buildSaudiPhoneNumber(input.phone),
      input.otp,
      input.password,
    );
  }

  String _buildSaudiPhoneNumber(String phone) {
    final trimmedPhone = phone.trim();
    if (trimmedPhone.startsWith('+966')) {
      return trimmedPhone;
    }
    return '+966$trimmedPhone';
  }
}

class VerifyOtpUseCaseInput {
  final String phone;
  final String otp;
  final String password;

  const VerifyOtpUseCaseInput(this.phone, this.otp, this.password);
}
