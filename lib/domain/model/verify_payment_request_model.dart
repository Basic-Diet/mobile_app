class VerifyPaymentRequestModel {
  final String? providerPaymentId;
  final String? providerInvoiceId;

  const VerifyPaymentRequestModel({
    this.providerPaymentId,
    this.providerInvoiceId,
  });
}
