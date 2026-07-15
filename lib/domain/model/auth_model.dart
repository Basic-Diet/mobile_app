class AuthenticationModel {
  final bool ok;
  final String status;
  final String accessToken;
  final String refreshToken;
  final bool mustChangePassword;
  final String passwordChangeToken;
  final int expiresIn;
  final int refreshExpiresIn;
  final AuthUserModel? user;

  const AuthenticationModel({
    this.ok = false,
    this.status = '',
    this.accessToken = '',
    this.refreshToken = '',
    this.mustChangePassword = false,
    this.passwordChangeToken = '',
    this.expiresIn = 0,
    this.refreshExpiresIn = 0,
    this.user,
  });

  bool get isPasswordChangeRequired =>
      status == 'password_change_required' &&
      mustChangePassword &&
      passwordChangeToken.isNotEmpty;

  bool get hasNormalSession =>
      accessToken.isNotEmpty && refreshToken.isNotEmpty;
}

class AuthUserModel {
  final String id;
  final String phoneE164;
  final String fullName;
  final bool phoneVerified;
  final bool forcePasswordChange;

  const AuthUserModel({
    this.id = '',
    this.phoneE164 = '',
    this.fullName = '',
    this.phoneVerified = false,
    this.forcePasswordChange = false,
  });
}
