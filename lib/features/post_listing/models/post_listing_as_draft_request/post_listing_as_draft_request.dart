import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_listing_as_draft_request.freezed.dart';

part 'post_listing_as_draft_request.g.dart';

@freezed
class PostListingAsDraftRequest with _$PostListingAsDraftRequest {
  const factory PostListingAsDraftRequest({
    @JsonKey(name: "category") int? selectedCategoryId,
    @JsonKey(name: "pricing_model") int? pricingModelId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description_new") String? description,
  }) = _PostListingAsDraftRequest;

  factory PostListingAsDraftRequest.fromJson(Map<String, dynamic> json) =>
      _$PostListingAsDraftRequestFromJson(json);
}
