import 'package:basic_diet/data/data_source/remote_data_source_impl.dart';
import 'package:basic_diet/data/network/app_api.dart';
import 'package:basic_diet/data/response/auth_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('registration verification request', () {
    test('does not send skip_otp in the mobile payload', () async {
      final appServiceClient = _CapturingAppServiceClient();
      final dataSource = RemoteDataSourceImpl(appServiceClient);

      await dataSource.verifyRegistrationOtp(
        '+201234567890',
        '123456',
        'password123',
        'device-id',
        'iPhone',
      );

      expect(appServiceClient.verifyRegistrationOtpBody, {
        'phoneE164': '+201234567890',
        'otp': '123456',
        'password': 'password123',
        'deviceId': 'device-id',
        'deviceName': 'iPhone',
      });
      expect(
        appServiceClient.verifyRegistrationOtpBody,
        isNot(contains('skip_otp')),
      );
    });
  });
}

class _CapturingAppServiceClient implements AppServiceClient {
  late Map<String, dynamic> verifyRegistrationOtpBody;

  @override
  Future<AuthenticationResponse> verifyRegistrationOtp(
    Map<String, dynamic> body,
  ) async {
    verifyRegistrationOtpBody = body;
    return const AuthenticationResponse(ok: true, status: 'success');
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
