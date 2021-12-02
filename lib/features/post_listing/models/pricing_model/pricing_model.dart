import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pricing_model.freezed.dart';

part 'pricing_model.g.dart';

@freezed
class PricingModel with _$PricingModel {
  const factory PricingModel({
    required int id,
    required String name,
    required String widget,
  }) = _PricingModel;

  factory PricingModel.fromJson(Map<String, dynamic> json) =>
      _$PricingModelFromJson(json);
}
