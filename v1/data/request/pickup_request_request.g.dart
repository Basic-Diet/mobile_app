// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_request_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickupRequestRequest _$PickupRequestRequestFromJson(
  Map<String, dynamic> json,
) => PickupRequestRequest(
  date: json['date'] as String,
  mealCount: (json['mealCount'] as num).toInt(),
  idempotencyKey: json['idempotencyKey'] as String?,
);

Map<String, dynamic> _$PickupRequestRequestToJson(
  PickupRequestRequest instance,
) => <String, dynamic>{
  'date': instance.date,
  'mealCount': instance.mealCount,
  'idempotencyKey': instance.idempotencyKey,
};
