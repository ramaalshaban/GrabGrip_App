// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pricing _$$_PricingFromJson(Map<String, dynamic> json) => _$_Pricing(
      (json['user_choice'] as List<dynamic>)
          .map((e) => UserChoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['price_items'] as List<dynamic>)
          .map((e) => PriceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total'] as String,
    );

Map<String, dynamic> _$$_PricingToJson(_$_Pricing instance) =>
    <String, dynamic>{
      'user_choice': instance.userChoices,
      'price_items': instance.priceItems,
      'total': instance.total,
    };
