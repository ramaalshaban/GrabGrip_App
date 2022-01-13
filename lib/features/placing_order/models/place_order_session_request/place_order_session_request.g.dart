// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_session_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceOrderSessionRequest _$$_PlaceOrderSessionRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PlaceOrderSessionRequest(
      hash: json['hash'] as String?,
      paymentMethodKey: json['payment_method'] as String?,
      quantity: json['quantity'] as int?,
      shippingOptionId: json['shipping_option'] as int?,
      variants: (json['variant'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      additionalOptions:
          (json['additional_option'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      additionalOptionsMeta:
          (json['additional_options_meta'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Map<String, int>.from(e as Map)),
      ),
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      range: json['range'] as String?,
      billingAddress: json['billing_address'] == null
          ? null
          : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
      shippingAddress: json['shipping_address'] == null
          ? null
          : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
      sameAddress: json['same_address'] as int?,
    );

Map<String, dynamic> _$$_PlaceOrderSessionRequestToJson(
        _$_PlaceOrderSessionRequest instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'payment_method': instance.paymentMethodKey,
      'quantity': instance.quantity,
      'shipping_option': instance.shippingOptionId,
      'variant': instance.variants,
      'additional_option': instance.additionalOptions,
      'additional_options_meta': instance.additionalOptionsMeta,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'range': instance.range,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
      'same_address': instance.sameAddress,
    };
