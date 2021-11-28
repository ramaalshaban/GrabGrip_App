import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_listing_response.freezed.dart';

part 'post_listing_response.g.dart';

@freezed
class PostListingResponse with _$PostListingResponse {
  const factory PostListingResponse(
    @JsonKey(name: "listing") Gear postedListing,
  ) = _PostListingResponse;

  factory PostListingResponse.fromJson(Map<String, dynamic> json) =>
      _$PostListingResponseFromJson(json);
}
