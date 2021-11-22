// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gear.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Gear _$$_GearFromJson(Map<String, dynamic> json) => _$_Gear(
      json['hash'] as String,
      json['id'] as int,
      json['category_id'] as int,
      json['title'] as String,
      json['stock'] as int?,
      json['description'] as String,
      json['short_description'] as String,
      json['currency'] as String,
      json['slug'] as String,
      (json['lat'] as num).toDouble(),
      (json['lng'] as num).toDouble(),
      json['city'] as String?,
      json['country'] as String?,
      json['thumbnail'] as String?,
      (json['media'] as List<dynamic>)
          .map((e) => ListingPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['price_formatted'] as String?,
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GearToJson(_$_Gear instance) => <String, dynamic>{
      'hash': instance.hash,
      'id': instance.id,
      'category_id': instance.categoryId,
      'title': instance.title,
      'stock': instance.stockQuantity,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'currency': instance.currency,
      'slug': instance.slug,
      'lat': instance.lat,
      'lng': instance.lng,
      'city': instance.city,
      'country': instance.country,
      'thumbnail': instance.thumbnail,
      'media': instance.photos,
      'price_formatted': instance.formattedPrice,
      'user': instance.owner,
    };
