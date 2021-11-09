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
    required bool? success,
  }) = _UploadPhotoResponse;

  factory UploadPhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadPhotoResponseFromJson(json);


  // static Map<String, dynamic> uploadPhotoResponsesToJson(
  //   List<UploadPhotoResponse> uploadPhotoResponses,
  // ) {
  //   final Map<String, dynamic> json = {};
  //   for (int i = 0; i < uploadPhotoResponses.length; i++) {
  //     json['photos[$i]'] = uploadPhotoResponses[i].toJson();
  //   }
  //   return json;
  // }
}
