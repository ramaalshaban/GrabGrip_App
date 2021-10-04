// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return _RegisterResponse.fromJson(json);
}

/// @nodoc
class _$RegisterResponseTearOff {
  const _$RegisterResponseTearOff();

  _RegisterResponse call(@JsonKey(name: "message") String? message,
      @JsonKey(name: "errors") Error? errors) {
    return _RegisterResponse(
      message,
      errors,
    );
  }

  RegisterResponse fromJson(Map<String, Object> json) {
    return RegisterResponse.fromJson(json);
  }
}

/// @nodoc
const $RegisterResponse = _$RegisterResponseTearOff();

/// @nodoc
mixin _$RegisterResponse {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "errors")
  Error? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseCopyWith<RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseCopyWith<$Res> {
  factory $RegisterResponseCopyWith(
          RegisterResponse value, $Res Function(RegisterResponse) then) =
      _$RegisterResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "errors") Error? errors});

  $ErrorCopyWith<$Res>? get errors;
}

/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._value, this._then);

  final RegisterResponse _value;
  // ignore: unused_field
  final $Res Function(RegisterResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }

  @override
  $ErrorCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ErrorCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterResponseCopyWith<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  factory _$RegisterResponseCopyWith(
          _RegisterResponse value, $Res Function(_RegisterResponse) then) =
      __$RegisterResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "errors") Error? errors});

  @override
  $ErrorCopyWith<$Res>? get errors;
}

/// @nodoc
class __$RegisterResponseCopyWithImpl<$Res>
    extends _$RegisterResponseCopyWithImpl<$Res>
    implements _$RegisterResponseCopyWith<$Res> {
  __$RegisterResponseCopyWithImpl(
      _RegisterResponse _value, $Res Function(_RegisterResponse) _then)
      : super(_value, (v) => _then(v as _RegisterResponse));

  @override
  _RegisterResponse get _value => super._value as _RegisterResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_RegisterResponse(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterResponse
    with DiagnosticableTreeMixin
    implements _RegisterResponse {
  _$_RegisterResponse(@JsonKey(name: "message") this.message,
      @JsonKey(name: "errors") this.errors);

  factory _$_RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterResponseFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "errors")
  final Error? errors;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterResponse(message: $message, errors: $errors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterResponse'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('errors', errors));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  _$RegisterResponseCopyWith<_RegisterResponse> get copyWith =>
      __$RegisterResponseCopyWithImpl<_RegisterResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterResponseToJson(this);
  }
}

abstract class _RegisterResponse implements RegisterResponse {
  factory _RegisterResponse(@JsonKey(name: "message") String? message,
      @JsonKey(name: "errors") Error? errors) = _$_RegisterResponse;

  factory _RegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_RegisterResponse.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "errors")
  Error? get errors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterResponseCopyWith<_RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
