import 'package:json_annotation/json_annotation.dart';

part 'order_timeline_response.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderTimelineResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final OrderTimelineDataResponse? data;

  OrderTimelineResponse({this.status, this.message, this.data});

  factory OrderTimelineResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderTimelineResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderTimelineResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderTimelineDataResponse {
  @JsonKey(name: 'order_id')
  final String? orderId;

  @JsonKey(name: 'current_status')
  final String? currentStatus;

  @JsonKey(name: 'timeline')
  final List<OrderTimelineItemResponse>? timeline;

  OrderTimelineDataResponse({
    this.orderId,
    this.currentStatus,
    this.timeline,
  });

  factory OrderTimelineDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderTimelineDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderTimelineDataResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderTimelineItemResponse {
  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'label_ar')
  final String? labelAr;

  @JsonKey(name: 'label_en')
  final String? labelEn;

  @JsonKey(name: 'state')
  final String? state;

  @JsonKey(name: 'time')
  final String? time;

  OrderTimelineItemResponse({
    this.key,
    this.labelAr,
    this.labelEn,
    this.state,
    this.time,
  });

  factory OrderTimelineItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderTimelineItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderTimelineItemResponseToJson(this);
}
