// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      json['hash'] as String,
      json['id'] as int,
      json['status'] as String,
      json['created_at'] as String,
      json['amount'] as String,
      json['currency'] as String,
      json['stock'] as int?,
      Gear.fromJson(json['listing'] as Map<String, dynamic>),
      User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'hash': instance.hash,
      'id': instance.id,
      'status': instance.status,
      'created_at': instance.orderingDate,
      'amount': instance.amount,
      'currency': instance.currency,
      'stock': instance.stockQuantity,
      'listing': instance.orderedGear,
      'user': instance.orderOwner,
    };
