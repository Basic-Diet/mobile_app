// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfillment_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FulfillmentStatusDataResponse _$FulfillmentStatusDataResponseFromJson(
  Map<String, dynamic> json,
) => FulfillmentStatusDataResponse(
  subscriptionId: json['subscriptionId'] as String?,
  date: json['date'] as String?,
  deliveryMode: json['deliveryMode'] as String?,
  fulfillmentModeOverride: json['fulfillmentModeOverride'] as String?,
  pickupLocationIdOverride: json['pickupLocationIdOverride'] as String?,
  firstDayFulfillmentOverride: json['firstDayFulfillmentOverride'] as bool?,
  status: json['status'] as String?,
  statusLabel: json['statusLabel'] as String?,
  commercialState: json['commercialState'] as String?,
  commercialStateLabel: json['commercialStateLabel'] as String?,
  consumptionState: json['consumptionState'] as String?,
  fulfillmentMode:
      FulfillmentStatusDataResponse._readFulfillmentMode(
            json,
            'fulfillmentMode',
          )
          as String?,
  fulfillmentSummary:
      json['fulfillmentSummary'] == null
          ? null
          : OverviewFulfillmentSummaryResponse.fromJson(
            json['fulfillmentSummary'] as Map<String, dynamic>,
          ),
  pickupLocation:
      json['pickupLocation'] == null
          ? null
          : OverviewPickupLocationSummaryResponse.fromJson(
            json['pickupLocation'] as Map<String, dynamic>,
          ),
  deliveryAddress:
      json['deliveryAddress'] == null
          ? null
          : OverviewAddressSummaryResponse.fromJson(
            json['deliveryAddress'] as Map<String, dynamic>,
          ),
  deliveryWindow:
      readDeliveryWindowSummary(json, 'deliveryWindow') == null
          ? null
          : OverviewDeliveryWindowSummaryResponse.fromJson(
            readDeliveryWindowSummary(json, 'deliveryWindow')
                as Map<String, dynamic>,
          ),
  pickupCode: json['pickupCode'] as String?,
  pickupCodeIssuedAt: json['pickupCodeIssuedAt'] as String?,
  lockedReason: json['lockedReason'] as String?,
  lockedMessage: json['lockedMessage'] as String?,
  planningReady: json['planningReady'] as bool?,
  fulfillmentReady: json['fulfillmentReady'] as bool?,
  isFulfillable: json['isFulfillable'] as bool?,
  canBePrepared: json['canBePrepared'] as bool?,
  isTerminal: json['isTerminal'] as bool?,
  lastUpdatedAt: json['lastUpdatedAt'] as String?,
  pollingIntervalSeconds: (json['pollingIntervalSeconds'] as num?)?.toInt(),
);

Map<String, dynamic> _$FulfillmentStatusDataResponseToJson(
  FulfillmentStatusDataResponse instance,
) => <String, dynamic>{
  'subscriptionId': instance.subscriptionId,
  'date': instance.date,
  'deliveryMode': instance.deliveryMode,
  'fulfillmentModeOverride': instance.fulfillmentModeOverride,
  'pickupLocationIdOverride': instance.pickupLocationIdOverride,
  'firstDayFulfillmentOverride': instance.firstDayFulfillmentOverride,
  'status': instance.status,
  'statusLabel': instance.statusLabel,
  'commercialState': instance.commercialState,
  'commercialStateLabel': instance.commercialStateLabel,
  'consumptionState': instance.consumptionState,
  'fulfillmentMode': instance.fulfillmentMode,
  'fulfillmentSummary': instance.fulfillmentSummary?.toJson(),
  'pickupLocation': instance.pickupLocation?.toJson(),
  'deliveryAddress': instance.deliveryAddress?.toJson(),
  'deliveryWindow': instance.deliveryWindow?.toJson(),
  'pickupCode': instance.pickupCode,
  'pickupCodeIssuedAt': instance.pickupCodeIssuedAt,
  'lockedReason': instance.lockedReason,
  'lockedMessage': instance.lockedMessage,
  'planningReady': instance.planningReady,
  'fulfillmentReady': instance.fulfillmentReady,
  'isFulfillable': instance.isFulfillable,
  'canBePrepared': instance.canBePrepared,
  'isTerminal': instance.isTerminal,
  'lastUpdatedAt': instance.lastUpdatedAt,
  'pollingIntervalSeconds': instance.pollingIntervalSeconds,
};

FulfillmentStatusResponse _$FulfillmentStatusResponseFromJson(
  Map<String, dynamic> json,
) =>
    FulfillmentStatusResponse(
        data:
            json['data'] == null
                ? null
                : FulfillmentStatusDataResponse.fromJson(
                  json['data'] as Map<String, dynamic>,
                ),
      )
      ..ok = json['ok'] as bool?
      ..status = json['status']
      ..message = json['message'] as String?;

Map<String, dynamic> _$FulfillmentStatusResponseToJson(
  FulfillmentStatusResponse instance,
) => <String, dynamic>{
  'ok': instance.ok,
  'status': instance.status,
  'message': instance.message,
  'data': instance.data?.toJson(),
};
