// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_photo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UploadPhotoResponse _$$_UploadPhotoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UploadPhotoResponse(
      json['type'] as String?,
      json['path'] as String?,
      json['original'] as String?,
      json['thumbnailUrl'] as String?,
      succeeded: json['success'] as bool?,
    );

Map<String, dynamic> _$$_UploadPhotoResponseToJson(
        _$_UploadPhotoResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'path': instance.path,
      'original': instance.original,
      'thumbnailUrl': instance.thumbnailUrl,
      'success': instance.succeeded,
    };
