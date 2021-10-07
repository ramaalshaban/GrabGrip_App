// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Listing _$$_ListingFromJson(Map<String, dynamic> json) => _$_Listing(
      json['total'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => Gear.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListingToJson(_$_Listing instance) =>
    <String, dynamic>{
      'total': instance.gearsCount,
      'data': instance.gears,
    };
