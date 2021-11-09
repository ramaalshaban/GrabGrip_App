import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/upload_photo_response/upload_photo_response.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/models/variation/variation.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/models/variation_string_value/variation_string_value.dart';

part 'save_listing_request.freezed.dart';

part 'save_listing_request.g.dart';

@freezed
class SaveListingRequest with _$SaveListingRequest {
  const factory SaveListingRequest({
    String? title,
    String? description,
    @JsonKey(name: "tags_string") String? tags,
    @JsonKey(name: "ends_at") String? listingEndDate,
    double? lat,
    double? lng,
    String? city,
    String? region,
    String? country,
    int? price,
    int? stock,
 //   List<UploadPhotoResponse>? photos,
    @JsonKey(name: "additional") List<AdditionalOption>? additionalOptions,
    @JsonKey(name: "shipping") List<ShippingFee>? shippingFees,
    List<VariationStringValue>? variations,
  }) = _SaveListingRequest;

  factory SaveListingRequest.fromJson(Map<String, dynamic> json) =>
      _$SaveListingRequestFromJson(json);
}
