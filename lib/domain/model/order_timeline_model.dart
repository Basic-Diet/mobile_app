class OrderTimelineModel {
  final String orderId;
  final String currentStatus;
  final List<OrderTimelineItemModel> timeline;

  const OrderTimelineModel({
    required this.orderId,
    required this.currentStatus,
    required this.timeline,
  });
}

class OrderTimelineItemModel {
  final String key;
  final String labelAr;
  final String labelEn;
  final String state;
  final String? time;

  const OrderTimelineItemModel({
    required this.key,
    required this.labelAr,
    required this.labelEn,
    required this.state,
    this.time,
  });

  bool get isPending => state == 'pending';
  bool get isActive => state == 'active';
  bool get isCompleted => state == 'completed';
  bool get isCancelled => state == 'cancelled';
  bool get isHidden => state == 'hidden';
}
