import 'package:json_annotation/json_annotation.dart';

part 'orders_list_response.g.dart';

Object? _readOrderIdentifier(Map<dynamic, dynamic> json, String key) {
  return json[key] ?? json['orderId'];
}

@JsonSerializable(explicitToJson: true)
class OrdersListResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final OrdersListDataResponse? data;

  OrdersListResponse({this.status, this.message, this.data});

  factory OrdersListResponse.fromJson(Map<String, dynamic> json) =>
      _$OrdersListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersListResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrdersListDataResponse {
  @JsonKey(name: 'items')
  final List<OrdersListItemResponse>? items;

  @JsonKey(name: 'pagination')
  final OrdersListPaginationResponse? pagination;

  OrdersListDataResponse({this.items, this.pagination});

  factory OrdersListDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrdersListDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersListDataResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrdersListItemResponse {
  @JsonKey(name: 'id', readValue: _readOrderIdentifier)
  final String? id;

  @JsonKey(name: 'orderNumber')
  final String? orderNumber;

  @JsonKey(name: 'status')
  final String? status;

  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;

  @JsonKey(name: 'paymentId')
  final String? paymentId;

  @JsonKey(name: 'fulfillmentMethod')
  final String? fulfillmentMethod;

  @JsonKey(name: 'pricing')
  final Map<String, dynamic>? pricing;

  @JsonKey(name: 'items')
  final List<dynamic>? items;

  @JsonKey(name: 'createdAt')
  final String? createdAt;

  OrdersListItemResponse({
    this.id,
    this.orderNumber,
    this.status,
    this.paymentStatus,
    this.paymentId,
    this.fulfillmentMethod,
    this.pricing,
    this.items,
    this.createdAt,
  });

  factory OrdersListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OrdersListItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersListItemResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrdersListPaginationResponse {
  @JsonKey(name: 'page')
  final int? page;

  @JsonKey(name: 'limit')
  final int? limit;

  @JsonKey(name: 'total')
  final int? total;

  @JsonKey(name: 'pages')
  final int? pages;

  OrdersListPaginationResponse({this.page, this.limit, this.total, this.pages});

  factory OrdersListPaginationResponse.fromJson(Map<String, dynamic> json) =>
      _$OrdersListPaginationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersListPaginationResponseToJson(this);
}
