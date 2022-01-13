// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceOrderStateTearOff {
  const _$PlaceOrderStateTearOff();

  _PlaceOrderState call(
      {Gear? orderedListing,
      Pricing? pricing,
      Address billingAddress = const Address(),
      int billingAndShippingAddressIsTheSame = 1,
      Address shippingAddress = const Address(),
      List<PaymentMethod> paymentMethods = const [],
      PaymentMethod? selectedPaymentMethod}) {
    return _PlaceOrderState(
      orderedListing: orderedListing,
      pricing: pricing,
      billingAddress: billingAddress,
      billingAndShippingAddressIsTheSame: billingAndShippingAddressIsTheSame,
      shippingAddress: shippingAddress,
      paymentMethods: paymentMethods,
      selectedPaymentMethod: selectedPaymentMethod,
    );
  }
}

/// @nodoc
const $PlaceOrderState = _$PlaceOrderStateTearOff();

/// @nodoc
mixin _$PlaceOrderState {
  Gear? get orderedListing => throw _privateConstructorUsedError;
  Pricing? get pricing => throw _privateConstructorUsedError;
  Address get billingAddress => throw _privateConstructorUsedError;
  int get billingAndShippingAddressIsTheSame =>
      throw _privateConstructorUsedError;
  Address get shippingAddress => throw _privateConstructorUsedError;
  List<PaymentMethod> get paymentMethods => throw _privateConstructorUsedError;
  PaymentMethod? get selectedPaymentMethod =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceOrderStateCopyWith<PlaceOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderStateCopyWith<$Res> {
  factory $PlaceOrderStateCopyWith(
          PlaceOrderState value, $Res Function(PlaceOrderState) then) =
      _$PlaceOrderStateCopyWithImpl<$Res>;
  $Res call(
      {Gear? orderedListing,
      Pricing? pricing,
      Address billingAddress,
      int billingAndShippingAddressIsTheSame,
      Address shippingAddress,
      List<PaymentMethod> paymentMethods,
      PaymentMethod? selectedPaymentMethod});

  $GearCopyWith<$Res>? get orderedListing;
  $PricingCopyWith<$Res>? get pricing;
  $AddressCopyWith<$Res> get billingAddress;
  $AddressCopyWith<$Res> get shippingAddress;
  $PaymentMethodCopyWith<$Res>? get selectedPaymentMethod;
}

/// @nodoc
class _$PlaceOrderStateCopyWithImpl<$Res>
    implements $PlaceOrderStateCopyWith<$Res> {
  _$PlaceOrderStateCopyWithImpl(this._value, this._then);

  final PlaceOrderState _value;
  // ignore: unused_field
  final $Res Function(PlaceOrderState) _then;

  @override
  $Res call({
    Object? orderedListing = freezed,
    Object? pricing = freezed,
    Object? billingAddress = freezed,
    Object? billingAndShippingAddressIsTheSame = freezed,
    Object? shippingAddress = freezed,
    Object? paymentMethods = freezed,
    Object? selectedPaymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      orderedListing: orderedListing == freezed
          ? _value.orderedListing
          : orderedListing // ignore: cast_nullable_to_non_nullable
              as Gear?,
      pricing: pricing == freezed
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as Pricing?,
      billingAddress: billingAddress == freezed
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      billingAndShippingAddressIsTheSame: billingAndShippingAddressIsTheSame ==
              freezed
          ? _value.billingAndShippingAddressIsTheSame
          : billingAndShippingAddressIsTheSame // ignore: cast_nullable_to_non_nullable
              as int,
      shippingAddress: shippingAddress == freezed
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>,
      selectedPaymentMethod: selectedPaymentMethod == freezed
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
    ));
  }

  @override
  $GearCopyWith<$Res>? get orderedListing {
    if (_value.orderedListing == null) {
      return null;
    }

    return $GearCopyWith<$Res>(_value.orderedListing!, (value) {
      return _then(_value.copyWith(orderedListing: value));
    });
  }

  @override
  $PricingCopyWith<$Res>? get pricing {
    if (_value.pricing == null) {
      return null;
    }

    return $PricingCopyWith<$Res>(_value.pricing!, (value) {
      return _then(_value.copyWith(pricing: value));
    });
  }

  @override
  $AddressCopyWith<$Res> get billingAddress {
    return $AddressCopyWith<$Res>(_value.billingAddress, (value) {
      return _then(_value.copyWith(billingAddress: value));
    });
  }

  @override
  $AddressCopyWith<$Res> get shippingAddress {
    return $AddressCopyWith<$Res>(_value.shippingAddress, (value) {
      return _then(_value.copyWith(shippingAddress: value));
    });
  }

  @override
  $PaymentMethodCopyWith<$Res>? get selectedPaymentMethod {
    if (_value.selectedPaymentMethod == null) {
      return null;
    }

    return $PaymentMethodCopyWith<$Res>(_value.selectedPaymentMethod!, (value) {
      return _then(_value.copyWith(selectedPaymentMethod: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceOrderStateCopyWith<$Res>
    implements $PlaceOrderStateCopyWith<$Res> {
  factory _$PlaceOrderStateCopyWith(
          _PlaceOrderState value, $Res Function(_PlaceOrderState) then) =
      __$PlaceOrderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Gear? orderedListing,
      Pricing? pricing,
      Address billingAddress,
      int billingAndShippingAddressIsTheSame,
      Address shippingAddress,
      List<PaymentMethod> paymentMethods,
      PaymentMethod? selectedPaymentMethod});

  @override
  $GearCopyWith<$Res>? get orderedListing;
  @override
  $PricingCopyWith<$Res>? get pricing;
  @override
  $AddressCopyWith<$Res> get billingAddress;
  @override
  $AddressCopyWith<$Res> get shippingAddress;
  @override
  $PaymentMethodCopyWith<$Res>? get selectedPaymentMethod;
}

/// @nodoc
class __$PlaceOrderStateCopyWithImpl<$Res>
    extends _$PlaceOrderStateCopyWithImpl<$Res>
    implements _$PlaceOrderStateCopyWith<$Res> {
  __$PlaceOrderStateCopyWithImpl(
      _PlaceOrderState _value, $Res Function(_PlaceOrderState) _then)
      : super(_value, (v) => _then(v as _PlaceOrderState));

  @override
  _PlaceOrderState get _value => super._value as _PlaceOrderState;

  @override
  $Res call({
    Object? orderedListing = freezed,
    Object? pricing = freezed,
    Object? billingAddress = freezed,
    Object? billingAndShippingAddressIsTheSame = freezed,
    Object? shippingAddress = freezed,
    Object? paymentMethods = freezed,
    Object? selectedPaymentMethod = freezed,
  }) {
    return _then(_PlaceOrderState(
      orderedListing: orderedListing == freezed
          ? _value.orderedListing
          : orderedListing // ignore: cast_nullable_to_non_nullable
              as Gear?,
      pricing: pricing == freezed
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as Pricing?,
      billingAddress: billingAddress == freezed
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      billingAndShippingAddressIsTheSame: billingAndShippingAddressIsTheSame ==
              freezed
          ? _value.billingAndShippingAddressIsTheSame
          : billingAndShippingAddressIsTheSame // ignore: cast_nullable_to_non_nullable
              as int,
      shippingAddress: shippingAddress == freezed
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      paymentMethods: paymentMethods == freezed
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethod>,
      selectedPaymentMethod: selectedPaymentMethod == freezed
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
    ));
  }
}

/// @nodoc

class _$_PlaceOrderState implements _PlaceOrderState {
  const _$_PlaceOrderState(
      {this.orderedListing,
      this.pricing,
      this.billingAddress = const Address(),
      this.billingAndShippingAddressIsTheSame = 1,
      this.shippingAddress = const Address(),
      this.paymentMethods = const [],
      this.selectedPaymentMethod});

  @override
  final Gear? orderedListing;
  @override
  final Pricing? pricing;
  @JsonKey(defaultValue: const Address())
  @override
  final Address billingAddress;
  @JsonKey(defaultValue: 1)
  @override
  final int billingAndShippingAddressIsTheSame;
  @JsonKey(defaultValue: const Address())
  @override
  final Address shippingAddress;
  @JsonKey(defaultValue: const [])
  @override
  final List<PaymentMethod> paymentMethods;
  @override
  final PaymentMethod? selectedPaymentMethod;

  @override
  String toString() {
    return 'PlaceOrderState(orderedListing: $orderedListing, pricing: $pricing, billingAddress: $billingAddress, billingAndShippingAddressIsTheSame: $billingAndShippingAddressIsTheSame, shippingAddress: $shippingAddress, paymentMethods: $paymentMethods, selectedPaymentMethod: $selectedPaymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOrderState &&
            (identical(other.orderedListing, orderedListing) ||
                const DeepCollectionEquality()
                    .equals(other.orderedListing, orderedListing)) &&
            (identical(other.pricing, pricing) ||
                const DeepCollectionEquality()
                    .equals(other.pricing, pricing)) &&
            (identical(other.billingAddress, billingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.billingAddress, billingAddress)) &&
            (identical(other.billingAndShippingAddressIsTheSame,
                    billingAndShippingAddressIsTheSame) ||
                const DeepCollectionEquality().equals(
                    other.billingAndShippingAddressIsTheSame,
                    billingAndShippingAddressIsTheSame)) &&
            (identical(other.shippingAddress, shippingAddress) ||
                const DeepCollectionEquality()
                    .equals(other.shippingAddress, shippingAddress)) &&
            (identical(other.paymentMethods, paymentMethods) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethods, paymentMethods)) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                const DeepCollectionEquality().equals(
                    other.selectedPaymentMethod, selectedPaymentMethod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderedListing) ^
      const DeepCollectionEquality().hash(pricing) ^
      const DeepCollectionEquality().hash(billingAddress) ^
      const DeepCollectionEquality().hash(billingAndShippingAddressIsTheSame) ^
      const DeepCollectionEquality().hash(shippingAddress) ^
      const DeepCollectionEquality().hash(paymentMethods) ^
      const DeepCollectionEquality().hash(selectedPaymentMethod);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderStateCopyWith<_PlaceOrderState> get copyWith =>
      __$PlaceOrderStateCopyWithImpl<_PlaceOrderState>(this, _$identity);
}

abstract class _PlaceOrderState implements PlaceOrderState {
  const factory _PlaceOrderState(
      {Gear? orderedListing,
      Pricing? pricing,
      Address billingAddress,
      int billingAndShippingAddressIsTheSame,
      Address shippingAddress,
      List<PaymentMethod> paymentMethods,
      PaymentMethod? selectedPaymentMethod}) = _$_PlaceOrderState;

  @override
  Gear? get orderedListing => throw _privateConstructorUsedError;
  @override
  Pricing? get pricing => throw _privateConstructorUsedError;
  @override
  Address get billingAddress => throw _privateConstructorUsedError;
  @override
  int get billingAndShippingAddressIsTheSame =>
      throw _privateConstructorUsedError;
  @override
  Address get shippingAddress => throw _privateConstructorUsedError;
  @override
  List<PaymentMethod> get paymentMethods => throw _privateConstructorUsedError;
  @override
  PaymentMethod? get selectedPaymentMethod =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceOrderStateCopyWith<_PlaceOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
