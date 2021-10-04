// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      json['id'] as int,
      json['name'] as String,
      json['avatar'] as String,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'verified': instance.verified,
    };
