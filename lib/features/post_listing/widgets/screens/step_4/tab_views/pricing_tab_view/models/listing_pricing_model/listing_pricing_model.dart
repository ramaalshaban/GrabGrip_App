import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_pricing_model.freezed.dart';

@freezed
class ListingPricingModel with _$ListingPricingModel {
  const factory ListingPricingModel(
    int additionalOptionsLength,
    int shippingFeesLength,
    int variationsLength,
  ) = _ListingPricingModel;

  factory ListingPricingModel.initial() => const ListingPricingModel(1, 1, 1);
}
