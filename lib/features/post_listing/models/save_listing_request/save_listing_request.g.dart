// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_listing_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaveListingRequest _$$_SaveListingRequestFromJson(
        Map<String, dynamic> json) =>
    _$_SaveListingRequest(
      title: json['title'] as String?,
      description: json['description'] as String?,
      tags: json['tags_string'] as String?,
      listingEndDate: json['ends_at'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      city: json['city'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      price: json['price'] as int?,
      stock: json['stock'] as int?,
      minRentPeriod: json['min_duration'] as int?,
      maxRentPeriod: json['max_duration'] as int?,
      additionalOptions: (json['additional'] as List<dynamic>?)
          ?.map((e) => AdditionalOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingFees: (json['shipping'] as List<dynamic>?)
          ?.map((e) => ShippingFee.fromJson(e as Map<String, dynamic>))
          .toList(),
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => VariationStringValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SaveListingRequestToJson(
        _$_SaveListingRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'tags_string': instance.tags,
      'ends_at': instance.listingEndDate,
      'lat': instance.lat,
      'lng': instance.lng,
      'city': instance.city,
      'region': instance.region,
      'country': instance.country,
      'price': instance.price,
      'stock': instance.stock,
      'min_duration': instance.minRentPeriod,
      'max_duration': instance.maxRentPeriod,
      'additional': instance.additionalOptions,
      'shipping': instance.shippingFees,
      'variations': instance.variations,
    };
