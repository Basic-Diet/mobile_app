import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/verify_payment_response.dart';
import 'package:basic_diet/domain/model/verify_payment_model.dart';

extension VerifyPaymentResponseMapper on VerifyPaymentResponse? {
  VerifyPaymentModel toDomain() {
    return VerifyPaymentModel(
      orderId: this?.data?.orderId ?? Constants.empty,
      paymentId: this?.data?.paymentId ?? Constants.empty,
      orderStatus: this?.data?.orderStatus ?? Constants.empty,
      paymentStatus: this?.data?.paymentStatus ?? Constants.empty,
      applied: this?.data?.applied ?? Constants.falseValue,
      providerInvoiceStatus:
          this?.data?.providerInvoiceStatus ?? Constants.empty,
      isFinal: this?.data?.isFinal ?? Constants.falseValue,
    );
  }
}
