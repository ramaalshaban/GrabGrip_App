import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/listing_details/models/review/review.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reviews_page.freezed.dart';

part 'reviews_page.g.dart';

@freezed
class ReviewsPage with _$ReviewsPage {
  const factory ReviewsPage(
    @JsonKey(name: 'current_page') int pageNumber,
    @JsonKey(name: 'last_page') int lastPageNumber,
    @JsonKey(name: 'total') int reviewsCount,
    @JsonKey(name: 'data') List<Review> reviews,
  ) = _ReviewsPage;

  factory ReviewsPage.fromJson(Map<String, dynamic> json) =>
      _$ReviewsPageFromJson(json);

  factory ReviewsPage.empty() => const ReviewsPage(0, 0, 0, []);
}
