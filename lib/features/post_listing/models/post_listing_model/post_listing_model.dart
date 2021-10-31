import 'package:country_code_picker/country_code.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';

part 'post_listing_model.freezed.dart';

@freezed
class PostListingModel with _$PostListingModel {
  const factory PostListingModel([
    Category? category,
    Category? subcategory,
    int? listingTypeId,
    String? title,
    String? description,
    Gear? postedListing,
    @Default([]) List<String> tags,
    String? listingEndDate,
    @Default([]) List<PricingModel> pricingModels,
    String? place,
    LatLng? latLng,
    CountryCode? country,
    String? city,
    String? region,
  ]) = _PostListingModel;
}
