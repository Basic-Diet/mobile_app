import 'package:basic_diet/data/response/base_response/base_response.dart';
import 'package:basic_diet/domain/model/base__model.dart';

extension BaseResponseMapper on BaseResponse? {
  bool _resolveStatus() {
    final response = this;

    if (response?.ok is bool) {
      return response!.ok!;
    }

    final status = response?.status;
    if (status is bool) {
      return status;
    }
    if (status is num) {
      return status >= 200 && status < 300;
    }
    if (status is String) {
      final normalizedStatus = status.trim().toLowerCase();
      return normalizedStatus == 'true' || normalizedStatus == 'success';
    }

    return false;
  }

  BaseModel toDomain() {
    return BaseModel(status: _resolveStatus(), message: this?.message ?? "");
  }
}
