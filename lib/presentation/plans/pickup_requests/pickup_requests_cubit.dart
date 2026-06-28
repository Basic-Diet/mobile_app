import 'dart:async';

import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:basic_diet/domain/usecase/create_pickup_request_usecase.dart';
import 'package:basic_diet/domain/usecase/get_pickup_availability_usecase.dart';
import 'package:basic_diet/domain/usecase/get_pickup_request_status_usecase.dart';
import 'package:basic_diet/domain/usecase/get_pickup_requests_usecase.dart';
import 'package:basic_diet/presentation/plans/pickup_requests/pickup_requests_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class PickupRequestsCubit extends Cubit<PickupRequestsState> {
  final GetPickupAvailabilityUseCase _getPickupAvailabilityUseCase;
  final GetPickupRequestsUseCase _getPickupRequestsUseCase;
  final CreatePickupRequestUseCase _createPickupRequestUseCase;
  final GetPickupRequestStatusUseCase _getPickupRequestStatusUseCase;
  Timer? _pollingTimer;
  bool _isPollingFetchInProgress = false;

  PickupRequestsCubit(
    this._getPickupAvailabilityUseCase,
    this._getPickupRequestsUseCase,
    this._createPickupRequestUseCase,
    this._getPickupRequestStatusUseCase,
  ) : super(const PickupRequestsState());

  Future<void> load({
    required String subscriptionId,
    required String date,
    bool showLoading = true,
  }) async {
    emit(
      state.copyWith(
        isLoading: showLoading,
        errorMessage: '',
        subscriptionId: subscriptionId,
        date: date,
      ),
    );

    final requestsResult = await _getPickupRequestsUseCase.execute(
      GetPickupRequestsUseCaseInput(
        subscriptionId: subscriptionId,
        date: date,
        status: 'active',
      ),
    );
    if (isClosed) return;

    requestsResult.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure.message)),
      (requests) => emit(
        state.copyWith(
          isLoading: false,
          requests: _requestsForDate(requests, date),
        ),
      ),
    );
  }

  void startPolling({
    required String subscriptionId,
    required String date,
    bool forceRefresh = false,
  }) {
    if (state.subscriptionId == subscriptionId &&
        state.date == date &&
        _pollingTimer != null) {
      if (forceRefresh) {
        _pollRequests(subscriptionId: subscriptionId, date: date);
      }
      return;
    }

    stopPolling();
    load(subscriptionId: subscriptionId, date: date).then((_) {
      if (!isClosed && _allVisibleRequestsCompleted) {
        stopPolling();
      }
    });
    _pollingTimer = Timer.periodic(const Duration(seconds: 10), (_) {
      _pollRequests(subscriptionId: subscriptionId, date: date);
    });
  }

  void stopPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }

  Future<void> openAvailability() async {
    if (state.subscriptionId.isEmpty || state.date.isEmpty) return;

    emit(
      state.copyWith(
        isAvailabilityLoading: true,
        errorMessage: '',
        createErrorMessage: '',
        selectedPickupItemIds: const {},
        idempotencyKey: const Uuid().v4(),
        clearAvailability: true,
      ),
    );

    final result = await _getPickupAvailabilityUseCase.execute(
      GetPickupAvailabilityUseCaseInput(
        subscriptionId: state.subscriptionId,
        date: state.date,
      ),
    );
    if (isClosed) return;

    result.fold(
      (failure) => emit(
        state.copyWith(
          isAvailabilityLoading: false,
          createErrorMessage: failure.message,
        ),
      ),
      (availability) => emit(
        state.copyWith(
          isAvailabilityLoading: false,
          availability: availability,
        ),
      ),
    );
  }

  void toggleSlot(PickupAvailabilitySlotModel slot) {
    if (!slot.isSelectable || state.isCreating) return;

    final next = Set<String>.from(state.selectedPickupItemIds);
    if (next.contains(slot.slotId)) {
      next.remove(slot.slotId);
    } else {
      next.add(slot.slotId);
    }
    emit(state.copyWith(selectedPickupItemIds: next, createErrorMessage: ''));
  }

  void togglePickupItem(PickupAvailabilityItemModel item) {
    if (!item.isSelectable || state.isCreating) return;

    final next = Set<String>.from(state.selectedPickupItemIds);
    if (next.contains(item.itemId)) {
      next.remove(item.itemId);
    } else {
      next.add(item.itemId);
    }
    emit(state.copyWith(selectedPickupItemIds: next, createErrorMessage: ''));
  }

  Future<bool> confirmSelectedSlots() async {
    final availability = state.availability;
    if (availability == null ||
        !availability.canCreatePickupRequest ||
        state.selectedPickupItemIds.isEmpty ||
        state.isCreating) {
      return false;
    }

    emit(state.copyWith(isCreating: true, createErrorMessage: ''));
    final result = await _createPickupRequestUseCase.execute(
      CreatePickupRequestUseCaseInput(
        subscriptionId: state.subscriptionId,
        date: state.date,
        subscriptionDayId: availability.subscriptionDayId,
        selectedPickupItemIds: state.selectedPickupItemIds.toList(),
        idempotencyKey:
            state.idempotencyKey.isEmpty
                ? const Uuid().v4()
                : state.idempotencyKey,
      ),
    );
    if (isClosed) return false;

    return result.fold(
      (failure) {
        emit(
          state.copyWith(
            isCreating: false,
            createErrorMessage: _friendlyCreateError(failure.message),
          ),
        );
        return false;
      },
      (_) {
        emit(
          state.copyWith(
            isCreating: false,
            selectedPickupItemIds: const {},
            idempotencyKey: '',
            clearAvailability: true,
          ),
        );
        openAvailability();
        startPolling(
          subscriptionId: state.subscriptionId,
          date: state.date,
          forceRefresh: true,
        );
        return true;
      },
    );
  }

  Future<void> _pollRequests({
    required String subscriptionId,
    required String date,
  }) async {
    if (_isPollingFetchInProgress) return;

    _isPollingFetchInProgress = true;
    try {
      if (state.requests.isEmpty) {
        await load(
          subscriptionId: subscriptionId,
          date: date,
          showLoading: false,
        );
      } else {
        await _pollVisibleRequestStatuses(subscriptionId);
      }
    } finally {
      _isPollingFetchInProgress = false;
    }
    if (isClosed) return;

    if (_allVisibleRequestsCompleted) {
      stopPolling();
    }
  }

  bool get _allVisibleRequestsCompleted =>
      state.requests.isNotEmpty &&
      state.requests.every((request) => request.isTerminal);

  Future<void> _pollVisibleRequestStatuses(String subscriptionId) async {
    final updatedRequests = <PickupRequestModel>[];

    for (final request in state.requests) {
      if (request.requestId.isEmpty || request.isTerminal) {
        updatedRequests.add(request);
        continue;
      }

      final result = await _getPickupRequestStatusUseCase.execute(
        GetPickupRequestStatusUseCaseInput(
          subscriptionId: subscriptionId,
          requestId: request.requestId,
        ),
      );
      if (isClosed) return;

      result.fold(
        (_) => updatedRequests.add(request),
        (updatedRequest) => updatedRequests.add(updatedRequest),
      );
    }

    emit(state.copyWith(requests: updatedRequests));
  }

  List<PickupRequestModel> _requestsForDate(
    List<PickupRequestModel> requests,
    String date,
  ) {
    return requests.where((request) => request.date == date).toList();
  }

  String _friendlyCreateError(String message) {
    const paymentCodes = {
      'PREMIUM_PAYMENT_REQUIRED',
      'ADDON_PAYMENT_REQUIRED',
      'PAYMENT_REQUIRED',
      'PENDING_ADDON_PAYMENT',
    };
    if (paymentCodes.contains(message)) {
      return 'PAYMENT_REQUIRED_BEFORE_PICKUP';
    }
    return message;
  }

  @override
  Future<void> close() {
    stopPolling();
    return super.close();
  }
}
