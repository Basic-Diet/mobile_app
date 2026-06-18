import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/addon_subscription_options_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetAddonSubscriptionOptionsInput extends Equatable {
  final String planId;

  const GetAddonSubscriptionOptionsInput({required this.planId});

  @override
  List<Object?> get props => [planId];
}

class GetAddonSubscriptionOptionsUseCase
    implements
        BaseUseCase<
          GetAddonSubscriptionOptionsInput,
          AddonSubscriptionOptionsModel
        > {
  final Repository _repository;

  const GetAddonSubscriptionOptionsUseCase(this._repository);

  @override
  Future<Either<Failure, AddonSubscriptionOptionsModel>> execute(
    GetAddonSubscriptionOptionsInput input,
  ) {
    return _repository.getAddonSubscriptionOptions(input.planId);
  }
}
