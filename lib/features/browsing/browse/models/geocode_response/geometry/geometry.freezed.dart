// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return _Geometry.fromJson(json);
}

/// @nodoc
class _$GeometryTearOff {
  const _$GeometryTearOff();

  _Geometry call(Viewport viewport) {
    return _Geometry(
      viewport,
    );
  }

  Geometry fromJson(Map<String, Object> json) {
    return Geometry.fromJson(json);
  }
}

/// @nodoc
const $Geometry = _$GeometryTearOff();

/// @nodoc
mixin _$Geometry {
  Viewport get viewport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryCopyWith<Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) then) =
      _$GeometryCopyWithImpl<$Res>;
  $Res call({Viewport viewport});

  $ViewportCopyWith<$Res> get viewport;
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res> implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._value, this._then);

  final Geometry _value;
  // ignore: unused_field
  final $Res Function(Geometry) _then;

  @override
  $Res call({
    Object? viewport = freezed,
  }) {
    return _then(_value.copyWith(
      viewport: viewport == freezed
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as Viewport,
    ));
  }

  @override
  $ViewportCopyWith<$Res> get viewport {
    return $ViewportCopyWith<$Res>(_value.viewport, (value) {
      return _then(_value.copyWith(viewport: value));
    });
  }
}

/// @nodoc
abstract class _$GeometryCopyWith<$Res> implements $GeometryCopyWith<$Res> {
  factory _$GeometryCopyWith(_Geometry value, $Res Function(_Geometry) then) =
      __$GeometryCopyWithImpl<$Res>;
  @override
  $Res call({Viewport viewport});

  @override
  $ViewportCopyWith<$Res> get viewport;
}

/// @nodoc
class __$GeometryCopyWithImpl<$Res> extends _$GeometryCopyWithImpl<$Res>
    implements _$GeometryCopyWith<$Res> {
  __$GeometryCopyWithImpl(_Geometry _value, $Res Function(_Geometry) _then)
      : super(_value, (v) => _then(v as _Geometry));

  @override
  _Geometry get _value => super._value as _Geometry;

  @override
  $Res call({
    Object? viewport = freezed,
  }) {
    return _then(_Geometry(
      viewport == freezed
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as Viewport,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geometry with DiagnosticableTreeMixin implements _Geometry {
  const _$_Geometry(this.viewport);

  factory _$_Geometry.fromJson(Map<String, dynamic> json) =>
      _$$_GeometryFromJson(json);

  @override
  final Viewport viewport;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Geometry(viewport: $viewport)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Geometry'))
      ..add(DiagnosticsProperty('viewport', viewport));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Geometry &&
            (identical(other.viewport, viewport) ||
                const DeepCollectionEquality()
                    .equals(other.viewport, viewport)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(viewport);

  @JsonKey(ignore: true)
  @override
  _$GeometryCopyWith<_Geometry> get copyWith =>
      __$GeometryCopyWithImpl<_Geometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeometryToJson(this);
  }
}

abstract class _Geometry implements Geometry {
  const factory _Geometry(Viewport viewport) = _$_Geometry;

  factory _Geometry.fromJson(Map<String, dynamic> json) = _$_Geometry.fromJson;

  @override
  Viewport get viewport => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GeometryCopyWith<_Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}
