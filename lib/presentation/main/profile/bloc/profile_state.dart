import 'package:basic_diet/domain/model/client_profile_model.dart';
import 'package:equatable/equatable.dart';

enum ProfileStatus { initial, loading, success, failure }

class ProfileState extends Equatable {
  final ProfileStatus status;
  final ClientProfileDataModel? profile;
  final String errorMessage;
  final bool isSignedOut;

  const ProfileState({
    this.status = ProfileStatus.initial,
    this.profile,
    this.errorMessage = '',
    this.isSignedOut = false,
  });

  ProfileState copyWith({
    ProfileStatus? status,
    ClientProfileDataModel? profile,
    String? errorMessage,
    bool? isSignedOut,
    bool clearProfile = false,
  }) {
    return ProfileState(
      status: status ?? this.status,
      profile: clearProfile ? null : profile ?? this.profile,
      errorMessage: errorMessage ?? this.errorMessage,
      isSignedOut: isSignedOut ?? this.isSignedOut,
    );
  }

  @override
  List<Object?> get props => [status, profile, errorMessage, isSignedOut];
}
