import 'package:equatable/equatable.dart';

abstract class PlansEvent extends Equatable {
  const PlansEvent();

  @override
  List<Object> get props => [];
}

class FetchCurrentSubscriptionOverviewEvent extends PlansEvent {}

class FetchTimelineAndOpenPlannerEvent extends PlansEvent {
  final String subscriptionId;
  final bool openCurrentDay;
  final String preferredDate;
  const FetchTimelineAndOpenPlannerEvent(
    this.subscriptionId, {
    this.openCurrentDay = false,
    this.preferredDate = '',
  });

  @override
  List<Object> get props => [subscriptionId, openCurrentDay, preferredDate];
}

class PreparePickupEvent extends PlansEvent {
  final String subscriptionId;
  final String businessDate;
  const PreparePickupEvent(this.subscriptionId, this.businessDate);

  @override
  List<Object> get props => [subscriptionId, businessDate];
}

class CreatePickupRequestEvent extends PlansEvent {
  final String subscriptionId;
  final String date;
  final int mealCount;

  const CreatePickupRequestEvent({
    required this.subscriptionId,
    required this.date,
    required this.mealCount,
  });

  @override
  List<Object> get props => [subscriptionId, date, mealCount];
}
