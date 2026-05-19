import 'package:equatable/equatable.dart';

sealed class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object?> get props => [];
}

final class ProfileOverviewRequested extends ProfileEvent {
  const ProfileOverviewRequested();
}

final class ProfileLogoutRequested extends ProfileEvent {
  const ProfileLogoutRequested();
}
