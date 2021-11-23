import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categories_pricing_models_response.freezed.dart';

part 'categories_pricing_models_response.g.dart';

@freezed
class CategoriesPricingModelsResponse with _$CategoriesPricingModelsResponse {
  const factory CategoriesPricingModelsResponse(
    @JsonKey(name: "categories") Map<String, String> categories,
    @JsonKey(name: "pricing_models") Map<String, String> pricingModels,
  ) = _CategoriesPricingModelsResponse;

  factory CategoriesPricingModelsResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesPricingModelsResponseFromJson(json);
}
