import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetOrderMenuUseCase implements BaseUseCase<void, OrderMenuModel> {
  final Repository _repository;

  GetOrderMenuUseCase(this._repository);

  @override
  Future<Either<Failure, OrderMenuModel>> execute(void input) async {
    return await _repository.getOrderMenu();
  }
}
