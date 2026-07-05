import 'package:basic_diet/app/constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('base URL uses debug default for local test runs', () {
    expect(Constants.baseUrl, Constants.debugBaseUrl);
  });

  test('release base URL points to production Railway host', () {
    expect(
      Constants.releaseBaseUrl,
      'https://basicdiet145-production-51e9.up.railway.app',
    );
  });
}
