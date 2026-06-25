import 'package:basic_diet/domain/usecase/change_password_usecase.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'change_password_event.dart';
import 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ChangePasswordUseCase _changePasswordUseCase;

  ChangePasswordBloc(this._changePasswordUseCase)
    : super(const ChangePasswordState()) {
    on<ChangePasswordCurrentChanged>(_onCurrentChanged);
    on<ChangePasswordNewChanged>(_onNewChanged);
    on<ChangePasswordConfirmChanged>(_onConfirmChanged);
    on<ChangePasswordSubmitted>(_onSubmitted);
  }

  void _onCurrentChanged(
    ChangePasswordCurrentChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    emit(
      state.copyWith(
        status: ChangePasswordStatus.initial,
        isCurrentPasswordNotEmpty: event.currentPassword.isNotEmpty,
        currentPasswordError: _validateCurrentPassword(event.currentPassword),
      ),
    );
  }

  void _onNewChanged(
    ChangePasswordNewChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    final confirmPasswordError =
        event.confirmPassword.isEmpty
            ? state.confirmPasswordError
            : _validateConfirmPassword(
              event.confirmPassword,
              event.newPassword,
            );

    emit(
      state.copyWith(
        status: ChangePasswordStatus.initial,
        isNewPasswordNotEmpty: event.newPassword.isNotEmpty,
        newPasswordError: _validateNewPassword(event.newPassword),
        confirmPasswordError: confirmPasswordError,
      ),
    );
  }

  void _onConfirmChanged(
    ChangePasswordConfirmChanged event,
    Emitter<ChangePasswordState> emit,
  ) {
    emit(
      state.copyWith(
        status: ChangePasswordStatus.initial,
        isConfirmPasswordNotEmpty: event.confirmPassword.isNotEmpty,
        confirmPasswordError: _validateConfirmPassword(
          event.confirmPassword,
          event.newPassword,
        ),
      ),
    );
  }

  Future<void> _onSubmitted(
    ChangePasswordSubmitted event,
    Emitter<ChangePasswordState> emit,
  ) async {
    final currentPasswordError =
        _validateCurrentPassword(event.currentPassword);
    final newPasswordError = _validateNewPassword(event.newPassword);
    final confirmPasswordError = _validateConfirmPassword(
      event.confirmPassword,
      event.newPassword,
    );

    if (currentPasswordError != null ||
        newPasswordError != null ||
        confirmPasswordError != null) {
      emit(
        state.copyWith(
          status: ChangePasswordStatus.initial,
          isCurrentPasswordNotEmpty: event.currentPassword.isNotEmpty,
          currentPasswordError: currentPasswordError,
          isNewPasswordNotEmpty: event.newPassword.isNotEmpty,
          newPasswordError: newPasswordError,
          isConfirmPasswordNotEmpty: event.confirmPassword.isNotEmpty,
          confirmPasswordError: confirmPasswordError,
        ),
      );
      return;
    }

    emit(state.copyWith(status: ChangePasswordStatus.loading));

    final result = await _changePasswordUseCase.execute(
      ChangePasswordUseCaseInput(
        currentPassword: event.currentPassword,
        newPassword: event.newPassword,
        confirmPassword: event.confirmPassword,
      ),
    );

    result.fold(
      (failure) {
        if (!isClosed) {
          emit(
            state.copyWith(
              status: ChangePasswordStatus.failure,
              errorMessage: failure.message,
            ),
          );
        }
      },
      (_) {
        if (!isClosed) {
          emit(state.copyWith(status: ChangePasswordStatus.success));
        }
      },
    );
  }

  String? _validateCurrentPassword(String password) {
    if (password.isEmpty) return Strings.currentPasswordRequired.tr();
    return null;
  }

  String? _validateNewPassword(String password) {
    if (password.isEmpty) return Strings.newPasswordRequired.tr();
    if (password.length < 8) return Strings.passwordTooShort.tr();
    final hasLetter = password.contains(RegExp(r'[a-zA-Z]'));
    final hasNumber = password.contains(RegExp(r'[0-9]'));
    if (!hasLetter || !hasNumber) {
      return Strings.passwordComplexity.tr();
    }
    return null;
  }

  String? _validateConfirmPassword(String confirmPassword, String password) {
    if (confirmPassword.isEmpty) return Strings.confirmPasswordRequired.tr();
    if (confirmPassword != password) return Strings.passwordMismatch.tr();
    return null;
  }
}
