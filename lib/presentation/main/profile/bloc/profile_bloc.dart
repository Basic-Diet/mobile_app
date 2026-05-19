import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/domain/usecase/get_client_profile_usecase.dart';
import 'package:basic_diet/domain/usecase/logout_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetClientProfileUseCase _getClientProfileUseCase;
  final LogoutUseCase _logoutUseCase;
  final AppPreferences _appPreferences;

  ProfileBloc(
    this._getClientProfileUseCase,
    this._logoutUseCase,
    this._appPreferences,
  ) : super(const ProfileState()) {
    on<ProfileOverviewRequested>(_onProfileOverviewRequested);
    on<ProfileLogoutRequested>(_onProfileLogoutRequested);
  }

  Future<void> _onProfileOverviewRequested(
    ProfileOverviewRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: ProfileStatus.loading));

    final result = await _getClientProfileUseCase.execute(null);

    result.fold(
      (failure) {
        if (!isClosed) {
          emit(
            state.copyWith(
              status: ProfileStatus.failure,
              errorMessage: failure.message,
              clearProfile: true,
            ),
          );
        }
      },
      (data) {
        if (!isClosed) {
          emit(
            state.copyWith(
              status: ProfileStatus.success,
              profile: data.data,
              errorMessage: '',
            ),
          );
        }
      },
    );
  }

  Future<void> _onProfileLogoutRequested(
    ProfileLogoutRequested event,
    Emitter<ProfileState> emit,
  ) async {
    // Attempt server-side logout first (best-effort)
    try {
      final refreshToken = await _appPreferences.getRefreshToken();
      if (refreshToken.isNotEmpty) {
        await _logoutUseCase.execute(refreshToken);
      }
    } catch (_) {
      // Ignore server logout errors; always clear local session
    }

    await _appPreferences.logOut();
    if (!isClosed) {
      emit(state.copyWith(isSignedOut: true));
    }
  }
}
