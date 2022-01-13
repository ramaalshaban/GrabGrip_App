// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_order_session_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceOrderSessionRequest _$PlaceOrderSessionRequestFromJson(
    Map<String, dynamic> json) {
  return _PlaceOrderSessionRequest.fromJson(json);
}

/// @nodoc
class _$PlaceOrderSessionRequestTearOff {
  const _$PlaceOrderSessionRequestTearOff();

  _PlaceOrderSessionRequest call(
      {String? hash,
      @JsonKey(name: "payment_method")
          String? paymentMethodKey,
      int? quantity,
      @JsonKey(name: "shipping_option")
          int? shippingOptionId,
      @JsonKey(name: "variant")
          Map<String, String>? variants,
      @JsonKey(name: "additional_option")
          Map<String, int>? additionalOptions,
      @JsonKey(name: "additional_options_meta")
          Map<String, Map<String, int>>? additionalOptionsMeta,
      @JsonKey(name: "start_date")
          String? startDate,
      @JsonKey(name: "end_date")
          String? endDate,
      @JsonKey(name: "range")
          String? range,
      @JsonKey(name: "billing_address")
          Address? billingAddress,
      @JsonKey(name: "shipping_address")
          Address? shippingAddress,
      @JsonKey(name: "same_address")
          int? sameAddress}) {
    return _PlaceOrderSessionRequest(
      hash: hash,
      paymentMethodKey: paymentMethodKey,
      quantity: quantity,
      shippingOptionId: shippingOptionId,
      variants: variants,
      additionalOptions: additionalOptions,
      additionalOptionsMeta: additionalOptionsMeta,
      startDate: startDate,
      endDate: endDate,
      range: range,
      billingAddress: billingAddress,
      shippingAddress: shippingAddress,
      sameAddress: sameAddress,
    );
  }

  PlaceOrderSessionRequest fromJson(Map<String, Object> json) {
    return PlaceOrderSessionRequest.fromJson(json);
  }
}

/// @nodoc
const $PlaceOrderSessionRequest = _$PlaceOrderSessionRequestTearOff();

