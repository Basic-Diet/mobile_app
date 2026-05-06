import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class CancelOrderUseCase implements BaseUseCase<String, OrderModel> {
  final Repository _repository;

  CancelOrderUseCase(this._repository);

  @override
  Future<Either<Failure, OrderModel>> execute(String input) async {
    return await _repository.cancelOrder(input);
  }
}
