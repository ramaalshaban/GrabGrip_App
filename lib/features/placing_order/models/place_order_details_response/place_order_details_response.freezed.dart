// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_order_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceOrderDetailsResponse _$PlaceOrderDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _PlaceOrderDetailsResponse.fromJson(json);
}

/// @nodoc
class _$PlaceOrderDetailsResponseTearOff {
  const _$PlaceOrderDetailsResponseTearOff();

  _PlaceOrderDetailsResponse call(
      Pricing pricing,
      @JsonKey(name: "billing_address") Address? billingAddress,
      @JsonKey(name: "shipping_address") Address? shippingAddress,
      @JsonKey(name: "payment_providers") List<PaymentMethod>? paymentMethods) {
    return _PlaceOrderDetailsResponse(
      pricing,
      billingAddress,
      shippingAddress,
      paymentMethods,
    );
  }

  PlaceOrderDetailsResponse fromJson(Map<String, Object> json) {
    return PlaceOrderDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $PlaceOrderDetailsResponse = _$PlaceOrderDetailsResponseTearOff();

/// @nodoc
mixin _$PlaceOrderDetailsResponse {
  Pricing get pricing => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address")
  Address? get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address")
  Address? get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_providers")
  List<PaymentMethod>? get paymentMethods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderDetailsResponseCopyWith<PlaceOrderDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderDetailsResponseCopyWith<$Res> {
  factory $PlaceOrderDetailsResponseCopyWith(PlaceOrderDetailsResponse value,
          $Res Function(PlaceOrderDetailsResponse) then) =
      _$PlaceOrderDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {Pricing pricing,
      @JsonKey(name: "billing_address") Address? billingAddress,
      @JsonKey(name: "shipping_address") Address? shippingAddress,
      @JsonKey(name: "payment_providers") List<PaymentMethod>? paymentMethods});

  $PricingCopyWith<$Res> get pricing;
  $AddressCopyWith<$Res>? get billingAddress;
  $AddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class _$PlaceOrderDetailsResponseCopyWithImpl<$Res>
    implements $PlaceOrderDetailsResponseCopyWith<$Res> {
  _$PlaceOrderDetailsResponseCopyWithImpl(this._value, this._then);

  final PlaceOrderDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(PlaceOrderDetailsResponse) _then;

  @override
  $Res call({
    Object? pricing = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
    Object? paymentMethods = freezed,
  }) {
    return _then(_value.copyWith(
      pricing: pricing == freezed
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as Pricing,
      billingAddress: billingAddress == freezed
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      shippingAddress: shippingAddress == freezed
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>?,
    ));
  }

  @override
  $PricingCopyWith<$Res> get pricing {
    return $PricingCopyWith<$Res>(_value.pricing, (value) {
      return _then(_value.copyWith(pricing: value));
    });
  }

  @override
  $AddressCopyWith<$Res>? get billingAddress {
    if (_value.billingAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.billingAddress!, (value) {
      return _then(_value.copyWith(billingAddress: value));
    });
  }

  @override
  $AddressCopyWith<$Res>? get shippingAddress {
    if (_value.shippingAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.shippingAddress!, (value) {
      return _then(_value.copyWith(shippingAddress: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceOrderDetailsResponseCopyWith<$Res>
    implements $PlaceOrderDetailsResponseCopyWith<$Res> {
  factory _$PlaceOrderDetailsResponseCopyWith(_PlaceOrderDetailsResponse value,
          $Res Function(_PlaceOrderDetailsResponse) then) =
      __$PlaceOrderDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {Pricing pricing,
      @JsonKey(name: "billing_address") Address? billingAddress,
      @JsonKey(name: "shipping_address") Address? shippingAddress,
      @JsonKey(name: "payment_providers") List<PaymentMethod>? paymentMethods});

  @override
  $PricingCopyWith<$Res> get pricing;
  @override
  $AddressCopyWith<$Res>? get billingAddress;
  @override
  $AddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class __$PlaceOrderDetailsResponseCopyWithImpl<$Res>
    extends _$PlaceOrderDetailsResponseCopyWithImpl<$Res>
    implements _$PlaceOrderDetailsResponseCopyWith<$Res> {
  __$PlaceOrderDetailsResponseCopyWithImpl(_PlaceOrderDetailsResponse _value,
      $Res Function(_PlaceOrderDetailsResponse) _then)
      : super(_value, (v) => _then(v as _PlaceOrderDetailsResponse));

  @override
  _PlaceOrderDetailsResponse get _value =>
      super._value as _PlaceOrderDetailsResponse;

  @override
  $Res call({
    Object? pricing = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
    Object? paymentMethods = freezed,
  }) {
    return _then(_PlaceOrderDetailsResponse(
      pricing == freezed
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as Pricing,
      billingAddress == freezed
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      shippingAddress == freezed
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceOrderDetailsResponse
    with DiagnosticableTreeMixin
    implements _PlaceOrderDetailsResponse {
  const _$_PlaceOrderDetailsResponse(
      this.pricing,
      @JsonKey(name: "billing_address") this.billingAddress,
      @JsonKey(name: "shipping_address") this.shippingAddress,
      @JsonKey(name: "payment_providers") this.paymentMethods);

  factory _$_PlaceOrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceOrderDetailsResponseFromJson(json);

  @override
  final Pricing pricing;
  @override
  @JsonKey(name: "billing_address")
  final Address? billingAddress;
  @override
  @JsonKey(name: "shipping_address")
  final Address? shippingAddress;
  @override
  @JsonKey(name: "payment_providers")
  final List<PaymentMethod>? paymentMethods;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceOrderDetailsResponse(pricing: $pricing, billingAddress: $billingAddress, shippingAddress: $shippingAddress, paymentMethods: $paymentMethods)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceOrderDetailsResponse'))
      ..add(DiagnosticsProperty('pricing', pricing))
      ..add(DiagnosticsProperty('billingAddress', billingAddress))
      ..add(DiagnosticsProperty('shippingAddress', shippingAddress))
      ..add(DiagnosticsProperty('paymentMethods', paymentMethods));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOrderDetailsResponse &&
            (identical(other.pricing, pricing) ||
                const DeepCollectionEquality()
                    .equals(other.pricing, pricing)) &&
            (identical(other.billingAddress, billingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.billingAddress, billingAddress)) &&
            (identical(other.shippingAddress, shippingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.shippingAddress, shippingAddress)) &&
            (identical(other.paymentMethods, paymentMethods) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethods, paymentMethods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pricing) ^
      const DeepCollectionEquality().hash(billingAddress) ^
      const DeepCollectionEquality().hash(shippingAddress) ^
      const DeepCollectionEquality().hash(paymentMethods);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderDetailsResponseCopyWith<_PlaceOrderDetailsResponse>
      get copyWith =>
          __$PlaceOrderDetailsResponseCopyWithImpl<_PlaceOrderDetailsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceOrderDetailsResponseToJson(this);
  }
}

abstract class _PlaceOrderDetailsResponse implements PlaceOrderDetailsResponse {
  const factory _PlaceOrderDetailsResponse(
      Pricing pricing,
      @JsonKey(name: "billing_address")
          Address? billingAddress,
      @JsonKey(name: "shipping_address")
          Address? shippingAddress,
      @JsonKey(name: "payment_providers")
          List<PaymentMethod>? paymentMethods) = _$_PlaceOrderDetailsResponse;

  factory _PlaceOrderDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaceOrderDetailsResponse.fromJson;

  @override
  Pricing get pricing => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "billing_address")
  Address? get billingAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "shipping_address")
  Address? get shippingAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_providers")
  List<PaymentMethod>? get paymentMethods => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceOrderDetailsResponseCopyWith<_PlaceOrderDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
