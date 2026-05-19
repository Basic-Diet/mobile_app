import 'package:json_annotation/json_annotation.dart';

part 'cancel_order_response.g.dart';

Object? _readOrderIdentifier(Map<dynamic, dynamic> json, String key) {
  return json[key] ?? json['orderId'];
}

@JsonSerializable(explicitToJson: true)
class CancelOrderResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final CancelOrderDataResponse? data;

  CancelOrderResponse({this.status, this.message, this.data});

  factory CancelOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CancelOrderResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CancelOrderDataResponse {
  @JsonKey(name: 'id', readValue: _readOrderIdentifier)
  final String? id;

  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;

  @JsonKey(name: 'allowedActions')
  final List<dynamic>? allowedActions;

  @JsonKey(name: 'cancelledBy')
  final String? cancelledBy;

  @JsonKey(name: 'canceledBy')
  final String? canceledBy;

  @JsonKey(name: 'cancellationReason')
  final String? cancellationReason;

  @JsonKey(name: 'cancellationNote')
  final String? cancellationNote;

  @JsonKey(name: 'cancelledAt')
  final String? cancelledAt;

  @JsonKey(name: 'canceledAt')
  final String? canceledAt;

  CancelOrderDataResponse({
    this.id,
    this.status,
    this.paymentStatus,
    this.allowedActions,
    this.cancelledBy,
    this.canceledBy,
    this.cancellationReason,
    this.cancellationNote,
    this.cancelledAt,
    this.canceledAt,
  });

  factory CancelOrderDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelOrderDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CancelOrderDataResponseToJson(this);
}
