import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing/listing.dart';
import 'package:grab_grip/features/browsing/listing_details/models/widget/response_widget.dart';

part 'listing_response.freezed.dart';
part 'listing_response.g.dart';

@freezed
class ListingResponse with _$ListingResponse {
  const factory ListingResponse(
    Listing listing,
    ResponseWidget widget,
  ) = _ListingResponse;

  factory ListingResponse.fromJson(Map<String, dynamic> json) =>
      _$ListingResponseFromJson(json);
}
