// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangePasswordRequest _$$_ChangePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChangePasswordRequest(
      json['password'] as String,
      json['password_confirmation'],
    );

Map<String, dynamic> _$$_ChangePasswordRequestToJson(
        _$_ChangePasswordRequest instance) =>
    <String, dynamic>{
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };
