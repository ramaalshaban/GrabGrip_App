import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_listing_availability_state.freezed.dart';

@freezed
class PostListingAvailabilityState with _$PostListingAvailabilityState {
  const factory PostListingAvailabilityState.published({required bool successfullyPublished}) = _Published;
  const factory PostListingAvailabilityState.unPublished({required bool successfullyUnPublished}) = _Unpublished;
  const factory PostListingAvailabilityState.reEnabled({required bool successfullyReEnabled}) = _Reenabled;
}
