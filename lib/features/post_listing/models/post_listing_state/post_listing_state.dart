import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/lat_lng/lat_lng.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/models/variation/variation.dart';

part 'post_listing_state.freezed.dart';

@freezed
class PostListingState with _$PostListingState {
  const factory PostListingState({
    Category? category,
    Category? subcategory,
    int? listingTypeId,
    String? title,
    String? description,
    Gear? inProgressListing,
    @Default([]) List<String> tags,
    String? listingEndDate,
    @Default([]) List<PricingModel> pricingModels,
    String? place,
    LatLng? latLng,
    CountryCode? country,
    String? city,
    String? region,
    int? price,
    int? stock,
    int? minRentPeriod,
    int? maxRentPeriod,
    @Default([AdditionalOption()]) List<AdditionalOption> additionalOptions,
    @Default([ShippingFee()]) List<ShippingFee> shippingFees,
    @Default([Variation()]) List<Variation> variations,
    PricingModel? pricingModel,
    bool? isForRent,
    @Default(false) bool isEditingMode,
  }) = _PostListingState;
}
