// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelectedCategory _$$_SelectedCategoryFromJson(Map<String, dynamic> json) =>
    _$_SelectedCategory(
      (json['pricing_models'] as List<dynamic>)
          .map((e) => PricingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SelectedCategoryToJson(_$_SelectedCategory instance) =>
    <String, dynamic>{
      'pricing_models': instance.pricingModels,
    };
