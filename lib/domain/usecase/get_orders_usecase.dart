import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetOrdersUseCase
    implements BaseUseCase<GetOrdersInput, OrdersListModel> {
  final Repository _repository;

  GetOrdersUseCase(this._repository);

  @override
  Future<Either<Failure, OrdersListModel>> execute(
    GetOrdersInput input,
  ) async {
    return await _repository.getOrders(input.page, input.limit);
  }
}

class GetOrdersInput {
  final int page;
  final int limit;

  const GetOrdersInput({this.page = 1, this.limit = 20});
}
