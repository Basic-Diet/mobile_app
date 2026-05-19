import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/order_timeline_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetOrderTimelineUseCase
    implements BaseUseCase<String, OrderTimelineModel> {
  final Repository _repository;

  GetOrderTimelineUseCase(this._repository);

  @override
  Future<Either<Failure, OrderTimelineModel>> execute(String orderId) async {
    return await _repository.getOrderTimeline(orderId);
  }
}
