// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingFee _$$_ShippingFeeFromJson(Map<String, dynamic> json) =>
    _$_ShippingFee(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ShippingFeeToJson(_$_ShippingFee instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };
