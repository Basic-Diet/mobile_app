import 'package:basic_diet/data/request/day_selection_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pickup_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreatePickupRequest {
  @JsonKey(name: 'date')
  final String date;

  @JsonKey(name: 'subscriptionDayId')
  final String? subscriptionDayId;

  @JsonKey(name: 'selectedPickupItemIds')
  final List<String> selectedPickupItemIds;

  @JsonKey(name: 'idempotencyKey')
  final String idempotencyKey;

  const CreatePickupRequest({
    required this.date,
    required this.selectedPickupItemIds,
    required this.idempotencyKey,
    this.subscriptionDayId,
  });

  factory CreatePickupRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePickupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePickupRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AppendMealsRequest {
  @JsonKey(name: 'mealSlots')
  final List<MealSlotRequest> mealSlots;

  @JsonKey(name: 'idempotencyKey')
  final String idempotencyKey;

  const AppendMealsRequest({
    required this.mealSlots,
    required this.idempotencyKey,
  });

  factory AppendMealsRequest.fromJson(Map<String, dynamic> json) =>
      _$AppendMealsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AppendMealsRequestToJson(this);
}
