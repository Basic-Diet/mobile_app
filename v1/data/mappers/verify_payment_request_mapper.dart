import 'package:basic_diet/data/request/verify_payment_request.dart';
import 'package:basic_diet/domain/model/verify_payment_request_model.dart';

extension VerifyPaymentRequestModelMapper on VerifyPaymentRequestModel {
  VerifyPaymentRequest toRequest() {
    return VerifyPaymentRequest(
      providerPaymentId: providerPaymentId,
      providerInvoiceId: providerInvoiceId,
    );
  }
}
