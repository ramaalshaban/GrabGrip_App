import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_category/listing_category.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listing.freezed.dart';

part 'listing.g.dart';

@freezed
class Listing with _$Listing {
  const factory Listing(
    @JsonKey(name: "category") ListingCategory category,
    @JsonKey(name: "pricing_model") PricingModel pricingModel,
    @JsonKey(name: "additional_options")
        List<AdditionalOption>? additionalOptions,
    @JsonKey(name: "shipping_options") List<ShippingFee>? shippingOptions,
    @JsonKey(name: "variant_options") Map<String, List<String>>? variantOptions,
    @JsonKey(name: "user") User? user,
  ) = _Listing;

  factory Listing.fromJson(Map<String, dynamic> json) =>
      _$ListingFromJson(json);
}
