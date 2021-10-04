// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterResponse _$$_RegisterResponseFromJson(Map<String, dynamic> json) =>
    _$_RegisterResponse(
      json['message'] as String?,
      json['errors'] == null
          ? null
          : Error.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterResponseToJson(_$_RegisterResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };
