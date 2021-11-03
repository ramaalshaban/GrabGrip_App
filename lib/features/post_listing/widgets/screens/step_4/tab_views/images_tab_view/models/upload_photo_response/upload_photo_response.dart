import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_photo_response.freezed.dart';

part 'upload_photo_response.g.dart';

@freezed
class UploadPhotoResponse with _$UploadPhotoResponse {
  const factory UploadPhotoResponse(
    String? type,
    String? path,
    String? original,
    String? thumbnailUrl, {
    @JsonKey(name: 'success') required bool? succeeded,
  }) = _UploadPhotoResponse;

  factory UploadPhotoResponse.fromJson(Map<String, dynamic> json) => _$UploadPhotoResponseFromJson(json);
}
