import 'package:basic_diet/data/response/auth_response.dart';
import 'package:basic_diet/domain/model/auth_model.dart';
import 'package:basic_diet/app/constants.dart';

extension AuthenticationResponseMapper on AuthenticationResponse? {
  AuthenticationModel toDomain() {
    return AuthenticationModel(
      ok: this?.ok ?? false,
      status: this?.status ?? Constants.empty,
      accessToken: this?.accessToken ?? Constants.empty,
      refreshToken: this?.refreshToken ?? Constants.empty,
      expiresIn: this?.expiresIn ?? Constants.zero,
      refreshExpiresIn: this?.refreshExpiresIn ?? Constants.zero,
      user: this?.user.toDomain(),
    );
  }
}

extension AuthUserResponseMapper on AuthUserResponse? {
  AuthUserModel toDomain() {
    return AuthUserModel(
      id: this?.id ?? Constants.empty,
      phoneE164: this?.phoneE164 ?? Constants.empty,
      phoneVerified: this?.phoneVerified ?? Constants.falseValue,
    );
  }
}
