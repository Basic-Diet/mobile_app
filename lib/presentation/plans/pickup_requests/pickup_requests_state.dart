import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:equatable/equatable.dart';

class PickupRequestsState extends Equatable {
  final bool isLoading;
  final bool isAvailabilityLoading;
  final bool isCreating;
  final String errorMessage;
  final String createErrorMessage;
  final String subscriptionId;
  final String date;
  final PickupAvailabilityModel? availability;
  final List<PickupRequestModel> requests;
  final Set<String> selectedPickupItemIds;
  final String idempotencyKey;

  const PickupRequestsState({
    this.isLoading = false,
    this.isAvailabilityLoading = false,
    this.isCreating = false,
    this.errorMessage = '',
    this.createErrorMessage = '',
    this.subscriptionId = '',
    this.date = '',
    this.availability,
    this.requests = const [],
    this.selectedPickupItemIds = const {},
    this.idempotencyKey = '',
  });

  PickupRequestsState copyWith({
    bool? isLoading,
    bool? isAvailabilityLoading,
    bool? isCreating,
    String? errorMessage,
    String? createErrorMessage,
    String? subscriptionId,
    String? date,
    PickupAvailabilityModel? availability,
    bool clearAvailability = false,
    List<PickupRequestModel>? requests,
    Set<String>? selectedPickupItemIds,
    String? idempotencyKey,
  }) {
    return PickupRequestsState(
      isLoading: isLoading ?? this.isLoading,
      isAvailabilityLoading:
          isAvailabilityLoading ?? this.isAvailabilityLoading,
      isCreating: isCreating ?? this.isCreating,
      errorMessage: errorMessage ?? this.errorMessage,
      createErrorMessage: createErrorMessage ?? this.createErrorMessage,
      subscriptionId: subscriptionId ?? this.subscriptionId,
      date: date ?? this.date,
      availability:
          clearAvailability ? null : availability ?? this.availability,
      requests: requests ?? this.requests,
      selectedPickupItemIds:
          selectedPickupItemIds ?? this.selectedPickupItemIds,
      idempotencyKey: idempotencyKey ?? this.idempotencyKey,
    );
  }

  @override
  List<Object?> get props => [
    isLoading,
    isAvailabilityLoading,
    isCreating,
    errorMessage,
    createErrorMessage,
    subscriptionId,
    date,
    availability,
    requests,
    selectedPickupItemIds,
    idempotencyKey,
  ];
}
