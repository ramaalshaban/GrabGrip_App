import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_category/listing_category.dart';
import 'package:grab_grip/features/browsing/listing_details/models/widget/widget.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

part 'listing_details_state.freezed.dart';

@freezed
class ListingDetailsState with _$ListingDetailsState {
  const factory ListingDetailsState({
    ListingCategory? category,
    PricingModel? pricingModel,
    int? ownerId,
    String? hash,
    String? slug,
    @Default(1) int selectedQuantity,
    @Default([]) List<AdditionalOption> additionalOptions,
    @Default([]) List<ShippingFee> shippingOptions,
    @Default({}) Map<String, List<String>> variantOptions,
    @Default({}) Map<String, int> selectedAdditionalOptions,
    @Default({}) Map<String, Map<String, int>> selectedAdditionalOptionsMeta,
    int? selectedShippingOptionId,
    @Default({}) Map<String, String> selectedVariantOptions,
    String? startDate,
    String? endDate,
    User? listingOwner,
    @Default(0) int stockQuantity,
    Widget? widget,
    DateTime? listingEndDate,
    PickerDateRange? pickerDateRange,
    bool? isForRent,
    bool? isFavorited,
    String? userRating,
    int? userListingsCount,
  }) = _ListingDetailsState;
}
