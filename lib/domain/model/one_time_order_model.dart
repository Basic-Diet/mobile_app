class OneTimeOrderModel {
  final String orderId;
  final String paymentId;
  final String paymentUrl;
  final String? invoiceId;
  final String status;
  final String paymentStatus;
  final String? expiresAt;

  const OneTimeOrderModel({
    required this.orderId,
    required this.paymentId,
    required this.paymentUrl,
    this.invoiceId,
    required this.status,
    required this.paymentStatus,
    this.expiresAt,
  });
}
