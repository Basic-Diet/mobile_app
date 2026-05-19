import 'package:basic_diet/data/response/order_timeline_response.dart';
import 'package:basic_diet/domain/model/order_timeline_model.dart';

extension OrderTimelineResponseMapper on OrderTimelineResponse? {
  OrderTimelineModel toDomain() {
    return OrderTimelineModel(
      orderId: this?.data?.orderId ?? '',
      currentStatus: this?.data?.currentStatus ?? '',
      timeline:
          this?.data?.timeline?.map((e) => e.toDomain()).toList() ?? const [],
    );
  }
}

extension OrderTimelineItemResponseMapper on OrderTimelineItemResponse? {
  OrderTimelineItemModel toDomain() {
    return OrderTimelineItemModel(
      key: this?.key ?? '',
      labelAr: this?.labelAr ?? '',
      labelEn: this?.labelEn ?? '',
      state: this?.state ?? 'pending',
      time: this?.time,
    );
  }
}
