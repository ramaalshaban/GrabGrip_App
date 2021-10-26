// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_listing_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostListingRequest _$$_PostListingRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PostListingRequest(
      selectedCategoryId: json['category'] as int?,
      pricingModelId: json['pricing_model'] as int?,
      title: json['title'] as String?,
      description: json['description_new'] as String?,
    );

Map<String, dynamic> _$$_PostListingRequestToJson(
        _$_PostListingRequest instance) =>
    <String, dynamic>{
      'category': instance.selectedCategoryId,
      'pricing_model': instance.pricingModelId,
      'title': instance.title,
      'description_new': instance.description,
    };
