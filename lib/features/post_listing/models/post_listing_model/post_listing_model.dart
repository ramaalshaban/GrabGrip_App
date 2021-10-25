import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';

part 'post_listing_model.freezed.dart';

@freezed
class PostListingModel with _$PostListingModel {
  const factory PostListingModel([
    Category? category,
    Category? subcategory,
    int? listingTypeId,
    @Default([]) List<PricingModel> pricingModels,
  ]) = _PostListingModel;
}