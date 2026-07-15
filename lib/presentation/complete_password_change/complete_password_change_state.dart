import 'package:equatable/equatable.dart';

enum CompletePasswordChangeStatus {
  initial,
  loading,
  success,
  failure,
  challengeInvalid,
}

class CompletePasswordChangeState extends Equatable {
  final CompletePasswordChangeStatus status;
  final bool isNewPasswordNotEmpty;
  final bool isConfirmPasswordNotEmpty;
  final String? newPasswordError;
  final String? confirmPasswordError;
  final String? errorMessage;

  const CompletePasswordChangeState({
    this.status = CompletePasswordChangeStatus.initial,
    this.isNewPasswordNotEmpty = false,
    this.isConfirmPasswordNotEmpty = false,
    this.newPasswordError,
    this.confirmPasswordError,
    this.errorMessage,
  });

  CompletePasswordChangeState copyWith({
    CompletePasswordChangeStatus? status,
    bool? isNewPasswordNotEmpty,
    bool? isConfirmPasswordNotEmpty,
    String? newPasswordError,
    String? confirmPasswordError,
    String? errorMessage,
  }) {
    return CompletePasswordChangeState(
      status: status ?? this.status,
      isNewPasswordNotEmpty:
          isNewPasswordNotEmpty ?? this.isNewPasswordNotEmpty,
      isConfirmPasswordNotEmpty:
          isConfirmPasswordNotEmpty ?? this.isConfirmPasswordNotEmpty,
      newPasswordError: newPasswordError,
      confirmPasswordError: confirmPasswordError,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    status,
    isNewPasswordNotEmpty,
    isConfirmPasswordNotEmpty,
    newPasswordError ?? '',
    confirmPasswordError ?? '',
    errorMessage ?? '',
  ];
}
