import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/listing_details/models/reviews_page/reviews_page.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reviews_response.freezed.dart';

part 'reviews_response.g.dart';

@freezed
class ReviewsResponse with _$ReviewsResponse {
  const factory ReviewsResponse(
    @JsonKey(name: 'comments') ReviewsPage reviewsPage,
  ) = _ReviewsResponse;

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);
}
