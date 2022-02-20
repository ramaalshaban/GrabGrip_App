// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditProfileRequest _$$_EditProfileRequestFromJson(
        Map<String, dynamic> json) =>
    _$_EditProfileRequest(
      json['display_name'] as String,
      json['username'] as String,
      json['bio'] as String?,
    );

Map<String, dynamic> _$$_EditProfileRequestToJson(
        _$_EditProfileRequest instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'username': instance.userName,
      'bio': instance.bio,
    };
