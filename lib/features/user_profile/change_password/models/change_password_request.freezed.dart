// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangePasswordRequest _$ChangePasswordRequestFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordRequest.fromJson(json);
}

/// @nodoc
class _$ChangePasswordRequestTearOff {
  const _$ChangePasswordRequestTearOff();

  _ChangePasswordRequest call(String password,
      @JsonKey(name: "password_confirmation") dynamic passwordConfirmation) {
    return _ChangePasswordRequest(
      password,
      passwordConfirmation,
    );
  }

  ChangePasswordRequest fromJson(Map<String, Object> json) {
    return ChangePasswordRequest.fromJson(json);
  }
}

/// @nodoc
const $ChangePasswordRequest = _$ChangePasswordRequestTearOff();

/// @nodoc
mixin _$ChangePasswordRequest {
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password_confirmation")
  dynamic get passwordConfirmation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordRequestCopyWith<ChangePasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordRequestCopyWith<$Res> {
  factory $ChangePasswordRequestCopyWith(ChangePasswordRequest value,
          $Res Function(ChangePasswordRequest) then) =
      _$ChangePasswordRequestCopyWithImpl<$Res>;
  $Res call(
      {String password,
      @JsonKey(name: "password_confirmation") dynamic passwordConfirmation});
}

/// @nodoc
class _$ChangePasswordRequestCopyWithImpl<$Res>
    implements $ChangePasswordRequestCopyWith<$Res> {
  _$ChangePasswordRequestCopyWithImpl(this._value, this._then);

  final ChangePasswordRequest _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordRequest) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ChangePasswordRequestCopyWith<$Res>
    implements $ChangePasswordRequestCopyWith<$Res> {
  factory _$ChangePasswordRequestCopyWith(_ChangePasswordRequest value,
          $Res Function(_ChangePasswordRequest) then) =
      __$ChangePasswordRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String password,
      @JsonKey(name: "password_confirmation") dynamic passwordConfirmation});
}

/// @nodoc
class __$ChangePasswordRequestCopyWithImpl<$Res>
    extends _$ChangePasswordRequestCopyWithImpl<$Res>
    implements _$ChangePasswordRequestCopyWith<$Res> {
  __$ChangePasswordRequestCopyWithImpl(_ChangePasswordRequest _value,
      $Res Function(_ChangePasswordRequest) _then)
      : super(_value, (v) => _then(v as _ChangePasswordRequest));

  @override
  _ChangePasswordRequest get _value => super._value as _ChangePasswordRequest;

  @override
  $Res call({
    Object? password = freezed,
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_ChangePasswordRequest(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangePasswordRequest
    with DiagnosticableTreeMixin
    implements _ChangePasswordRequest {
  const _$_ChangePasswordRequest(this.password,
      @JsonKey(name: "password_confirmation") this.passwordConfirmation);

  factory _$_ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePasswordRequestFromJson(json);

  @override
  final String password;
  @override
  @JsonKey(name: "password_confirmation")
  final dynamic passwordConfirmation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChangePasswordRequest(password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChangePasswordRequest'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('passwordConfirmation', passwordConfirmation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePasswordRequest &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirmation, passwordConfirmation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordConfirmation);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordRequestCopyWith<_ChangePasswordRequest> get copyWith =>
      __$ChangePasswordRequestCopyWithImpl<_ChangePasswordRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePasswordRequestToJson(this);
  }
}

abstract class _ChangePasswordRequest implements ChangePasswordRequest {
  const factory _ChangePasswordRequest(
      String password,
      @JsonKey(name: "password_confirmation")
          dynamic passwordConfirmation) = _$_ChangePasswordRequest;

  factory _ChangePasswordRequest.fromJson(Map<String, dynamic> json) =
      _$_ChangePasswordRequest.fromJson;

  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "password_confirmation")
  dynamic get passwordConfirmation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangePasswordRequestCopyWith<_ChangePasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
