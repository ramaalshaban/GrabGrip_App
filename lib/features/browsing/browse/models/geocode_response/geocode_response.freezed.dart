// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geocode_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeocodeResponse _$GeocodeResponseFromJson(Map<String, dynamic> json) {
  return _GeocodeResponse.fromJson(json);
}

/// @nodoc
class _$GeocodeResponseTearOff {
  const _$GeocodeResponseTearOff();

  _GeocodeResponse call(
      List<GeocodeResult> results, @JsonKey(name: 'status') String status) {
    return _GeocodeResponse(
      results,
      status,
    );
  }

  GeocodeResponse fromJson(Map<String, Object> json) {
    return GeocodeResponse.fromJson(json);
  }
}

/// @nodoc
const $GeocodeResponse = _$GeocodeResponseTearOff();

/// @nodoc
mixin _$GeocodeResponse {
  List<GeocodeResult> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeocodeResponseCopyWith<GeocodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodeResponseCopyWith<$Res> {
  factory $GeocodeResponseCopyWith(
          GeocodeResponse value, $Res Function(GeocodeResponse) then) =
      _$GeocodeResponseCopyWithImpl<$Res>;
  $Res call(
      {List<GeocodeResult> results, @JsonKey(name: 'status') String status});
}

/// @nodoc
class _$GeocodeResponseCopyWithImpl<$Res>
    implements $GeocodeResponseCopyWith<$Res> {
  _$GeocodeResponseCopyWithImpl(this._value, this._then);

  final GeocodeResponse _value;
  // ignore: unused_field
  final $Res Function(GeocodeResponse) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GeocodeResult>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GeocodeResponseCopyWith<$Res>
    implements $GeocodeResponseCopyWith<$Res> {
  factory _$GeocodeResponseCopyWith(
          _GeocodeResponse value, $Res Function(_GeocodeResponse) then) =
      __$GeocodeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GeocodeResult> results, @JsonKey(name: 'status') String status});
}

/// @nodoc
class __$GeocodeResponseCopyWithImpl<$Res>
    extends _$GeocodeResponseCopyWithImpl<$Res>
    implements _$GeocodeResponseCopyWith<$Res> {
  __$GeocodeResponseCopyWithImpl(
      _GeocodeResponse _value, $Res Function(_GeocodeResponse) _then)
      : super(_value, (v) => _then(v as _GeocodeResponse));

  @override
  _GeocodeResponse get _value => super._value as _GeocodeResponse;

  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
  }) {
    return _then(_GeocodeResponse(
      results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GeocodeResult>,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeocodeResponse
    with DiagnosticableTreeMixin
    implements _GeocodeResponse {
  const _$_GeocodeResponse(this.results, @JsonKey(name: 'status') this.status);

  factory _$_GeocodeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GeocodeResponseFromJson(json);

  @override
  final List<GeocodeResult> results;
  @override
  @JsonKey(name: 'status')
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GeocodeResponse(results: $results, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GeocodeResponse'))
      ..add(DiagnosticsProperty('results', results))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeocodeResponse &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$GeocodeResponseCopyWith<_GeocodeResponse> get copyWith =>
      __$GeocodeResponseCopyWithImpl<_GeocodeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeocodeResponseToJson(this);
  }
}

abstract class _GeocodeResponse implements GeocodeResponse {
  const factory _GeocodeResponse(
          List<GeocodeResult> results, @JsonKey(name: 'status') String status) =
      _$_GeocodeResponse;

  factory _GeocodeResponse.fromJson(Map<String, dynamic> json) =
      _$_GeocodeResponse.fromJson;

  @override
  List<GeocodeResult> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GeocodeResponseCopyWith<_GeocodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
