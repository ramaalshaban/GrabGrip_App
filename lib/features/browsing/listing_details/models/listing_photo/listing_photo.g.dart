// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListingPhoto _$$_ListingPhotoFromJson(Map<String, dynamic> json) =>
    _$_ListingPhoto(
      json['photo'] as String,
      json['file'] as String,
    );

Map<String, dynamic> _$$_ListingPhotoToJson(_$_ListingPhoto instance) =>
    <String, dynamic>{
      'photo': instance.photoUrl,
      'file': instance.originalPhotoUrl,
    };
