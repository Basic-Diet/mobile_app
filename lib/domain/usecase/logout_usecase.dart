import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class LogoutUseCase implements BaseUseCase<String, void> {
  final Repository _repository;

  LogoutUseCase(this._repository);

  @override
  Future<Either<Failure, void>> execute(String refreshToken) async {
    return await _repository.logout(refreshToken);
  }
}
