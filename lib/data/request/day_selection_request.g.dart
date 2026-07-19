// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_selection_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DaySelectionRequest _$DaySelectionRequestFromJson(Map<String, dynamic> json) =>
    DaySelectionRequest(
      (json['mealSlots'] as List<dynamic>)
          .map((e) => MealSlotRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      contractVersion:
          json['contractVersion'] as String? ?? 'meal_planner_menu.v3',
      addonsOneTime:
          (json['addonsOneTime'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DaySelectionRequestToJson(
  DaySelectionRequest instance,
) => <String, dynamic>{
  'contractVersion': instance.contractVersion,
  'mealSlots': instance.mealSlots.map((e) => e.toJson()).toList(),
  'addonsOneTime': instance.addonsOneTime,
};

MealSlotRequest _$MealSlotRequestFromJson(Map<String, dynamic> json) =>
    MealSlotRequest(
      slotIndex: (json['slotIndex'] as num).toInt(),
      slotKey: json['slotKey'] as String?,
      selectionType: json['selectionType'] as String?,
      productId: json['productId'] as String?,
      selectedOptions:
          (json['selectedOptions'] as List<dynamic>?)
              ?.map(
                (e) => MealPlannerSelectedOptionRequest.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
      proteinId: json['proteinId'] as String?,
      proteinKey: json['proteinKey'] as String?,
      premiumKey: json['premiumKey'] as String?,
      carbs:
          (json['carbs'] as List<dynamic>?)
              ?.map(
                (e) => MealSlotCarbRequest.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      sandwichId: json['sandwichId'] as String?,
      salad:
          json['salad'] == null
              ? null
              : SaladRequest.fromJson(json['salad'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MealSlotRequestToJson(MealSlotRequest instance) =>
    <String, dynamic>{
      'slotIndex': instance.slotIndex,
      if (instance.slotKey case final value?) 'slotKey': value,
      if (instance.selectionType case final value?) 'selectionType': value,
      if (instance.productId case final value?) 'productId': value,
      if (instance.selectedOptions?.map((e) => e.toJson()).toList()
          case final value?)
        'selectedOptions': value,
      if (instance.proteinId case final value?) 'proteinId': value,
      if (instance.proteinKey case final value?) 'proteinKey': value,
      if (instance.premiumKey case final value?) 'premiumKey': value,
      if (instance.carbs?.map((e) => e.toJson()).toList() case final value?)
        'carbs': value,
      if (instance.sandwichId case final value?) 'sandwichId': value,
      if (instance.salad?.toJson() case final value?) 'salad': value,
    };

MealPlannerSelectedOptionRequest _$MealPlannerSelectedOptionRequestFromJson(
  Map<String, dynamic> json,
) => MealPlannerSelectedOptionRequest(
  groupId: json['groupId'] as String,
  optionId: json['optionId'] as String,
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  grams: (json['grams'] as num?)?.toInt(),
);

Map<String, dynamic> _$MealPlannerSelectedOptionRequestToJson(
  MealPlannerSelectedOptionRequest instance,
) => <String, dynamic>{
  'groupId': instance.groupId,
  'optionId': instance.optionId,
  'quantity': instance.quantity,
  if (instance.grams case final value?) 'grams': value,
};

MealSlotCarbRequest _$MealSlotCarbRequestFromJson(Map<String, dynamic> json) =>
    MealSlotCarbRequest(
      carbId: json['carbId'] as String,
      grams: (json['grams'] as num).toInt(),
    );

Map<String, dynamic> _$MealSlotCarbRequestToJson(
  MealSlotCarbRequest instance,
) => <String, dynamic>{'carbId': instance.carbId, 'grams': instance.grams};

SaladRequest _$SaladRequestFromJson(Map<String, dynamic> json) => SaladRequest(
  presetKey: json['presetKey'] as String,
  groups: SaladGroupsRequest.fromJson(json['groups'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SaladRequestToJson(SaladRequest instance) =>
    <String, dynamic>{
      'presetKey': instance.presetKey,
      'groups': instance.groups.toJson(),
    };

SaladGroupsRequest _$SaladGroupsRequestFromJson(
  Map<String, dynamic> json,
) => SaladGroupsRequest(
  leafyGreens:
      (json['leafy_greens'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  vegetables:
      (json['vegetables'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  protein:
      (json['protein'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  cheeseNuts:
      (json['cheese_nuts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  fruits:
      (json['fruits'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  sauce:
      (json['sauce'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$SaladGroupsRequestToJson(SaladGroupsRequest instance) =>
    <String, dynamic>{
      'leafy_greens': instance.leafyGreens,
      'vegetables': instance.vegetables,
      'protein': instance.protein,
      'cheese_nuts': instance.cheeseNuts,
      'fruits': instance.fruits,
      'sauce': instance.sauce,
    };
