import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:equatable/equatable.dart';

class FulfillmentStatusModel extends Equatable {
  final String subscriptionId;
  final String date;
  final String deliveryMode;
  final String fulfillmentModeOverride;
  final String pickupLocationIdOverride;
  final bool firstDayFulfillmentOverride;
  final String status;
  final String statusLabel;
  final String commercialState;
  final String commercialStateLabel;
  final String consumptionState;
  final String fulfillmentMode;
  final FulfillmentSummaryModel? fulfillmentSummary;
  final PickupLocationSummaryModel? pickupLocation;
  final AddressSummaryModel? deliveryAddress;
  final DeliveryWindowSummaryModel? deliveryWindow;
  final String? pickupCode;
  final String? pickupCodeIssuedAt;
  final String lockedReason;
  final String lockedMessage;
  final bool planningReady;
  final bool fulfillmentReady;
  final bool isFulfillable;
  final bool canBePrepared;
  final bool isTerminal;
  final DateTime lastUpdatedAt;
  final int pollingIntervalSeconds;

  const FulfillmentStatusModel({
    required this.subscriptionId,
    required this.date,
    required this.deliveryMode,
    this.fulfillmentModeOverride = '',
    this.pickupLocationIdOverride = '',
    this.firstDayFulfillmentOverride = false,
    required this.status,
    required this.statusLabel,
    required this.commercialState,
    required this.commercialStateLabel,
    required this.consumptionState,
    required this.fulfillmentMode,
    this.fulfillmentSummary,
    this.pickupLocation,
    this.deliveryAddress,
    this.deliveryWindow,
    this.pickupCode,
    this.pickupCodeIssuedAt,
    this.lockedReason = '',
    this.lockedMessage = '',
    this.planningReady = false,
    this.fulfillmentReady = false,
    this.isFulfillable = false,
    this.canBePrepared = false,
    required this.isTerminal,
    required this.lastUpdatedAt,
    this.pollingIntervalSeconds = 60,
  });

  @override
  List<Object?> get props => [
        subscriptionId,
        date,
        deliveryMode,
        fulfillmentModeOverride,
        pickupLocationIdOverride,
        firstDayFulfillmentOverride,
        status,
        statusLabel,
        commercialState,
        commercialStateLabel,
        consumptionState,
        fulfillmentMode,
        fulfillmentSummary,
        pickupLocation,
        deliveryAddress,
        deliveryWindow,
        pickupCode,
        pickupCodeIssuedAt,
        lockedReason,
        lockedMessage,
        planningReady,
        fulfillmentReady,
        isFulfillable,
        canBePrepared,
        isTerminal,
        lastUpdatedAt,
        pollingIntervalSeconds,
      ];
}
