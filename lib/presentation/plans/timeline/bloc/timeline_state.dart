import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:basic_diet/domain/model/timeline_model.dart';
import 'package:equatable/equatable.dart';

abstract class TimelineState extends Equatable {
  const TimelineState();

  @override
  List<Object?> get props => [];
}

class TimelineInitial extends TimelineState {}

class TimelineLoading extends TimelineState {}

class TimelineLoaded extends TimelineState {
  final TimelineModel timeline;
  final List<AddonSubscriptionModel>? addonSubscriptions;

  const TimelineLoaded(this.timeline, {this.addonSubscriptions});

  @override
  List<Object?> get props => [timeline, addonSubscriptions];
}

class TimelineError extends TimelineState {
  final String message;

  const TimelineError(this.message);

  @override
  List<Object?> get props => [message];
}
