import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:equatable/equatable.dart';

enum ProfileStatus { initial, loading, success, failure }

class ProfileState extends Equatable {
  final ProfileStatus status;
  final CurrentSubscriptionOverviewDataModel? overview;
  final String errorMessage;
  final bool isSignedOut;

  const ProfileState({
    this.status = ProfileStatus.initial,
    this.overview,
    this.errorMessage = '',
    this.isSignedOut = false,
  });

  ProfileState copyWith({
    ProfileStatus? status,
    CurrentSubscriptionOverviewDataModel? overview,
    String? errorMessage,
    bool? isSignedOut,
    bool clearOverview = false,
  }) {
    return ProfileState(
      status: status ?? this.status,
      overview: clearOverview ? null : overview ?? this.overview,
      errorMessage: errorMessage ?? this.errorMessage,
      isSignedOut: isSignedOut ?? this.isSignedOut,
    );
  }

  @override
  List<Object?> get props => [status, overview, errorMessage, isSignedOut];
}
