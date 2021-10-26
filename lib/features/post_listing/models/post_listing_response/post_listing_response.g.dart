// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_listing_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostListingResponse _$$_PostListingResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PostListingResponse(
      TempGear.fromJson(json['listing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostListingResponseToJson(
        _$_PostListingResponse instance) =>
    <String, dynamic>{
      'listing': instance.postedListing,
    };
