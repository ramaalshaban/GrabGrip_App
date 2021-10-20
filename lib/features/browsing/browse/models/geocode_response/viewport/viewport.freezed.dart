// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'viewport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Viewport _$ViewportFromJson(Map<String, dynamic> json) {
  return _Viewport.fromJson(json);
}

/// @nodoc
class _$ViewportTearOff {
  const _$ViewportTearOff();

  _Viewport call(@JsonKey(name: 'northeast') LatLng northEast,
      @JsonKey(name: 'southwest') LatLng southWest) {
    return _Viewport(
      northEast,
      southWest,
    );
  }

  Viewport fromJson(Map<String, Object> json) {
    return Viewport.fromJson(json);
  }
}

/// @nodoc
const $Viewport = _$ViewportTearOff();

/// @nodoc
mixin _$Viewport {
  @JsonKey(name: 'northeast')
  LatLng get northEast => throw _privateConstructorUsedError;
  @JsonKey(name: 'southwest')
  LatLng get southWest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewportCopyWith<Viewport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewportCopyWith<$Res> {
  factory $ViewportCopyWith(Viewport value, $Res Function(Viewport) then) =
      _$ViewportCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'northeast') LatLng northEast,
      @JsonKey(name: 'southwest') LatLng southWest});

  $LatLngCopyWith<$Res> get northEast;
  $LatLngCopyWith<$Res> get southWest;
}

/// @nodoc
class _$ViewportCopyWithImpl<$Res> implements $ViewportCopyWith<$Res> {
  _$ViewportCopyWithImpl(this._value, this._then);

  final Viewport _value;
  // ignore: unused_field
  final $Res Function(Viewport) _then;

  @override
  $Res call({
    Object? northEast = freezed,
    Object? southWest = freezed,
  }) {
    return _then(_value.copyWith(
      northEast: northEast == freezed
          ? _value.northEast
          : northEast // ignore: cast_nullable_to_non_nullable
              as LatLng,
      southWest: southWest == freezed
          ? _value.southWest
          : southWest // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }

  @override
  $LatLngCopyWith<$Res> get northEast {
    return $LatLngCopyWith<$Res>(_value.northEast, (value) {
      return _then(_value.copyWith(northEast: value));
    });
  }

  @override
  $LatLngCopyWith<$Res> get southWest {
    return $LatLngCopyWith<$Res>(_value.southWest, (value) {
      return _then(_value.copyWith(southWest: value));
    });
  }
}

/// @nodoc
abstract class _$ViewportCopyWith<$Res> implements $ViewportCopyWith<$Res> {
  factory _$ViewportCopyWith(_Viewport value, $Res Function(_Viewport) then) =
      __$ViewportCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'northeast') LatLng northEast,
      @JsonKey(name: 'southwest') LatLng southWest});

  @override
  $LatLngCopyWith<$Res> get northEast;
  @override
  $LatLngCopyWith<$Res> get southWest;
}

/// @nodoc
class __$ViewportCopyWithImpl<$Res> extends _$ViewportCopyWithImpl<$Res>
    implements _$ViewportCopyWith<$Res> {
  __$ViewportCopyWithImpl(_Viewport _value, $Res Function(_Viewport) _then)
      : super(_value, (v) => _then(v as _Viewport));

  @override
  _Viewport get _value => super._value as _Viewport;

  @override
  $Res call({
    Object? northEast = freezed,
    Object? southWest = freezed,
  }) {
    return _then(_Viewport(
      northEast == freezed
          ? _value.northEast
          : northEast // ignore: cast_nullable_to_non_nullable
              as LatLng,
      southWest == freezed
          ? _value.southWest
          : southWest // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Viewport with DiagnosticableTreeMixin implements _Viewport {
  const _$_Viewport(@JsonKey(name: 'northeast') this.northEast,
      @JsonKey(name: 'southwest') this.southWest);

  factory _$_Viewport.fromJson(Map<String, dynamic> json) =>
      _$$_ViewportFromJson(json);

  @override
  @JsonKey(name: 'northeast')
  final LatLng northEast;
  @override
  @JsonKey(name: 'southwest')
  final LatLng southWest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Viewport(northEast: $northEast, southWest: $southWest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Viewport'))
      ..add(DiagnosticsProperty('northEast', northEast))
      ..add(DiagnosticsProperty('southWest', southWest));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Viewport &&
            (identical(other.northEast, northEast) ||
                const DeepCollectionEquality()
                    .equals(other.northEast, northEast)) &&
            (identical(other.southWest, southWest) ||
                const DeepCollectionEquality()
                    .equals(other.southWest, southWest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(northEast) ^
      const DeepCollectionEquality().hash(southWest);

  @JsonKey(ignore: true)
  @override
  _$ViewportCopyWith<_Viewport> get copyWith =>
      __$ViewportCopyWithImpl<_Viewport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViewportToJson(this);
  }
}

abstract class _Viewport implements Viewport {
  const factory _Viewport(@JsonKey(name: 'northeast') LatLng northEast,
      @JsonKey(name: 'southwest') LatLng southWest) = _$_Viewport;

  factory _Viewport.fromJson(Map<String, dynamic> json) = _$_Viewport.fromJson;

  @override
  @JsonKey(name: 'northeast')
  LatLng get northEast => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'southwest')
  LatLng get southWest => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ViewportCopyWith<_Viewport> get copyWith =>
      throw _privateConstructorUsedError;
}
