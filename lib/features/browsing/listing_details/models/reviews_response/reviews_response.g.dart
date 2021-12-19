// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsResponse _$$_ReviewsResponseFromJson(Map<String, dynamic> json) =>
    _$_ReviewsResponse(
      ReviewsPage.fromJson(json['comments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReviewsResponseToJson(_$_ReviewsResponse instance) =>
    <String, dynamic>{
      'comments': instance.reviewsPage,
    };
