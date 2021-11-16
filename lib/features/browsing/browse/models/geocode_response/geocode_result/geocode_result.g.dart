// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocode_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeocodeResult _$$_GeocodeResultFromJson(Map<String, dynamic> json) =>
    _$_GeocodeResult(
      Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      json['formatted_address'] as String,
    );

Map<String, dynamic> _$$_GeocodeResultToJson(_$_GeocodeResult instance) =>
    <String, dynamic>{
      'geometry': instance.geometry,
      'formatted_address': instance.formattedAddress,
    };
