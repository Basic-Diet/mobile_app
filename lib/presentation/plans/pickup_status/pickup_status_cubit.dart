import 'dart:async';

import 'package:basic_diet/domain/model/pickup_status_model.dart';
import 'package:basic_diet/domain/usecase/get_pickup_status_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pickup_status_state.dart';

class PickupStatusCubit extends Cubit<PickupStatusState> {
  final GetPickupStatusUseCase _getPickupStatusUseCase;

  Timer? _pollingTimer;
  static const Duration _pollingInterval = Duration(seconds: 10);

  static const _terminalStatuses = {
    'fulfilled',
    'delivered',
    'delivery_canceled',
    'canceled',
    'cancelled',
    'canceled_at_branch',
    'no_show',
    'consumed_without_preparation',
    'skipped',
    'frozen',
  };

  PickupStatusCubit(this._getPickupStatusUseCase)
    : super(const PickupStatusInitial());

  Future<void> fetch(String subscriptionId, String businessDate) async {
    await _fetchStatus(subscriptionId, businessDate);
  }

  Future<void> startPolling(String subscriptionId, String businessDate) async {
    _pollingTimer?.cancel();
    final status = await _fetchStatus(subscriptionId, businessDate);
    if (isClosed || _isTerminalStatus(status)) return;

    _pollingTimer = Timer.periodic(_pollingInterval, (_) {
      _fetchStatus(subscriptionId, businessDate);
    });
  }

  Future<String?> _fetchStatus(String subscriptionId, String date) async {
    final result = await _getPickupStatusUseCase.execute(
      GetPickupStatusInput(subscriptionId, date),
    );
    return result.fold(
      (failure) {
        if (!isClosed && state is! PickupStatusLoaded) {
          emit(PickupStatusError(failure.message));
        }
        return null;
      },
      (data) {
        if (data.data != null) {
          final status = data.data!.status;
          if (isClosed) return status;

          emit(PickupStatusLoaded(data.data!));
          if (_isTerminalStatus(status)) {
            _stopPolling();
          }
          return status;
        }
        return null;
      },
    );
  }

  bool _isTerminalStatus(String? status) {
    return status != null && _terminalStatuses.contains(status.toLowerCase());
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
