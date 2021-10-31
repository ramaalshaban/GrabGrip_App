// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Geometry _$$_GeometryFromJson(Map<String, dynamic> json) => _$_Geometry(
      LatLng.fromJson(json['location'] as Map<String, dynamic>),
      Viewport.fromJson(json['viewport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeometryToJson(_$_Geometry instance) =>
    <String, dynamic>{
      'location': instance.latLng,
      'viewport': instance.viewport,
    };
