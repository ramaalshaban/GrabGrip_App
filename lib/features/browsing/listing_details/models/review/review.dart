import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review.freezed.dart';

part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review(
    int id,
    String comment,
    int rate,
    @JsonKey(name: 'created_at') String reviewDate,
    User commenter,
  ) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
