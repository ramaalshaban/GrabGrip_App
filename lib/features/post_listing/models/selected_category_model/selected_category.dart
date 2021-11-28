import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'selected_category.freezed.dart';

part 'selected_category.g.dart';

@freezed
class SelectedCategory with _$SelectedCategory {
  const factory SelectedCategory(
    @JsonKey(name: "pricing_models") List<PricingModel> pricingModels,
  ) = _SelectedCategory;

  factory SelectedCategory.fromJson(Map<String, dynamic> json) =>
      _$SelectedCategoryFromJson(json);
}
