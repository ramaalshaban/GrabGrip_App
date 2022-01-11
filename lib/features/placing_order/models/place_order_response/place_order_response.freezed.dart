// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceOrderResponse _$PlaceOrderResponseFromJson(Map<String, dynamic> json) {
  return _PlaceOrderResponse.fromJson(json);
}

/// @nodoc
class _$PlaceOrderResponseTearOff {
  const _$PlaceOrderResponseTearOff();

  _PlaceOrderResponse call(Gear listing) {
    return _PlaceOrderResponse(
      listing,
    );
  }

  PlaceOrderResponse fromJson(Map<String, Object> json) {
    return PlaceOrderResponse.fromJson(json);
  }
}

/// @nodoc
const $PlaceOrderResponse = _$PlaceOrderResponseTearOff();

/// @nodoc
mixin _$PlaceOrderResponse {
  Gear get listing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderResponseCopyWith<PlaceOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderResponseCopyWith<$Res> {
  factory $PlaceOrderResponseCopyWith(
          PlaceOrderResponse value, $Res Function(PlaceOrderResponse) then) =
      _$PlaceOrderResponseCopyWithImpl<$Res>;
  $Res call({Gear listing});

  $GearCopyWith<$Res> get listing;
}

/// @nodoc
class _$PlaceOrderResponseCopyWithImpl<$Res>
    implements $PlaceOrderResponseCopyWith<$Res> {
  _$PlaceOrderResponseCopyWithImpl(this._value, this._then);

  final PlaceOrderResponse _value;
  // ignore: unused_field
  final $Res Function(PlaceOrderResponse) _then;

  @override
  $Res call({
    Object? listing = freezed,
  }) {
    return _then(_value.copyWith(
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Gear,
    ));
  }

  @override
  $GearCopyWith<$Res> get listing {
    return $GearCopyWith<$Res>(_value.listing, (value) {
      return _then(_value.copyWith(listing: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceOrderResponseCopyWith<$Res>
    implements $PlaceOrderResponseCopyWith<$Res> {
  factory _$PlaceOrderResponseCopyWith(
          _PlaceOrderResponse value, $Res Function(_PlaceOrderResponse) then) =
      __$PlaceOrderResponseCopyWithImpl<$Res>;
  @override
  $Res call({Gear listing});

  @override
  $GearCopyWith<$Res> get listing;
}

/// @nodoc
class __$PlaceOrderResponseCopyWithImpl<$Res>
    extends _$PlaceOrderResponseCopyWithImpl<$Res>
    implements _$PlaceOrderResponseCopyWith<$Res> {
  __$PlaceOrderResponseCopyWithImpl(
      _PlaceOrderResponse _value, $Res Function(_PlaceOrderResponse) _then)
      : super(_value, (v) => _then(v as _PlaceOrderResponse));

  @override
  _PlaceOrderResponse get _value => super._value as _PlaceOrderResponse;

  @override
  $Res call({
    Object? listing = freezed,
  }) {
    return _then(_PlaceOrderResponse(
      listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Gear,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceOrderResponse
    with DiagnosticableTreeMixin
    implements _PlaceOrderResponse {
  const _$_PlaceOrderResponse(this.listing);

  factory _$_PlaceOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceOrderResponseFromJson(json);

  @override
  final Gear listing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceOrderResponse(listing: $listing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceOrderResponse'))
      ..add(DiagnosticsProperty('listing', listing));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOrderResponse &&
            (identical(other.listing, listing) ||
                const DeepCollectionEquality().equals(other.listing, listing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listing);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderResponseCopyWith<_PlaceOrderResponse> get copyWith =>
      __$PlaceOrderResponseCopyWithImpl<_PlaceOrderResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceOrderResponseToJson(this);
  }
}

abstract class _PlaceOrderResponse implements PlaceOrderResponse {
  const factory _PlaceOrderResponse(Gear listing) = _$_PlaceOrderResponse;

  factory _PlaceOrderResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaceOrderResponse.fromJson;

  @override
  Gear get listing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceOrderResponseCopyWith<_PlaceOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
