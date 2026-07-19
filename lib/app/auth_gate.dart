import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/usecase/get_current_user_usecase.dart';
import 'package:basic_diet/presentation/change_password/change_password_screen.dart';
import 'package:basic_diet/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<bool> requireAuthenticated(BuildContext context) async {
  final hasSession = await instance<AppPreferences>().hasSessionTokens();
  if (!hasSession) {
    if (context.mounted) {
      context.go(LoginScreen.loginRoute);
    }
    return false;
  }

  final currentUserResult = await instance<GetCurrentUserUseCase>().execute(
    null,
  );

  final isAllowed = await currentUserResult.fold(
    (failure) async {
      if (_shouldClearSession(failure.code)) {
        await instance<AppPreferences>().clearSession();
        if (context.mounted) {
          context.go(LoginScreen.loginRoute);
        }
        return false;
      }

      return true;
    },
    (data) async {
      if (data.user?.forcePasswordChange == true) {
        if (context.mounted) {
          context.go(ChangePasswordScreen.routeName);
        }
        return false;
      }

      return true;
    },
  );

  return isAllowed;
}

Future<bool> redirectIfPasswordChangeRequired(BuildContext context) async {
  final hasSession = await instance<AppPreferences>().hasSessionTokens();
  if (!hasSession) {
    return false;
  }

  final currentUserResult = await instance<GetCurrentUserUseCase>().execute(
    null,
  );

  return currentUserResult.fold(
    (failure) async {
      if (_shouldClearSession(failure.code)) {
        await instance<AppPreferences>().clearSession();
        if (context.mounted) {
          context.go(LoginScreen.loginRoute);
        }
        return true;
      }

      return false;
    },
    (data) async {
      if (data.user?.forcePasswordChange == true) {
        if (context.mounted) {
          context.go(ChangePasswordScreen.routeName);
        }
        return true;
      }

      return false;
    },
  );
}

bool _shouldClearSession(dynamic code) {
  return code == 401 ||
      code == 'TOKEN_INVALID' ||
      code == 'REFRESH_TOKEN_INVALID' ||
      code == 'SESSION_REVOKED';
}
