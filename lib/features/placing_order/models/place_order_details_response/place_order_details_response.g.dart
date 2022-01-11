// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceOrderDetailsResponse _$$_PlaceOrderDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PlaceOrderDetailsResponse(
      Pricing.fromJson(json['pricing'] as Map<String, dynamic>),
      json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      (json['payment_providers'] as List<dynamic>?)
          ?.map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlaceOrderDetailsResponseToJson(
        _$_PlaceOrderDetailsResponse instance) =>
    <String, dynamic>{
      'pricing': instance.pricing,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
      'payment_providers': instance.paymentMethods,
    };
