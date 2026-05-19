import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/order_quote_model.dart';
import 'package:basic_diet/domain/model/order_quote_request_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetOrderQuoteUseCase
    implements BaseUseCase<OrderQuoteRequestModel, OrderQuoteModel> {
  final Repository _repository;

  GetOrderQuoteUseCase(this._repository);

  @override
  Future<Either<Failure, OrderQuoteModel>> execute(
    OrderQuoteRequestModel input,
  ) async {
    return await _repository.getOrderQuote(input);
  }
}
