import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:basic_diet/domain/usecase/create_pickup_request_usecase.dart';
import 'package:basic_diet/domain/usecase/get_pickup_availability_usecase.dart';
import 'package:basic_diet/domain/usecase/get_pickup_requests_usecase.dart';
import 'package:basic_diet/presentation/plans/pickup_requests/pickup_requests_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class PickupRequestsCubit extends Cubit<PickupRequestsState> {
  final GetPickupAvailabilityUseCase _getPickupAvailabilityUseCase;
  final GetPickupRequestsUseCase _getPickupRequestsUseCase;
  final CreatePickupRequestUseCase _createPickupRequestUseCase;

  PickupRequestsCubit(
    this._getPickupAvailabilityUseCase,
    this._getPickupRequestsUseCase,
    this._createPickupRequestUseCase,
  ) : super(const PickupRequestsState());

  Future<void> load({
    required String subscriptionId,
    required String date,
  }) async {
    emit(
      state.copyWith(
        isLoading: true,
        errorMessage: '',
        subscriptionId: subscriptionId,
        date: date,
      ),
    );

    final requestsResult = await _getPickupRequestsUseCase.execute(
      subscriptionId,
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
        load(subscriptionId: state.subscriptionId, date: state.date);
        return true;
      },
    );
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
}
