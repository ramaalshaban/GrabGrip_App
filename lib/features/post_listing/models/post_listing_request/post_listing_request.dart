import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_listing_request.freezed.dart';

part 'post_listing_request.g.dart';

@freezed
class PostListingRequest with _$PostListingRequest {
  const factory PostListingRequest({
    @JsonKey(name: "category") int? selectedCategoryId,
    @JsonKey(name: "pricing_model") int? pricingModelId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description_new") String? description,
  }) = _PostListingRequest;

  factory PostListingRequest.fromJson(Map<String, dynamic> json) =>
      _$PostListingRequestFromJson(json);
}
