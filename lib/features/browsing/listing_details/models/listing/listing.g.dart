// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Listing _$$_ListingFromJson(Map<String, dynamic> json) => _$_Listing(
      ListingCategory.fromJson(json['category'] as Map<String, dynamic>),
      PricingModel.fromJson(json['pricing_model'] as Map<String, dynamic>),
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
    );

Map<String, dynamic> _$$_ListingToJson(_$_Listing instance) =>
    <String, dynamic>{
      'category': instance.category,
      'pricing_model': instance.pricingModel,
      'additional_options': instance.additionalOptions,
      'shipping_options': instance.shippingOptions,
      'variant_options': instance.variantOptions,
    };
