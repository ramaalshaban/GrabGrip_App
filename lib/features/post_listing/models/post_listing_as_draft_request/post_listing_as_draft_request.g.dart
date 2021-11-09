// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_listing_as_draft_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostListingAsDraftRequest _$$_PostListingAsDraftRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PostListingAsDraftRequest(
      selectedCategoryId: json['category'] as int?,
      pricingModelId: json['pricing_model'] as int?,
      title: json['title'] as String?,
      description: json['description_new'] as String?,
    );

Map<String, dynamic> _$$_PostListingAsDraftRequestToJson(
        _$_PostListingAsDraftRequest instance) =>
    <String, dynamic>{
      'category': instance.selectedCategoryId,
      'pricing_model': instance.pricingModelId,
      'title': instance.title,
      'description_new': instance.description,
    };
