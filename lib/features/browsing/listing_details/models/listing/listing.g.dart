// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Listing _$$_ListingFromJson(Map<String, dynamic> json) => _$_Listing(
      json['user_id'] as int,
      ListingCategory.fromJson(json['category'] as Map<String, dynamic>),
      PricingModel.fromJson(json['pricing_model'] as Map<String, dynamic>),
      json['price'] as String,
      json['stock'] as int,
      (json['additional_options'] as List<dynamic>?)
          ?.map((e) => AdditionalOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['shipping_options'] as List<dynamic>?)
          ?.map((e) => ShippingFee.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['variant_options'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      json['ends_at'] as String?,
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      json['is_favorited'],
      json['user_rating'] as String,
      json['user_listings_count'] as int,
    );

Map<String, dynamic> _$$_ListingToJson(_$_Listing instance) =>
    <String, dynamic>{
      'user_id': instance.ownerId,
      'category': instance.category,
      'pricing_model': instance.pricingModel,
      'price': instance.price,
      'stock': instance.stock,
      'additional_options': instance.additionalOptions,
      'shipping_options': instance.shippingOptions,
      'variant_options': instance.variantOptions,
      'ends_at': instance.listingEndDate,
      'user': instance.user,
      'is_favorited': instance.isFavorited,
      'user_rating': instance.userRating,
      'user_listings_count': instance.userListingsCount,
    };
