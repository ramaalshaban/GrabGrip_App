// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_gear.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TempGear _$$_TempGearFromJson(Map<String, dynamic> json) => _$_TempGear(
      json['hash'] as String,
      json['id'] as int,
      json['category_id'] as int,
      json['title'] as String,
      json['stock'] as int?,
      json['description'] as String,
      json['short_description'] as String,
      json['currency'] as String,
      (json['lat'] as num).toDouble(),
      (json['lng'] as num).toDouble(),
      json['city'] as String?,
      json['country'] as String?,
      json['thumbnail'] as String,
      json['price_formatted'] as String?,
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TempGearToJson(_$_TempGear instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'id': instance.id,
      'category_id': instance.categoryId,
      'title': instance.title,
      'stock': instance.stockQuantity,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'currency': instance.currency,
      'lat': instance.lat,
      'lng': instance.lng,
      'city': instance.city,
      'country': instance.country,
      'thumbnail': instance.thumbnail,
      'price_formatted': instance.formattedPrice,
      'user': instance.owner,
    };
