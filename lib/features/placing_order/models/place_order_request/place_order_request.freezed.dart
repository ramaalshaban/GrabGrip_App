// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceOrderRequest _$PlaceOrderRequestFromJson(Map<String, dynamic> json) {
  return _PlaceOrderRequest.fromJson(json);
}

/// @nodoc
class _$PlaceOrderRequestTearOff {
  const _$PlaceOrderRequestTearOff();

  _PlaceOrderRequest call(
      {int? quantity, @JsonKey(name: "payment_method") String? paymentMethod}) {
    return _PlaceOrderRequest(
      quantity: quantity,
      paymentMethod: paymentMethod,
    );
  }

  PlaceOrderRequest fromJson(Map<String, Object> json) {
    return PlaceOrderRequest.fromJson(json);
  }
}

/// @nodoc
const $PlaceOrderRequest = _$PlaceOrderRequestTearOff();

/// @nodoc
mixin _$PlaceOrderRequest {
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderRequestCopyWith<PlaceOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderRequestCopyWith<$Res> {
  factory $PlaceOrderRequestCopyWith(
          PlaceOrderRequest value, $Res Function(PlaceOrderRequest) then) =
      _$PlaceOrderRequestCopyWithImpl<$Res>;
  $Res call(
      {int? quantity, @JsonKey(name: "payment_method") String? paymentMethod});
}

/// @nodoc
class _$PlaceOrderRequestCopyWithImpl<$Res>
    implements $PlaceOrderRequestCopyWith<$Res> {
  _$PlaceOrderRequestCopyWithImpl(this._value, this._then);

  final PlaceOrderRequest _value;
  // ignore: unused_field
  final $Res Function(PlaceOrderRequest) _then;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PlaceOrderRequestCopyWith<$Res>
    implements $PlaceOrderRequestCopyWith<$Res> {
  factory _$PlaceOrderRequestCopyWith(
          _PlaceOrderRequest value, $Res Function(_PlaceOrderRequest) then) =
      __$PlaceOrderRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? quantity, @JsonKey(name: "payment_method") String? paymentMethod});
}

/// @nodoc
class __$PlaceOrderRequestCopyWithImpl<$Res>
    extends _$PlaceOrderRequestCopyWithImpl<$Res>
    implements _$PlaceOrderRequestCopyWith<$Res> {
  __$PlaceOrderRequestCopyWithImpl(
      _PlaceOrderRequest _value, $Res Function(_PlaceOrderRequest) _then)
      : super(_value, (v) => _then(v as _PlaceOrderRequest));

  @override
  _PlaceOrderRequest get _value => super._value as _PlaceOrderRequest;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_PlaceOrderRequest(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceOrderRequest
    with DiagnosticableTreeMixin
    implements _PlaceOrderRequest {
  const _$_PlaceOrderRequest(
      {this.quantity, @JsonKey(name: "payment_method") this.paymentMethod});

  factory _$_PlaceOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceOrderRequestFromJson(json);

  @override
  final int? quantity;
  @override
  @JsonKey(name: "payment_method")
  final String? paymentMethod;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceOrderRequest(quantity: $quantity, paymentMethod: $paymentMethod)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceOrderRequest'))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('paymentMethod', paymentMethod));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOrderRequest &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(paymentMethod);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderRequestCopyWith<_PlaceOrderRequest> get copyWith =>
      __$PlaceOrderRequestCopyWithImpl<_PlaceOrderRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceOrderRequestToJson(this);
  }
}

abstract class _PlaceOrderRequest implements PlaceOrderRequest {
  const factory _PlaceOrderRequest(
          {int? quantity,
          @JsonKey(name: "payment_method") String? paymentMethod}) =
      _$_PlaceOrderRequest;

  factory _PlaceOrderRequest.fromJson(Map<String, dynamic> json) =
      _$_PlaceOrderRequest.fromJson;

  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "payment_method")
  String? get paymentMethod => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceOrderRequestCopyWith<_PlaceOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
