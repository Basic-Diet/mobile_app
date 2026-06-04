import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/add_ons_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetAddOnsUseCaseInput {
  final String? type;

  const GetAddOnsUseCaseInput({this.type});
}

class GetAddOnsUseCase
    implements BaseUseCase<GetAddOnsUseCaseInput, AddOnsModel> {
  final Repository _repository;

  GetAddOnsUseCase(this._repository);

  @override
  Future<Either<Failure, AddOnsModel>> execute(
    GetAddOnsUseCaseInput input,
  ) async {
    return await _repository.getAddOns(type: input.type);
  }
}
