// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdditionalOption _$$_AdditionalOptionFromJson(Map<String, dynamic> json) =>
    _$_AdditionalOption(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      maxQuantity: json['max_quantity'] as int?,
    );

Map<String, dynamic> _$$_AdditionalOptionToJson(_$_AdditionalOption instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'max_quantity': instance.maxQuantity,
    };
