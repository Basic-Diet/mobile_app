import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<bool> requireAuthenticated(BuildContext context) async {
  final hasSession = await instance<AppPreferences>().hasSessionTokens();
  if (hasSession) {
    return true;
  }

  if (context.mounted) {
    context.push(LoginScreen.loginRoute);
  }

  return false;
}
