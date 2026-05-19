import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/create_order_response.dart';
import 'package:basic_diet/domain/model/one_time_order_model.dart';

extension CreateOrderResponseMapper on CreateOrderResponse? {
  OneTimeOrderModel toDomain() {
    return OneTimeOrderModel(
      orderId: this?.data?.orderId ?? Constants.empty,
      paymentId: this?.data?.paymentId ?? Constants.empty,
      paymentUrl: this?.data?.paymentUrl ?? Constants.empty,
      invoiceId: this?.data?.invoiceId,
      status: this?.data?.status ?? Constants.empty,
      paymentStatus: this?.data?.paymentStatus ?? Constants.empty,
      expiresAt: this?.data?.expiresAt,
    );
  }
}
