// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_details_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceOrderDetailsRequest _$$_PlaceOrderDetailsRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PlaceOrderDetailsRequest(
      hash: json['hash'] as String?,
      selectedQuantity: json['selectedQuantity'] as int?,
      selectedAdditionalOptions:
          (json['selectedAdditionalOptions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      selectedAdditionalOptionsMeta:
          (json['selectedAdditionalOptionsMeta'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Map<String, int>.from(e as Map)),
      ),
      selectedShippingOptionId: json['selectedShippingOptionId'] as int?,
      selectedVariantOptions:
          (json['selectedVariantOptions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$$_PlaceOrderDetailsRequestToJson(
        _$_PlaceOrderDetailsRequest instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'selectedQuantity': instance.selectedQuantity,
      'selectedAdditionalOptions': instance.selectedAdditionalOptions,
      'selectedAdditionalOptionsMeta': instance.selectedAdditionalOptionsMeta,
      'selectedShippingOptionId': instance.selectedShippingOptionId,
      'selectedVariantOptions': instance.selectedVariantOptions,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
