import 'package:basic_diet/app/constants.dart';

extension ErrorResponseMapper on Map<String, dynamic>? {
  String toDomain({String? preferredLanguageCode}) {
    if (this == null) return Constants.empty;

    // Check if there's an error object or validation messages
    final errorData = this!['error'];
    if (errorData is Map<String, dynamic> && errorData.isNotEmpty) {
      final details = errorData['details'];
      if (details is Map<String, dynamic>) {
        final normalizedLanguageCode =
            preferredLanguageCode?.toLowerCase().trim() ?? '';
        final localizedMessage =
            normalizedLanguageCode.startsWith('ar')
                ? details['messageAr']
                : details['messageEn'];
        if (localizedMessage is String && localizedMessage.isNotEmpty) {
          return localizedMessage;
        }
      }

      if (errorData.containsKey('message')) {
        return errorData['message'].toString();
      }
      return errorData.values.first.toString();
    }

    // Fallback to the message field
    return this!['message']?.toString() ?? Constants.empty;
  }
}
