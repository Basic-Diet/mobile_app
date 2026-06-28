// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePickupRequest _$CreatePickupRequestFromJson(Map<String, dynamic> json) =>
    CreatePickupRequest(
      date: json['date'] as String,
      idempotencyKey: json['idempotencyKey'] as String,
      selectedPickupItemIds:
          (json['selectedPickupItemIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      selectedMealSlotIds:
          (json['selectedMealSlotIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      mealCount: (json['mealCount'] as num?)?.toInt(),
      subscriptionDayId: json['subscriptionDayId'] as String?,
    );

Map<String, dynamic> _$CreatePickupRequestToJson(
  CreatePickupRequest instance,
) => <String, dynamic>{
  'date': instance.date,
  if (instance.subscriptionDayId case final value?) 'subscriptionDayId': value,
  if (instance.selectedPickupItemIds case final value?)
    'selectedPickupItemIds': value,
  if (instance.selectedMealSlotIds case final value?)
    'selectedMealSlotIds': value,
  if (instance.mealCount case final value?) 'mealCount': value,
  'idempotencyKey': instance.idempotencyKey,
};

AppendMealsRequest _$AppendMealsRequestFromJson(Map<String, dynamic> json) =>
    AppendMealsRequest(
      mealSlots:
          (json['mealSlots'] as List<dynamic>)
              .map((e) => MealSlotRequest.fromJson(e as Map<String, dynamic>))
              .toList(),
      idempotencyKey: json['idempotencyKey'] as String,
    );

Map<String, dynamic> _$AppendMealsRequestToJson(AppendMealsRequest instance) =>
    <String, dynamic>{
      'mealSlots': instance.mealSlots.map((e) => e.toJson()).toList(),
      'idempotencyKey': instance.idempotencyKey,
    };
