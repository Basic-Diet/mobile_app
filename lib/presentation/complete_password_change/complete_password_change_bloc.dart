import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/usecase/complete_password_change_usecase.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'complete_password_change_event.dart';
import 'complete_password_change_state.dart';

class CompletePasswordChangeBloc
    extends Bloc<CompletePasswordChangeEvent, CompletePasswordChangeState> {
  final CompletePasswordChangeUseCase _completePasswordChangeUseCase;
  final AppPreferences _appPreferences;
  final String _passwordChangeToken;

  CompletePasswordChangeBloc(
    this._completePasswordChangeUseCase,
    this._appPreferences,
    this._passwordChangeToken,
  ) : super(const CompletePasswordChangeState()) {
    on<CompletePasswordChangeNewChanged>(_onNewChanged);
    on<CompletePasswordChangeConfirmChanged>(_onConfirmChanged);
    on<CompletePasswordChangeSubmitted>(_onSubmitted);
  }

  void _onNewChanged(
    CompletePasswordChangeNewChanged event,
    Emitter<CompletePasswordChangeState> emit,
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
        status: CompletePasswordChangeStatus.initial,
        isNewPasswordNotEmpty: event.newPassword.isNotEmpty,
        newPasswordError: _validateNewPassword(event.newPassword),
        confirmPasswordError: confirmPasswordError,
      ),
    );
  }

  void _onConfirmChanged(
    CompletePasswordChangeConfirmChanged event,
    Emitter<CompletePasswordChangeState> emit,
  ) {
    emit(
      state.copyWith(
        status: CompletePasswordChangeStatus.initial,
        isConfirmPasswordNotEmpty: event.confirmPassword.isNotEmpty,
        confirmPasswordError: _validateConfirmPassword(
          event.confirmPassword,
          event.newPassword,
        ),
      ),
    );
  }

  Future<void> _onSubmitted(
    CompletePasswordChangeSubmitted event,
    Emitter<CompletePasswordChangeState> emit,
  ) async {
    if (state.status == CompletePasswordChangeStatus.loading) return;

    final newPasswordError = _validateNewPassword(event.newPassword);
    final confirmPasswordError = _validateConfirmPassword(
      event.confirmPassword,
      event.newPassword,
    );

    if (newPasswordError != null || confirmPasswordError != null) {
      emit(
        state.copyWith(
          status: CompletePasswordChangeStatus.initial,
          isNewPasswordNotEmpty: event.newPassword.isNotEmpty,
          newPasswordError: newPasswordError,
          isConfirmPasswordNotEmpty: event.confirmPassword.isNotEmpty,
          confirmPasswordError: confirmPasswordError,
        ),
      );
      return;
    }

    emit(state.copyWith(status: CompletePasswordChangeStatus.loading));

    final result = await _completePasswordChangeUseCase.execute(
      CompletePasswordChangeUseCaseInput(
        passwordChangeToken: _passwordChangeToken,
        newPassword: event.newPassword,
        confirmPassword: event.confirmPassword,
      ),
    );

    await result.fold(
      (failure) async {
        if (!isClosed) {
          emit(
            state.copyWith(
              status:
                  _isChallengeInvalid(failure)
                      ? CompletePasswordChangeStatus.challengeInvalid
                      : CompletePasswordChangeStatus.failure,
              errorMessage: _localizedFailureMessage(failure),
            ),
          );
        }
      },
      (data) async {
        if (!data.hasNormalSession || data.isPasswordChangeRequired) {
          if (!isClosed) {
            emit(
              state.copyWith(
                status: CompletePasswordChangeStatus.failure,
                errorMessage: Strings.defaultError.tr(),
              ),
            );
          }
          return;
        }

        await _appPreferences.saveSession(
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
          expiresIn: data.expiresIn,
        );

        if (!isClosed) {
          emit(state.copyWith(status: CompletePasswordChangeStatus.success));
        }
      },
    );
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

  String _localizedFailureMessage(Failure failure) {
    if (failure.code == 'WEAK_PASSWORD') {
      return Strings.weakPassword.tr();
    }
    if (failure.code == 'PASSWORD_CONFIRMATION_MISMATCH') {
      return Strings.passwordMismatch.tr();
    }
    if (_isChallengeInvalid(failure)) {
      return Strings.passwordChangeChallengeInvalid.tr();
    }
    return failure.message;
  }

  bool _isChallengeInvalid(Failure failure) {
    return failure.code == 'PASSWORD_CHANGE_TOKEN_EXPIRED' ||
        failure.code == 'PASSWORD_CHANGE_TOKEN_INVALID' ||
        failure.code == 'INVALID_PASSWORD_CHANGE_TOKEN' ||
        failure.code == 'TOKEN_EXPIRED' ||
        failure.code == 'UNAUTHORIZED';
  }
}
