import 'dart:async';

import 'package:basic_diet/domain/model/pickup_status_model.dart';
import 'package:basic_diet/domain/model/subscription_pickup_request_model.dart';
import 'package:basic_diet/domain/usecase/get_pickup_request_status_usecase.dart';
import 'package:basic_diet/domain/usecase/get_pickup_status_usecase.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';

part 'pickup_status_state.dart';

class PickupStatusCubit extends Cubit<PickupStatusState> {
  final GetPickupStatusUseCase _getPickupStatusUseCase;
  final GetPickupRequestStatusUseCase _getPickupRequestStatusUseCase;

  Timer? _pollingTimer;
  static const Duration _pollingInterval = Duration(seconds: 30);

  static const _pollingStatuses = {
    'locked',
    'in_preparation',
    'ready_for_pickup',
  };

  PickupStatusCubit(
    this._getPickupStatusUseCase,
    this._getPickupRequestStatusUseCase,
  ) : super(const PickupStatusInitial());

  Future<void> fetch(String subscriptionId, String businessDate) async {
    await _fetchStatus(subscriptionId, businessDate);
  }

  Future<void> startPolling(String subscriptionId, String businessDate) async {
    _pollingTimer?.cancel();
    await _fetchStatus(subscriptionId, businessDate);
    _pollingTimer = Timer.periodic(_pollingInterval, (_) {
      _fetchStatus(subscriptionId, businessDate);
    });
  }

  Future<void> startRequestPolling({
    required String subscriptionId,
    required String requestId,
  }) async {
    _pollingTimer?.cancel();
    await _fetchRequestStatus(
      subscriptionId: subscriptionId,
      requestId: requestId,
    );
    _pollingTimer = Timer.periodic(_pollingInterval, (_) {
      _fetchRequestStatus(subscriptionId: subscriptionId, requestId: requestId);
    });
  }

  Future<void> _fetchStatus(String subscriptionId, String date) async {
    final result = await _getPickupStatusUseCase.execute(
      GetPickupStatusInput(subscriptionId, date),
    );
    result.fold(
      (failure) {
        if (state is! PickupStatusLoaded) {
          emit(PickupStatusError(failure.message));
        }
      },
      (data) {
        if (data.data != null) {
          emit(PickupStatusLoaded(data.data!));
          // Stop polling once a terminal status is reached
          if (!_pollingStatuses.contains(data.data!.status)) {
            _stopPolling();
          }
        }
      },
    );
  }

  Future<void> _fetchRequestStatus({
    required String subscriptionId,
    required String requestId,
  }) async {
    final result = await _getPickupRequestStatusUseCase.execute(
      GetPickupRequestStatusInput(
        subscriptionId: subscriptionId,
        requestId: requestId,
      ),
    );
    result.fold(
      (failure) {
        if (_isClientError(failure.code)) {
          _stopPolling();
        }
        if (!isClosed) {
          emit(
            PickupRequestStatusError(
              _friendlyPickupError(failure.code, failure.message),
            ),
          );
        }
      },
      (data) {
        if (!isClosed) {
          emit(PickupRequestStatusLoaded(data));
        }
        if (!data.shouldPoll) {
          _stopPolling();
        }
      },
    );
  }

  bool _isClientError(dynamic code) {
    if (code is int) return code >= 400 && code < 500;
    if (code is String) return code.isNotEmpty;
    return false;
  }

  String _friendlyPickupError(dynamic code, String fallback) {
    return switch (code.toString()) {
      'INVALID_ENTITY_ID' => Strings.pickupErrorInvalidEntityId.tr(),
      'INVALID_PICKUP_CODE' => Strings.pickupErrorInvalidPickupCode.tr(),
      'PICKUP_CODE_MISMATCH' => Strings.pickupErrorPickupCodeMismatch.tr(),
      'INVALID_TRANSITION' => Strings.pickupErrorInvalidTransition.tr(),
      'INSUFFICIENT_CREDITS' => Strings.pickupErrorInsufficientCredits.tr(),
      'INVALID_MEAL_COUNT' => Strings.pickupErrorInvalidMealCount.tr(),
      'PLANNING_INCOMPLETE' => Strings.pickupErrorPlanningIncomplete.tr(),
      'PLANNER_UNCONFIRMED' ||
      'PLANNING_UNCONFIRMED' => Strings.pickupErrorPlannerUnconfirmed.tr(),
      _ => fallback,
    };
  }

  void _stopPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }

  @override
  Future<void> close() {
    _pollingTimer?.cancel();
    return super.close();
  }
}
