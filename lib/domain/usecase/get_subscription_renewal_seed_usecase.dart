import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/subscription_renewal_seed_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetSubscriptionRenewalSeedUseCase
    implements BaseUseCase<String, SubscriptionRenewalSeedModel> {
  final Repository _repository;

  GetSubscriptionRenewalSeedUseCase(this._repository);

  @override
  Future<Either<Failure, SubscriptionRenewalSeedModel>> execute(
    String input,
  ) async {
    return await _repository.getSubscriptionRenewalSeed(input);
  }
}
