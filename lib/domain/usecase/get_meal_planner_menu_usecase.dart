import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/meal_planner_menu_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class GetMealPlannerMenuUseCase
    implements BaseUseCase<String, MealPlannerMenuModel> {
  final Repository _repository;

  GetMealPlannerMenuUseCase(this._repository);

  @override
  Future<Either<Failure, MealPlannerMenuModel>> execute(
    String languageCode,
  ) async {
    final normalizedLanguage =
        languageCode.toLowerCase().startsWith('en') ? 'en' : 'ar';
    return _repository.getMealPlannerMenu(normalizedLanguage);
  }
}
