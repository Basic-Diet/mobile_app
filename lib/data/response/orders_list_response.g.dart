// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersListResponse _$OrdersListResponseFromJson(Map<String, dynamic> json) =>
    OrdersListResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data:
          json['data'] == null
              ? null
              : OrdersListDataResponse.fromJson(
                json['data'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$OrdersListResponseToJson(OrdersListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

OrdersListDataResponse _$OrdersListDataResponseFromJson(
  Map<String, dynamic> json,
) => OrdersListDataResponse(
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => OrdersListItemResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  pagination:
      json['pagination'] == null
          ? null
          : OrdersListPaginationResponse.fromJson(
            json['pagination'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$OrdersListDataResponseToJson(
  OrdersListDataResponse instance,
) => <String, dynamic>{
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'pagination': instance.pagination?.toJson(),
};

OrdersListItemResponse _$OrdersListItemResponseFromJson(
  Map<String, dynamic> json,
) => OrdersListItemResponse(
  id: _readOrderIdentifier(json, 'id') as String?,
  orderNumber: json['orderNumber'] as String?,
  status: json['status'] as String?,
  paymentStatus: json['paymentStatus'] as String?,
  paymentId: json['paymentId'] as String?,
  fulfillmentMethod: json['fulfillmentMethod'] as String?,
  pricing: json['pricing'] as Map<String, dynamic>?,
  items: json['items'] as List<dynamic>?,
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$OrdersListItemResponseToJson(
  OrdersListItemResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'orderNumber': instance.orderNumber,
  'status': instance.status,
  'paymentStatus': instance.paymentStatus,
  'paymentId': instance.paymentId,
  'fulfillmentMethod': instance.fulfillmentMethod,
  'pricing': instance.pricing,
  'items': instance.items,
  'createdAt': instance.createdAt,
};

OrdersListPaginationResponse _$OrdersListPaginationResponseFromJson(
  Map<String, dynamic> json,
) => OrdersListPaginationResponse(
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
  pages: (json['pages'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrdersListPaginationResponseToJson(
  OrdersListPaginationResponse instance,
) => <String, dynamic>{
  'page': instance.page,
  'limit': instance.limit,
  'total': instance.total,
  'pages': instance.pages,
};
