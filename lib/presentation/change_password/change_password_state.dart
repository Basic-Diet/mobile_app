import 'package:equatable/equatable.dart';

enum ChangePasswordStatus { initial, loading, success, failure }

class ChangePasswordState extends Equatable {
  final ChangePasswordStatus status;
  final bool isCurrentPasswordNotEmpty;
  final String? currentPasswordError;
  final bool isNewPasswordNotEmpty;
  final String? newPasswordError;
  final bool isConfirmPasswordNotEmpty;
  final String? confirmPasswordError;
  final String? errorMessage;

  const ChangePasswordState({
    this.status = ChangePasswordStatus.initial,
    this.isCurrentPasswordNotEmpty = false,
    this.currentPasswordError,
    this.isNewPasswordNotEmpty = false,
    this.newPasswordError,
    this.isConfirmPasswordNotEmpty = false,
    this.confirmPasswordError,
    this.errorMessage,
  });

  ChangePasswordState copyWith({
    ChangePasswordStatus? status,
    bool? isCurrentPasswordNotEmpty,
    String? currentPasswordError,
    bool? isNewPasswordNotEmpty,
    String? newPasswordError,
    bool? isConfirmPasswordNotEmpty,
    String? confirmPasswordError,
    String? errorMessage,
  }) {
    return ChangePasswordState(
      status: status ?? this.status,
      isCurrentPasswordNotEmpty:
          isCurrentPasswordNotEmpty ?? this.isCurrentPasswordNotEmpty,
      currentPasswordError: currentPasswordError,
      isNewPasswordNotEmpty:
          isNewPasswordNotEmpty ?? this.isNewPasswordNotEmpty,
      newPasswordError: newPasswordError,
      isConfirmPasswordNotEmpty:
          isConfirmPasswordNotEmpty ?? this.isConfirmPasswordNotEmpty,
      confirmPasswordError: confirmPasswordError,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    status,
    isCurrentPasswordNotEmpty,
    currentPasswordError ?? '',
    isNewPasswordNotEmpty,
    newPasswordError ?? '',
    isConfirmPasswordNotEmpty,
    confirmPasswordError ?? '',
    errorMessage ?? '',
  ];
}
