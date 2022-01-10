import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_photo.freezed.dart';
part 'listing_photo.g.dart';

@freezed
class ListingPhoto with _$ListingPhoto {
  const factory ListingPhoto(
    @JsonKey(name: 'photo') String photoUrl,
    @JsonKey(name: 'file') String originalPhotoUrl,
  ) = _ListingPhoto;

  factory ListingPhoto.fromJson(Map<String, dynamic> json) =>
      _$ListingPhotoFromJson(json);
}
