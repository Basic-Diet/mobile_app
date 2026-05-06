class VerifyPaymentModel {
  final String orderId;
  final String paymentId;
  final String orderStatus;
  final String paymentStatus;
  final bool applied;
  final String providerInvoiceStatus;
  final bool isFinal;

  const VerifyPaymentModel({
    required this.orderId,
    required this.paymentId,
    required this.orderStatus,
    required this.paymentStatus,
    required this.applied,
    required this.providerInvoiceStatus,
    required this.isFinal,
  });
}
