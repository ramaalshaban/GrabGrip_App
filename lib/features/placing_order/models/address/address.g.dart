// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      json['full_name'] as String,
      json['address'] as String,
      json['city'] as String,
      json['state'] as String,
      json['zip'] as String,
      json['country'] as String,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.postCode,
      'country': instance.country,
    };
