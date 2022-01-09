// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gear.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Gear _$$_GearFromJson(Map<String, dynamic> json) => _$_Gear(
      json['hash'] as String,
      json['id'] as int,
      json['user_id'] as int,
      json['category_id'] as int,
      json['pricing_model_id'] as String,
      json['title'] as String,
      json['stock'] as int?,
      json['description'] as String,
      json['short_description'] as String,
      json['price'] as String?,
      json['currency'] as String,
      json['min_duration'] as int?,
      json['max_duration'] as int?,
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['slug'] as String,
      (json['lat'] as num).toDouble(),
      (json['lng'] as num).toDouble(),
      json['city'] as String?,
      json['region'] as String?,
      json['country'] as String?,
      json['thumbnail'] as String?,
      (json['media'] as List<dynamic>)
          .map((e) => ListingPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['price_formatted'] as String?,
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      json['is_published'] as int?,
      json['is_draft'] as int?,
      json['is_admin_verified'] as String?,
      json['is_disabled'] as String?,
      json['pricing_model'] == null
          ? null
          : PricingModel.fromJson(
              json['pricing_model'] as Map<String, dynamic>),
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
    );

Map<String, dynamic> _$$_GearToJson(_$_Gear instance) => <String, dynamic>{
      'hash': instance.hash,
      'id': instance.id,
      'user_id': instance.ownerId,
      'category_id': instance.categoryId,
      'pricing_model_id': instance.pricingModelId,
      'title': instance.title,
      'stock': instance.stockQuantity,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'price': instance.price,
      'currency': instance.currency,
      'min_duration': instance.minRentPeriod,
      'max_duration': instance.maxRentPeriod,
      'tags': instance.tags,
      'slug': instance.slug,
      'lat': instance.lat,
      'lng': instance.lng,
      'city': instance.city,
      'region': instance.region,
      'country': instance.country,
      'thumbnail': instance.thumbnail,
      'media': instance.photos,
      'price_formatted': instance.formattedPrice,
      'user': instance.owner,
      'is_published': instance.isPublished,
      'is_draft': instance.isDraft,
      'is_admin_verified': instance.isVerifiedByAdmin,
      'is_disabled': instance.isDisabled,
      'pricing_model': instance.pricingModel,
      'additional_options': instance.additionalOptions,
      'shipping_options': instance.shippingOptions,
      'variant_options': instance.variantOptions,
      'ends_at': instance.listingEndDate,
    };
