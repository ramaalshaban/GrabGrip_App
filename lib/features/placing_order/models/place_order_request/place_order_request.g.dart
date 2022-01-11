// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceOrderRequest _$$_PlaceOrderRequestFromJson(Map<String, dynamic> json) =>
    _$_PlaceOrderRequest(
      quantity: json['quantity'] as int?,
      paymentMethod: json['payment_method'] as String?,
    );

Map<String, dynamic> _$$_PlaceOrderRequestToJson(
        _$_PlaceOrderRequest instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'payment_method': instance.paymentMethod,
    };
