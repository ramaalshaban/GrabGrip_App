// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrdersPage _$$_OrdersPageFromJson(Map<String, dynamic> json) =>
    _$_OrdersPage(
      json['current_page'] as int,
      json['last_page'] as int,
      json['total'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrdersPageToJson(_$_OrdersPage instance) =>
    <String, dynamic>{
      'current_page': instance.pageNumber,
      'last_page': instance.lastPageNumber,
      'total': instance.gearsCount,
      'data': instance.orders,
    };
