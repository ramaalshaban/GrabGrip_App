// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
class _$LoginResponseTearOff {
  const _$LoginResponseTearOff();

  _LoginResponse call(@JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "expires_in") int? expirationDuration, String? error) {
    return _LoginResponse(
      accessToken,
      expirationDuration,
      error,
    );
  }

  LoginResponse fromJson(Map<String, Object> json) {
    return LoginResponse.fromJson(json);
  }
}

/// @nodoc
const $LoginResponse = _$LoginResponseTearOff();

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: "access_token")
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "expires_in")
  int? get expirationDuration => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "expires_in") int? expirationDuration,
      String? error});
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  final LoginResponse _value;
  // ignore: unused_field
  final $Res Function(LoginResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expirationDuration = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDuration: expirationDuration == freezed
          ? _value.expirationDuration
          : expirationDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(
          _LoginResponse value, $Res Function(_LoginResponse) then) =
      __$LoginResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "expires_in") int? expirationDuration,
      String? error});
}

/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(
      _LoginResponse _value, $Res Function(_LoginResponse) _then)
      : super(_value, (v) => _then(v as _LoginResponse));

  @override
  _LoginResponse get _value => super._value as _LoginResponse;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expirationDuration = freezed,
    Object? error = freezed,
  }) {
    return _then(_LoginResponse(
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDuration == freezed
          ? _value.expirationDuration
          : expirationDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponse with DiagnosticableTreeMixin implements _LoginResponse {
  _$_LoginResponse(@JsonKey(name: "access_token") this.accessToken,
      @JsonKey(name: "expires_in") this.expirationDuration, this.error);

  factory _$_LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String? accessToken;
  @override
  @JsonKey(name: "expires_in")
  final int? expirationDuration;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginResponse(accessToken: $accessToken, expirationDuration: $expirationDuration, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginResponse'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('expirationDuration', expirationDuration))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginResponse &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.expirationDuration, expirationDuration) ||
                const DeepCollectionEquality()
                    .equals(other.expirationDuration, expirationDuration)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(expirationDuration) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$LoginResponseCopyWith<_LoginResponse> get copyWith =>
      __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseToJson(this);
  }
}

abstract class _LoginResponse implements LoginResponse {
  factory _LoginResponse(
      @JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "expires_in") int? expirationDuration,
      String? error) = _$_LoginResponse;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginResponse.fromJson;

  @override
  @JsonKey(name: "access_token")
  String? get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "expires_in")
  int? get expirationDuration => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginResponseCopyWith<_LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
