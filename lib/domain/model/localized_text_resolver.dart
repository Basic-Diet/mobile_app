class LocalizedTextValue {
  final String ar;
  final String en;
  final String scalar;

  const LocalizedTextValue({
    required this.ar,
    required this.en,
    required this.scalar,
  });

  String resolve(String localeCode) {
    final isArabic = localeCode.toLowerCase().startsWith('ar');
    final preferred = isArabic ? ar : en;
    if (preferred.trim().isNotEmpty) {
      return preferred;
    }

    if (scalar.trim().isNotEmpty) {
      return scalar;
    }

    final fallback = isArabic ? en : ar;
    return fallback.trim().isNotEmpty ? fallback : '';
  }
}

class LocalizedTextResolver {
  const LocalizedTextResolver._();

  static LocalizedTextValue fromJsonValue(
    Object? value,
    Map<String, dynamic> json, {
    String arFallbackKey = 'nameAr',
    String enFallbackKey = 'nameEn',
    String titleArFallbackKey = 'titleAr',
    String titleEnFallbackKey = 'titleEn',
  }) {
    final scalar = value is String ? value : '';
    final localized = value is Map ? value : const <Object?, Object?>{};

    final ar = _firstNonEmpty([
      _readMapString(localized, 'ar'),
      _readJsonString(json, arFallbackKey),
      _readJsonString(json, titleArFallbackKey),
      scalar,
      _readMapString(localized, 'en'),
    ]);

    final en = _firstNonEmpty([
      _readMapString(localized, 'en'),
      _readJsonString(json, enFallbackKey),
      _readJsonString(json, titleEnFallbackKey),
      scalar,
      _readMapString(localized, 'ar'),
    ]);

    return LocalizedTextValue(ar: ar, en: en, scalar: scalar);
  }

  static String _readJsonString(Map<String, dynamic> json, String key) {
    final value = json[key];
    return value is String ? value.trim() : '';
  }

  static String _readMapString(Map<Object?, Object?> map, String key) {
    final value = map[key];
    return value is String ? value.trim() : '';
  }

  static String _firstNonEmpty(List<String> values) {
    for (final value in values) {
      final trimmed = value.trim();
      if (trimmed.isNotEmpty) {
        return trimmed;
      }
    }
    return '';
  }
}
