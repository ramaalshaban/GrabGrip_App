import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';

part 'post_edit_listing_response.freezed.dart';
part 'post_edit_listing_response.g.dart';

@freezed
class PostEditListingResponse with _$PostEditListingResponse {
  const factory PostEditListingResponse(
    Gear listing,
  ) = _PostEditListingResponse;

  factory PostEditListingResponse.fromJson(Map<String, dynamic> json) =>
      _$PostEditListingResponseFromJson(json);
}
