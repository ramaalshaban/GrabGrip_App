// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Viewport _$$_ViewportFromJson(Map<String, dynamic> json) => _$_Viewport(
      LatLng.fromJson(json['northeast'] as Map<String, dynamic>),
      LatLng.fromJson(json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ViewportToJson(_$_Viewport instance) =>
    <String, dynamic>{
      'northeast': instance.northEast,
      'southwest': instance.southWest,
    };
