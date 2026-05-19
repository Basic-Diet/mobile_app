class AuthenticationModel {
  final bool ok;
  final String status;
  final String accessToken;
  final String refreshToken;
  final int expiresIn;
  final int refreshExpiresIn;
  final AuthUserModel? user;

  const AuthenticationModel({
    this.ok = false,
    this.status = '',
    this.accessToken = '',
    this.refreshToken = '',
    this.expiresIn = 0,
    this.refreshExpiresIn = 0,
    this.user,
  });
}

class AuthUserModel {
  final String id;
  final String phoneE164;
  final bool phoneVerified;

  const AuthUserModel({
    this.id = '',
    this.phoneE164 = '',
    this.phoneVerified = false,
  });
}
