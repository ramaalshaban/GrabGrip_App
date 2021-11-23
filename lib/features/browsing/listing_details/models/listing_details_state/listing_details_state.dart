import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_details_state.freezed.dart';

@freezed
class ListingDetailsState with _$ListingDetailsState {
  const factory ListingDetailsState([
    @Default({}) Map<String, String> categories,
    @Default({}) Map<String, String> pricingModels,
  ]) = _ListingDetailsState;
}
