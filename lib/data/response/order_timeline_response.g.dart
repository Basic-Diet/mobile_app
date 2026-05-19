// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_timeline_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderTimelineResponse _$OrderTimelineResponseFromJson(
  Map<String, dynamic> json,
) => OrderTimelineResponse(
  status: json['status'] as bool?,
  message: json['message'] as String?,
  data:
      json['data'] == null
          ? null
          : OrderTimelineDataResponse.fromJson(
            json['data'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$OrderTimelineResponseToJson(
  OrderTimelineResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data?.toJson(),
};

OrderTimelineDataResponse _$OrderTimelineDataResponseFromJson(
  Map<String, dynamic> json,
) => OrderTimelineDataResponse(
  orderId: json['order_id'] as String?,
  currentStatus: json['current_status'] as String?,
  timeline:
      (json['timeline'] as List<dynamic>?)
          ?.map(
            (e) =>
                OrderTimelineItemResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$OrderTimelineDataResponseToJson(
  OrderTimelineDataResponse instance,
) => <String, dynamic>{
  'order_id': instance.orderId,
  'current_status': instance.currentStatus,
  'timeline': instance.timeline?.map((e) => e.toJson()).toList(),
};

OrderTimelineItemResponse _$OrderTimelineItemResponseFromJson(
  Map<String, dynamic> json,
) => OrderTimelineItemResponse(
  key: json['key'] as String?,
  labelAr: json['label_ar'] as String?,
  labelEn: json['label_en'] as String?,
  state: json['state'] as String?,
  time: json['time'] as String?,
);

Map<String, dynamic> _$OrderTimelineItemResponseToJson(
  OrderTimelineItemResponse instance,
) => <String, dynamic>{
  'key': instance.key,
  'label_ar': instance.labelAr,
  'label_en': instance.labelEn,
  'state': instance.state,
  'time': instance.time,
};
