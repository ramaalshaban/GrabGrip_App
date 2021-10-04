// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthModel _$$_AuthModelFromJson(Map<String, dynamic> json) => _$_AuthModel(
      json['email'] as String,
      json['password'] as String,
      json['name'] as String?,
      json['password_confirmation'],
    );

Map<String, dynamic> _$$_AuthModelToJson(_$_AuthModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'password_confirmation': instance.passwordConfirmation,
    };