/// @nodoc
mixin _$PlaceOrderSessionRequest {
  String? get hash => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethodKey => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_option")
  int? get shippingOptionId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant")
  Map<String, String>? get variants => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_option")
  Map<String, int>? get additionalOptions => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_options_meta")
  Map<String, Map<String, int>>? get additionalOptionsMeta =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "range")
  String? get range => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_address")
  Address? get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address")
  Address? get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "same_address")
  int? get sameAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderSessionRequestCopyWith<PlaceOrderSessionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderSessionRequestCopyWith<$Res> {
  factory $PlaceOrderSessionRequestCopyWith(PlaceOrderSessionRequest value,
          $Res Function(PlaceOrderSessionRequest) then) =
      _$PlaceOrderSessionRequestCopyWithImpl<$Res>;
  $Res call(
      {String? hash,
      @JsonKey(name: "payment_method")
          String? paymentMethodKey,
      int? quantity,
      @JsonKey(name: "shipping_option")
          int? shippingOptionId,
      @JsonKey(name: "variant")
          Map<String, String>? variants,
      @JsonKey(name: "additional_option")
          Map<String, int>? additionalOptions,
      @JsonKey(name: "additional_options_meta")
          Map<String, Map<String, int>>? additionalOptionsMeta,
      @JsonKey(name: "start_date")
          String? startDate,
      @JsonKey(name: "end_date")
          String? endDate,
      @JsonKey(name: "range")
          String? range,
      @JsonKey(name: "billing_address")
          Address? billingAddress,
      @JsonKey(name: "shipping_address")
          Address? shippingAddress,
      @JsonKey(name: "same_address")
          int? sameAddress});

  $AddressCopyWith<$Res>? get billingAddress;
  $AddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class _$PlaceOrderSessionRequestCopyWithImpl<$Res>
    implements $PlaceOrderSessionRequestCopyWith<$Res> {
  _$PlaceOrderSessionRequestCopyWithImpl(this._value, this._then);

  final PlaceOrderSessionRequest _value;
  // ignore: unused_field
  final $Res Function(PlaceOrderSessionRequest) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? paymentMethodKey = freezed,
    Object? quantity = freezed,
    Object? shippingOptionId = freezed,
    Object? variants = freezed,
    Object? additionalOptions = freezed,
    Object? additionalOptionsMeta = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? range = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
    Object? sameAddress = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodKey: paymentMethodKey == freezed
          ? _value.paymentMethodKey
          : paymentMethodKey // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingOptionId: shippingOptionId == freezed
          ? _value.shippingOptionId
          : shippingOptionId // ignore: cast_nullable_to_non_nullable
              as int?,
      variants: variants == freezed
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      additionalOptions: additionalOptions == freezed
          ? _value.additionalOptions
          : additionalOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      additionalOptionsMeta: additionalOptionsMeta == freezed
          ? _value.additionalOptionsMeta
          : additionalOptionsMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, int>>?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: billingAddress == freezed
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      shippingAddress: shippingAddress == freezed
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      sameAddress: sameAddress == freezed
          ? _value.sameAddress
          : sameAddress // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
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
abstract class _$PlaceOrderSessionRequestCopyWith<$Res>
    implements $PlaceOrderSessionRequestCopyWith<$Res> {
  factory _$PlaceOrderSessionRequestCopyWith(_PlaceOrderSessionRequest value,
          $Res Function(_PlaceOrderSessionRequest) then) =
      __$PlaceOrderSessionRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? hash,
      @JsonKey(name: "payment_method")
          String? paymentMethodKey,
      int? quantity,
      @JsonKey(name: "shipping_option")
          int? shippingOptionId,
      @JsonKey(name: "variant")
          Map<String, String>? variants,
      @JsonKey(name: "additional_option")
          Map<String, int>? additionalOptions,
      @JsonKey(name: "additional_options_meta")
          Map<String, Map<String, int>>? additionalOptionsMeta,
      @JsonKey(name: "start_date")
          String? startDate,
      @JsonKey(name: "end_date")
          String? endDate,
      @JsonKey(name: "range")
          String? range,
      @JsonKey(name: "billing_address")
          Address? billingAddress,
      @JsonKey(name: "shipping_address")
          Address? shippingAddress,
      @JsonKey(name: "same_address")
          int? sameAddress});

  @override
  $AddressCopyWith<$Res>? get billingAddress;
  @override
  $AddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class __$PlaceOrderSessionRequestCopyWithImpl<$Res>
    extends _$PlaceOrderSessionRequestCopyWithImpl<$Res>
    implements _$PlaceOrderSessionRequestCopyWith<$Res> {
  __$PlaceOrderSessionRequestCopyWithImpl(_PlaceOrderSessionRequest _value,
      $Res Function(_PlaceOrderSessionRequest) _then)
      : super(_value, (v) => _then(v as _PlaceOrderSessionRequest));

  @override
  _PlaceOrderSessionRequest get _value =>
      super._value as _PlaceOrderSessionRequest;

  @override
  $Res call({
    Object? hash = freezed,
    Object? paymentMethodKey = freezed,
    Object? quantity = freezed,
    Object? shippingOptionId = freezed,
    Object? variants = freezed,
    Object? additionalOptions = freezed,
    Object? additionalOptionsMeta = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? range = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
    Object? sameAddress = freezed,
  }) {
    return _then(_PlaceOrderSessionRequest(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodKey: paymentMethodKey == freezed
          ? _value.paymentMethodKey
          : paymentMethodKey // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingOptionId: shippingOptionId == freezed
          ? _value.shippingOptionId
          : shippingOptionId // ignore: cast_nullable_to_non_nullable
              as int?,
      variants: variants == freezed
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      additionalOptions: additionalOptions == freezed
          ? _value.additionalOptions
          : additionalOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      additionalOptionsMeta: additionalOptionsMeta == freezed
          ? _value.additionalOptionsMeta
          : additionalOptionsMeta // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, int>>?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: billingAddress == freezed
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      shippingAddress: shippingAddress == freezed
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      sameAddress: sameAddress == freezed
          ? _value.sameAddress
          : sameAddress // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceOrderSessionRequest
    with DiagnosticableTreeMixin
    implements _PlaceOrderSessionRequest {
  const _$_PlaceOrderSessionRequest(
      {this.hash,
      @JsonKey(name: "payment_method") this.paymentMethodKey,
      this.quantity,
      @JsonKey(name: "shipping_option") this.shippingOptionId,
      @JsonKey(name: "variant") this.variants,
      @JsonKey(name: "additional_option") this.additionalOptions,
      @JsonKey(name: "additional_options_meta") this.additionalOptionsMeta,
      @JsonKey(name: "start_date") this.startDate,
      @JsonKey(name: "end_date") this.endDate,
      @JsonKey(name: "range") this.range,
      @JsonKey(name: "billing_address") this.billingAddress,
      @JsonKey(name: "shipping_address") this.shippingAddress,
      @JsonKey(name: "same_address") this.sameAddress});

  factory _$_PlaceOrderSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceOrderSessionRequestFromJson(json);

  @override
  final String? hash;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethodKey;
  @override
  final int? quantity;
  @override
  @JsonKey(name: "shipping_option")
  final int? shippingOptionId;
  @override
  @JsonKey(name: "variant")
  final Map<String, String>? variants;
  @override
  @JsonKey(name: "additional_option")
  final Map<String, int>? additionalOptions;
  @override
  @JsonKey(name: "additional_options_meta")
  final Map<String, Map<String, int>>? additionalOptionsMeta;
  @override
  @JsonKey(name: "start_date")
  final String? startDate;
  @override
  @JsonKey(name: "end_date")
  final String? endDate;
  @override
  @JsonKey(name: "range")
  final String? range;
  @override
  @JsonKey(name: "billing_address")
  final Address? billingAddress;
  @override
  @JsonKey(name: "shipping_address")
  final Address? shippingAddress;
  @override
  @JsonKey(name: "same_address")
  final int? sameAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceOrderSessionRequest(hash: $hash, paymentMethodKey: $paymentMethodKey, quantity: $quantity, shippingOptionId: $shippingOptionId, variants: $variants, additionalOptions: $additionalOptions, additionalOptionsMeta: $additionalOptionsMeta, startDate: $startDate, endDate: $endDate, range: $range, billingAddress: $billingAddress, shippingAddress: $shippingAddress, sameAddress: $sameAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceOrderSessionRequest'))
      ..add(DiagnosticsProperty('hash', hash))
      ..add(DiagnosticsProperty('paymentMethodKey', paymentMethodKey))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('shippingOptionId', shippingOptionId))
      ..add(DiagnosticsProperty('variants', variants))
      ..add(DiagnosticsProperty('additionalOptions', additionalOptions))
      ..add(DiagnosticsProperty('additionalOptionsMeta', additionalOptionsMeta))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('range', range))
      ..add(DiagnosticsProperty('billingAddress', billingAddress))
      ..add(DiagnosticsProperty('shippingAddress', shippingAddress))
      ..add(DiagnosticsProperty('sameAddress', sameAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOrderSessionRequest &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.paymentMethodKey, paymentMethodKey) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethodKey, paymentMethodKey)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.shippingOptionId, shippingOptionId) ||
                const DeepCollectionEquality()
                    .equals(other.shippingOptionId, shippingOptionId)) &&
            (identical(other.variants, variants) ||
                const DeepCollectionEquality()
                    .equals(other.variants, variants)) &&
            (identical(other.additionalOptions, additionalOptions) ||
                const DeepCollectionEquality()
                    .equals(other.additionalOptions, additionalOptions)) &&
            (identical(other.additionalOptionsMeta, additionalOptionsMeta) ||
                const DeepCollectionEquality().equals(
                    other.additionalOptionsMeta, additionalOptionsMeta)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.range, range) ||
                const DeepCollectionEquality().equals(other.range, range)) &&
            (identical(other.billingAddress, billingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.billingAddress, billingAddress)) &&
            (identical(other.shippingAddress, shippingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.shippingAddress, shippingAddress)) &&
            (identical(other.sameAddress, sameAddress) ||
                const DeepCollectionEquality()
                    .equals(other.sameAddress, sameAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(paymentMethodKey) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(shippingOptionId) ^
      const DeepCollectionEquality().hash(variants) ^
      const DeepCollectionEquality().hash(additionalOptions) ^
      const DeepCollectionEquality().hash(additionalOptionsMeta) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(range) ^
      const DeepCollectionEquality().hash(billingAddress) ^
      const DeepCollectionEquality().hash(shippingAddress) ^
      const DeepCollectionEquality().hash(sameAddress);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderSessionRequestCopyWith<_PlaceOrderSessionRequest> get copyWith =>
      __$PlaceOrderSessionRequestCopyWithImpl<_PlaceOrderSessionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceOrderSessionRequestToJson(this);
  }
}

abstract class _PlaceOrderSessionRequest implements PlaceOrderSessionRequest {
  const factory _PlaceOrderSessionRequest(
      {String? hash,
      @JsonKey(name: "payment_method")
          String? paymentMethodKey,
      int? quantity,
      @JsonKey(name: "shipping_option")
          int? shippingOptionId,
      @JsonKey(name: "variant")
          Map<String, String>? variants,
      @JsonKey(name: "additional_option")
          Map<String, int>? additionalOptions,
      @JsonKey(name: "additional_options_meta")
          Map<String, Map<String, int>>? additionalOptionsMeta,
      @JsonKey(name: "start_date")
          String? startDate,
      @JsonKey(name: "end_date")
          String? endDate,
      @JsonKey(name: "range")
          String? range,
      @JsonKey(name: "billing_address")
          Address? billingAddress,
      @JsonKey(name: "shipping_address")
          Address? shippingAddress,
      @JsonKey(name: "same_address")
          int? sameAddress}) = _$_PlaceOrderSessionRequest;

  factory _PlaceOrderSessionRequest.fromJson(Map<String, dynamic> json) =
      _$_PlaceOrderSessionRequest.fromJson;

  @override
  String? get hash => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethodKey => throw _privateConstructorUsedError;
  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "shipping_option")
  int? get shippingOptionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant")
  Map<String, String>? get variants => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "additional_option")
  Map<String, int>? get additionalOptions => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "additional_options_meta")
  Map<String, Map<String, int>>? get additionalOptionsMeta =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "start_date")
  String? get startDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "end_date")
  String? get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "range")
  String? get range => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "billing_address")
  Address? get billingAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "shipping_address")
  Address? get shippingAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "same_address")
  int? get sameAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceOrderSessionRequestCopyWith<_PlaceOrderSessionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
