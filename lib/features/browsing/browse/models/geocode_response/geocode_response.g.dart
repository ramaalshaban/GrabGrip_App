// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocode_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeocodeResponse _$$_GeocodeResponseFromJson(Map<String, dynamic> json) =>
    _$_GeocodeResponse(
      (json['results'] as List<dynamic>)
          .map((e) => GeocodeResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as String,
    );

Map<String, dynamic> _$$_GeocodeResponseToJson(_$_GeocodeResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'status': instance.status,
    };
