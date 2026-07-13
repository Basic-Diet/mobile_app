import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:basic_diet/domain/usecase/get_current_subscription_overview_usecase.dart';
import 'package:basic_diet/domain/usecase/get_timeline_usecase.dart';
import 'package:basic_diet/presentation/plans/timeline/bloc/timeline_event.dart';
import 'package:basic_diet/presentation/plans/timeline/bloc/timeline_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimelineBloc extends Bloc<TimelineEvent, TimelineState> {
  final GetTimelineUseCase _getTimelineUseCase;
  final GetCurrentSubscriptionOverviewUseCase
  _getCurrentSubscriptionOverviewUseCase;

  TimelineBloc(
    this._getTimelineUseCase,
    this._getCurrentSubscriptionOverviewUseCase,
  ) : super(TimelineInitial()) {
    on<FetchTimelineEvent>(_onFetchTimeline);
  }

  Future<void> _onFetchTimeline(
    FetchTimelineEvent event,
    Emitter<TimelineState> emit,
  ) async {
    emit(TimelineLoading());
    final result = await _getTimelineUseCase.execute(event.subscriptionId);
    await result.fold(
      (failure) async => emit(TimelineError(failure.message)),
      (timeline) async {
        final addonSubscriptions = await _getFreshAddonSubscriptions(
          event.subscriptionId,
        );
        emit(
          TimelineLoaded(
            timeline,
            addonSubscriptions:
                addonSubscriptions.isNotEmpty
                    ? addonSubscriptions
                    : timeline.data.addonSubscriptions,
          ),
        );
      },
    );
  }

  Future<List<AddonSubscriptionModel>> _getFreshAddonSubscriptions(
    String subscriptionId,
  ) async {
    final overviewResult = await _getCurrentSubscriptionOverviewUseCase.execute(
      null,
    );

    return overviewResult.fold(
      (_) => const [],
      (overview) {
        final data = overview.data;
        if (data == null || data.id != subscriptionId) return const [];
        return data.displayAddonEntitlements;
      },
    );
  }
}
