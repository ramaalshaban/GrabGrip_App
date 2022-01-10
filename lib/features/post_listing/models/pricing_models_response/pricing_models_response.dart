import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/post_listing/models/selected_category_model/selected_category.dart';

part 'pricing_models_response.freezed.dart';
part 'pricing_models_response.g.dart';

@freezed
class PricingModelsResponse with _$PricingModelsResponse {
  const factory PricingModelsResponse(
    @JsonKey(name: "selected_category") SelectedCategory selectedCategory,
  ) = _PricingModelsResponse;

  factory PricingModelsResponse.fromJson(Map<String, dynamic> json) =>
      _$PricingModelsResponseFromJson(json);
}
