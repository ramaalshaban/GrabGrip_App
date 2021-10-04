// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      json['access_token'] as String?,
      json['expires_in'] as int?,
      json['error'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_in': instance.expirationDuration,
      'error': instance.error,
    };
