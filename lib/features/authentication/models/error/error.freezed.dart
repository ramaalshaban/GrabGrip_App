// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return _Error.fromJson(json);
}

/// @nodoc
class _$ErrorTearOff {
  const _$ErrorTearOff();

  _Error call(@JsonKey(name: "email") Map<String, List<String>>? emailError,
      @JsonKey(name: "password") Map<String, List<String>>? passwordError) {
    return _Error(
      emailError,
      passwordError,
    );
  }

  Error fromJson(Map<String, Object> json) {
    return Error.fromJson(json);
  }
}

/// @nodoc
const $Error = _$ErrorTearOff();

/// @nodoc
mixin _$Error {
  @JsonKey(name: "email")
  Map<String, List<String>>? get emailError =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  Map<String, List<String>>? get passwordError =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "email") Map<String, List<String>>? emailError,
      @JsonKey(name: "password") Map<String, List<String>>? passwordError});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  final Error _value;
  // ignore: unused_field
  final $Res Function(Error) _then;

  @override
  $Res call({
    Object? emailError = freezed,
    Object? passwordError = freezed,
  }) {
    return _then(_value.copyWith(
      emailError: emailError == freezed
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      passwordError: passwordError == freezed
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "email") Map<String, List<String>>? emailError,
      @JsonKey(name: "password") Map<String, List<String>>? passwordError});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? emailError = freezed,
    Object? passwordError = freezed,
  }) {
    return _then(_Error(
      emailError == freezed
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      passwordError == freezed
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Error with DiagnosticableTreeMixin implements _Error {
  _$_Error(@JsonKey(name: "email") this.emailError,
      @JsonKey(name: "password") this.passwordError);

  factory _$_Error.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorFromJson(json);

  @override
  @JsonKey(name: "email")
  final Map<String, List<String>>? emailError;
  @override
  @JsonKey(name: "password")
  final Map<String, List<String>>? passwordError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Error(emailError: $emailError, passwordError: $passwordError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Error'))
      ..add(DiagnosticsProperty('emailError', emailError))
      ..add(DiagnosticsProperty('passwordError', passwordError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.emailError, emailError) ||
                const DeepCollectionEquality()
                    .equals(other.emailError, emailError)) &&
            (identical(other.passwordError, passwordError) ||
                const DeepCollectionEquality()
                    .equals(other.passwordError, passwordError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailError) ^
      const DeepCollectionEquality().hash(passwordError);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorToJson(this);
  }
}

abstract class _Error implements Error {
  factory _Error(@JsonKey(name: "email") Map<String, List<String>>? emailError,
          @JsonKey(name: "password") Map<String, List<String>>? passwordError) =
      _$_Error;

  factory _Error.fromJson(Map<String, dynamic> json) = _$_Error.fromJson;

  @override
  @JsonKey(name: "email")
  Map<String, List<String>>? get emailError =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "password")
  Map<String, List<String>>? get passwordError =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
