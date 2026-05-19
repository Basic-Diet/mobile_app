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

  CancelOrderDataResponse({this.id, this.status, this.paymentStatus});

  factory CancelOrderDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelOrderDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CancelOrderDataResponseToJson(this);
}
