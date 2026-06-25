import 'package:equatable/equatable.dart';

sealed class ChangePasswordEvent extends Equatable {
  const ChangePasswordEvent();

  @override
  List<Object?> get props => [];
}

class ChangePasswordCurrentChanged extends ChangePasswordEvent {
  final String currentPassword;

  const ChangePasswordCurrentChanged(this.currentPassword);

  @override
  List<Object?> get props => [currentPassword.isNotEmpty];
}

class ChangePasswordNewChanged extends ChangePasswordEvent {
  final String newPassword;
  final String confirmPassword;

  const ChangePasswordNewChanged({
    required this.newPassword,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [newPassword.isNotEmpty, confirmPassword.isNotEmpty];
}

class ChangePasswordConfirmChanged extends ChangePasswordEvent {
  final String newPassword;
  final String confirmPassword;

  const ChangePasswordConfirmChanged({
    required this.newPassword,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [newPassword.isNotEmpty, confirmPassword.isNotEmpty];
}

class ChangePasswordSubmitted extends ChangePasswordEvent {
  final String currentPassword;
  final String newPassword;
  final String confirmPassword;

  const ChangePasswordSubmitted({
    required this.currentPassword,
    required this.newPassword,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [
    currentPassword.isNotEmpty,
    newPassword.isNotEmpty,
    confirmPassword.isNotEmpty,
  ];
}
