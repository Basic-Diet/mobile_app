import 'package:basic_diet/data/response/base_response/base_response.dart';
import 'package:basic_diet/domain/model/base__model.dart';

extension BaseResponseMapper on BaseResponse? {
  BaseModel toDomain() {
    return BaseModel(
      status: this?.ok ?? this?.status ?? false,
      message: this?.message ?? this?.status?.toString() ?? "",
    );
  }
}
