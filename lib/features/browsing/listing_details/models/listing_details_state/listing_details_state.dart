import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_category/listing_category.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';

part 'listing_details_state.freezed.dart';

@freezed
class ListingDetailsState with _$ListingDetailsState {
  const factory ListingDetailsState([
    ListingCategory? category,
    PricingModel? pricingModel,
    @Default(1) int selectedQuantity,
    @Default([]) List<AdditionalOption> additionalOptions,
    @Default([]) List<ShippingFee> shippingOptions,
    @Default({}) Map<String, List<String>> variantOptions,
    @Default({}) Map<int, int> selectedAdditionalOptions,
    @Default({}) Map<int, Map<String, int>> selectedAdditionalOptionsMeta,
    int? selectedShippingOptionId,
    @Default({}) Map<String, String> selectedVariantOptions,
    String? startDate,
    String? endDate,
  ]) = _ListingDetailsState;
}
