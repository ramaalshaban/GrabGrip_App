// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserChoice _$$_UserChoiceFromJson(Map<String, dynamic> json) =>
    _$_UserChoice(
      json['name'] as String,
      json['value'] as String,
      json['group'] as String,
      json['price'] as String?,
      json['quantity'] as int?,
    );

Map<String, dynamic> _$$_UserChoiceToJson(_$_UserChoice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'group': instance.group,
      'price': instance.price,
      'quantity': instance.quantity,
    };
