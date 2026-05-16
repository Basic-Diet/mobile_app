import 'package:equatable/equatable.dart';

class SubscriptionPickupRequestModel extends Equatable {
  final String requestId;
  final String entityId;
  final String subscriptionId;
  final String subscriptionDayId;
  final String date;
  final int? mealCount;
  final int? currentStep;
  final String status;
  final String statusLabel;
  final String message;
  final bool? isReady;
  final bool? isCompleted;
  final String? pickupCode;
  final String? pickupCodeIssuedAt;
  final String? fulfilledAt;
  final String? createdAt;
  final bool? creditsReserved;
  final bool? idempotent;
  final String nextAction;

  const SubscriptionPickupRequestModel({
    this.requestId = '',
    this.entityId = '',
    this.subscriptionId = '',
    this.subscriptionDayId = '',
    this.date = '',
    this.mealCount,
    this.currentStep,
    this.status = '',
    this.statusLabel = '',
    this.message = '',
    this.isReady,
    this.isCompleted,
    this.pickupCode,
    this.pickupCodeIssuedAt,
    this.fulfilledAt,
    this.createdAt,
    this.creditsReserved,
    this.idempotent,
    this.nextAction = '',
  });

  bool get isMultiRequestActive =>
      const {'locked', 'in_preparation', 'ready_for_pickup'}.contains(status);

  bool get canShowPickupCode =>
      (status == 'ready_for_pickup' || status == 'fulfilled') &&
      (pickupCode ?? '').isNotEmpty;

  bool get shouldPoll =>
      status == 'locked' ||
      status == 'in_preparation' ||
      status == 'ready_for_pickup';

  SubscriptionPickupRequestModel copyWith({
    String? requestId,
    String? entityId,
    String? subscriptionId,
    String? subscriptionDayId,
    String? date,
    int? mealCount,
    int? currentStep,
    String? status,
    String? statusLabel,
    String? message,
    bool? isReady,
    bool? isCompleted,
    String? pickupCode,
    String? pickupCodeIssuedAt,
    String? fulfilledAt,
    String? createdAt,
    bool? creditsReserved,
    bool? idempotent,
    String? nextAction,
  }) {
    return SubscriptionPickupRequestModel(
      requestId: requestId ?? this.requestId,
      entityId: entityId ?? this.entityId,
      subscriptionId: subscriptionId ?? this.subscriptionId,
      subscriptionDayId: subscriptionDayId ?? this.subscriptionDayId,
      date: date ?? this.date,
      mealCount: mealCount ?? this.mealCount,
      currentStep: currentStep ?? this.currentStep,
      status: status ?? this.status,
      statusLabel: statusLabel ?? this.statusLabel,
      message: message ?? this.message,
      isReady: isReady ?? this.isReady,
      isCompleted: isCompleted ?? this.isCompleted,
      pickupCode: pickupCode ?? this.pickupCode,
      pickupCodeIssuedAt: pickupCodeIssuedAt ?? this.pickupCodeIssuedAt,
      fulfilledAt: fulfilledAt ?? this.fulfilledAt,
      createdAt: createdAt ?? this.createdAt,
      creditsReserved: creditsReserved ?? this.creditsReserved,
      idempotent: idempotent ?? this.idempotent,
      nextAction: nextAction ?? this.nextAction,
    );
  }

  @override
  List<Object?> get props => [
    requestId,
    entityId,
    subscriptionId,
    subscriptionDayId,
    date,
    mealCount,
    currentStep,
    status,
    statusLabel,
    message,
    isReady,
    isCompleted,
    pickupCode,
    pickupCodeIssuedAt,
    fulfilledAt,
    createdAt,
    creditsReserved,
    idempotent,
    nextAction,
  ];
}

class SubscriptionPickupRequestsModel extends Equatable {
  final List<SubscriptionPickupRequestModel> requests;

  const SubscriptionPickupRequestsModel({this.requests = const []});

  @override
  List<Object?> get props => [requests];
}
