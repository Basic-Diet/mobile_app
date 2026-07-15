import 'package:equatable/equatable.dart';

sealed class CompletePasswordChangeEvent extends Equatable {
  const CompletePasswordChangeEvent();

  @override
  List<Object?> get props => [];
}

class CompletePasswordChangeNewChanged extends CompletePasswordChangeEvent {
  final String newPassword;
  final String confirmPassword;

  const CompletePasswordChangeNewChanged({
    required this.newPassword,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [newPassword.isNotEmpty, confirmPassword.isNotEmpty];
}

class CompletePasswordChangeConfirmChanged extends CompletePasswordChangeEvent {
  final String newPassword;
  final String confirmPassword;

  const CompletePasswordChangeConfirmChanged({
    required this.newPassword,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [newPassword.isNotEmpty, confirmPassword.isNotEmpty];
}

class CompletePasswordChangeSubmitted extends CompletePasswordChangeEvent {
  final String newPassword;
  final String confirmPassword;

  const CompletePasswordChangeSubmitted({
    required this.newPassword,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [newPassword.isNotEmpty, confirmPassword.isNotEmpty];
}
