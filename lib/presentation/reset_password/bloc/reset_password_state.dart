import 'package:equatable/equatable.dart';

enum ResetPasswordStatus { initial, loading, success, failure }

class ResetPasswordState extends Equatable {
  final ResetPasswordStatus status;
  final String otp;
  final String newPassword;
  final String? errorMessage;

  const ResetPasswordState({
    this.status = ResetPasswordStatus.initial,
    this.otp = '',
    this.newPassword = '',
    this.errorMessage,
  });

  ResetPasswordState copyWith({
    ResetPasswordStatus? status,
    String? otp,
    String? newPassword,
    String? errorMessage,
  }) {
    return ResetPasswordState(
      status: status ?? this.status,
      otp: otp ?? this.otp,
      newPassword: newPassword ?? this.newPassword,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, otp, newPassword, errorMessage];
}
