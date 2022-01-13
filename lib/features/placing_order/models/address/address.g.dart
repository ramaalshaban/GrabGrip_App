// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      fullName: json['full_name'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postCode: json['zip'] as String?,
      country: json['country'] as String? ?? 'Sa',
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
