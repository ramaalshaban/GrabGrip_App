// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_session_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceOrderSessionResponse _$$_PlaceOrderSessionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PlaceOrderSessionResponse(
      Session.fromJson(json['session'] as Map<String, dynamic>),
      json['key'] as String,
    );

Map<String, dynamic> _$$_PlaceOrderSessionResponseToJson(
        _$_PlaceOrderSessionResponse instance) =>
    <String, dynamic>{
      'session': instance.session,
      'key': instance.paymentMethodKey,
    };
