// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListingResponse _$$_ListingResponseFromJson(Map<String, dynamic> json) =>
    _$_ListingResponse(
      Listing.fromJson(json['listing'] as Map<String, dynamic>),
      ResponseWidget.fromJson(json['widget'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ListingResponseToJson(_$_ListingResponse instance) =>
    <String, dynamic>{
      'listing': instance.listing,
      'widget': instance.widget,
    };
