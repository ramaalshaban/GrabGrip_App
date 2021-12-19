// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsPage _$$_ReviewsPageFromJson(Map<String, dynamic> json) =>
    _$_ReviewsPage(
      json['current_page'] as int,
      json['last_page'] as int,
      json['total'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReviewsPageToJson(_$_ReviewsPage instance) =>
    <String, dynamic>{
      'current_page': instance.pageNumber,
      'last_page': instance.lastPageNumber,
      'total': instance.reviewsCount,
      'data': instance.reviews,
    };
