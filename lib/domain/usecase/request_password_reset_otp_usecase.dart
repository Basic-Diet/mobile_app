import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/base__model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class RequestPasswordResetOtpUseCase implements BaseUseCase<String, BaseModel> {
  final Repository _repository;

  RequestPasswordResetOtpUseCase(this._repository);

  @override
  Future<Either<Failure, BaseModel>> execute(String phone) async {
    return await _repository.requestPasswordResetOtp(phone);
  }
}
