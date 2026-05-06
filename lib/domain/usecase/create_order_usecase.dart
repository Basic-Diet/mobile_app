import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/create_order_request_model.dart';
import 'package:basic_diet/domain/model/one_time_order_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class CreateOrderUseCase
    implements BaseUseCase<CreateOrderRequestModel, OneTimeOrderModel> {
  final Repository _repository;

  CreateOrderUseCase(this._repository);

  @override
  Future<Either<Failure, OneTimeOrderModel>> execute(
    CreateOrderRequestModel input,
  ) async {
    return await _repository.createOrder(input);
  }
}
