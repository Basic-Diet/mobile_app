import 'package:basic_diet/domain/usecase/get_current_subscription_overview_usecase.dart';
import 'package:basic_diet/domain/usecase/get_popular_packages_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetPopularPackagesUseCase _getPopularPackagesUseCase;
  final GetCurrentSubscriptionOverviewUseCase
  _getCurrentSubscriptionOverviewUseCase;

  HomeBloc(
    this._getPopularPackagesUseCase,
    this._getCurrentSubscriptionOverviewUseCase,
  ) : super(HomeInitialState()) {
    on<GetPopularPackagesEvent>((event, emit) async {
      emit(HomeLoadingState());
      (await _getPopularPackagesUseCase.execute(null)).fold(
        (failure) {
          if (!isClosed) {
            emit(HomeErrorState(failure.message));
          }
        },
        (data) {
          if (!isClosed) {
            emit(HomePopularPackagesSuccessState(data));
          }
        },
      );
    });

    on<ViewPlansRequestedEvent>((event, emit) async {
      final result = await _getCurrentSubscriptionOverviewUseCase.execute(null);

      result.fold(
        (_) {
          if (!isClosed) {
            emit(HomeNavigateToPlansState());
          }
        },
        (data) {
          final hasSubscription =
              data.data != null && data.data!.id.isNotEmpty;

          if (!isClosed) {
            emit(
              hasSubscription
                  ? HomeNavigateToSubscriptionState()
                  : HomeNavigateToPlansState(),
            );
          }
        },
      );
    });
  }
}
