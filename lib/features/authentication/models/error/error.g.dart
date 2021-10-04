// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Error _$$_ErrorFromJson(Map<String, dynamic> json) => _$_Error(
      (json['email'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      (json['password'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$_ErrorToJson(_$_Error instance) => <String, dynamic>{
      'email': instance.emailError,
      'password': instance.passwordError,
    };
