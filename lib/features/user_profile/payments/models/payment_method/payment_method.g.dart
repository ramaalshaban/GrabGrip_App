// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethod _$$_PaymentMethodFromJson(Map<String, dynamic> json) =>
    _$_PaymentMethod(
      json['id'] as int,
      json['key'] as String,
      json['display_name'] as String,
      json['payment_instructions'] as String,
      json['identifier'] == null
          ? null
          : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
      json['description'] as String,
    );

Map<String, dynamic> _$$_PaymentMethodToJson(_$_PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'display_name': instance.displayName,
      'payment_instructions': instance.paymentInstructions,
      'identifier': instance.identifier,
      'description': instance.description,
    };
