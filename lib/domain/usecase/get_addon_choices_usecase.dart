import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/addon_choices_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetAddonChoicesUseCase implements BaseUseCase<void, AddonChoicesModel> {
  final Repository _repository;

  GetAddonChoicesUseCase(this._repository);

  @override
  Future<Either<Failure, AddonChoicesModel>> execute(void input) async {
    return await _repository.getAddonChoices();
  }
}
