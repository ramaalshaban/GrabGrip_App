// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geocode_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeocodeResult _$GeocodeResultFromJson(Map<String, dynamic> json) {
  return _GeocodeResult.fromJson(json);
}

/// @nodoc
class _$GeocodeResultTearOff {
  const _$GeocodeResultTearOff();

  _GeocodeResult call(Geometry geometry) {
    return _GeocodeResult(
      geometry,
    );
  }

  GeocodeResult fromJson(Map<String, Object> json) {
    return GeocodeResult.fromJson(json);
  }
}

/// @nodoc
const $GeocodeResult = _$GeocodeResultTearOff();

/// @nodoc
mixin _$GeocodeResult {
  Geometry get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeocodeResultCopyWith<GeocodeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodeResultCopyWith<$Res> {
  factory $GeocodeResultCopyWith(
          GeocodeResult value, $Res Function(GeocodeResult) then) =
      _$GeocodeResultCopyWithImpl<$Res>;
  $Res call({Geometry geometry});

  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$GeocodeResultCopyWithImpl<$Res>
    implements $GeocodeResultCopyWith<$Res> {
  _$GeocodeResultCopyWithImpl(this._value, this._then);

  final GeocodeResult _value;
  // ignore: unused_field
  final $Res Function(GeocodeResult) _then;

  @override
  $Res call({
    Object? geometry = freezed,
  }) {
    return _then(_value.copyWith(
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
    ));
  }

  @override
  $GeometryCopyWith<$Res> get geometry {
    return $GeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }
}

/// @nodoc
abstract class _$GeocodeResultCopyWith<$Res>
    implements $GeocodeResultCopyWith<$Res> {
  factory _$GeocodeResultCopyWith(
          _GeocodeResult value, $Res Function(_GeocodeResult) then) =
      __$GeocodeResultCopyWithImpl<$Res>;
  @override
  $Res call({Geometry geometry});

  @override
  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$GeocodeResultCopyWithImpl<$Res>
    extends _$GeocodeResultCopyWithImpl<$Res>
    implements _$GeocodeResultCopyWith<$Res> {
  __$GeocodeResultCopyWithImpl(
      _GeocodeResult _value, $Res Function(_GeocodeResult) _then)
      : super(_value, (v) => _then(v as _GeocodeResult));

  @override
  _GeocodeResult get _value => super._value as _GeocodeResult;

  @override
  $Res call({
    Object? geometry = freezed,
  }) {
    return _then(_GeocodeResult(
      geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeocodeResult with DiagnosticableTreeMixin implements _GeocodeResult {
  const _$_GeocodeResult(this.geometry);

  factory _$_GeocodeResult.fromJson(Map<String, dynamic> json) =>
      _$$_GeocodeResultFromJson(json);

  @override
  final Geometry geometry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GeocodeResult(geometry: $geometry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GeocodeResult'))
      ..add(DiagnosticsProperty('geometry', geometry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeocodeResult &&
            (identical(other.geometry, geometry) ||
                const DeepCollectionEquality()
                    .equals(other.geometry, geometry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(geometry);

  @JsonKey(ignore: true)
  @override
  _$GeocodeResultCopyWith<_GeocodeResult> get copyWith =>
      __$GeocodeResultCopyWithImpl<_GeocodeResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeocodeResultToJson(this);
  }
}

abstract class _GeocodeResult implements GeocodeResult {
  const factory _GeocodeResult(Geometry geometry) = _$_GeocodeResult;

  factory _GeocodeResult.fromJson(Map<String, dynamic> json) =
      _$_GeocodeResult.fromJson;

  @override
  Geometry get geometry => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GeocodeResultCopyWith<_GeocodeResult> get copyWith =>
      throw _privateConstructorUsedError;
}
