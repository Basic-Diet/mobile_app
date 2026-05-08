import 'package:flutter/foundation.dart';

class OneTimeMenuIntent {
  final String? sectionKey;
  final String? productKey;

  const OneTimeMenuIntent({this.sectionKey, this.productKey});
}

class OneTimeMenuCoordinator {
  OneTimeMenuCoordinator._();

  static final ValueNotifier<OneTimeMenuIntent?> intent =
      ValueNotifier<OneTimeMenuIntent?>(null);

  static void openSection(String sectionKey) {
    intent.value = OneTimeMenuIntent(sectionKey: sectionKey);
  }

  static void openProduct(String productKey) {
    intent.value = OneTimeMenuIntent(
      sectionKey: 'custom_order',
      productKey: productKey,
    );
  }

  static void clear() {
    intent.value = null;
  }
}
