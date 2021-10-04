// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return _AuthModel.fromJson(json);
}

/// @nodoc
class _$AuthModelTearOff {
  const _$AuthModelTearOff();

  _AuthModel call(String email, String password,
      [String? name,
      @JsonKey(name: "password_confirmation") dynamic passwordConfirmation]) {
    return _AuthModel(
      email,
      password,
      name,
      passwordConfirmation,
    );
  }

  AuthModel fromJson(Map<String, Object> json) {
    return AuthModel.fromJson(json);
  }
}

/// @nodoc
const $AuthModel = _$AuthModelTearOff();

/// @nodoc
mixin _$AuthModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "password_confirmation")
  dynamic get passwordConfirmation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String? name,
      @JsonKey(name: "password_confirmation") dynamic passwordConfirmation});
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res> implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  final AuthModel _value;
  // ignore: unused_field
  final $Res Function(AuthModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$AuthModelCopyWith(
          _AuthModel value, $Res Function(_AuthModel) then) =
      __$AuthModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      String? name,
      @JsonKey(name: "password_confirmation") dynamic passwordConfirmation});
}

/// @nodoc
class __$AuthModelCopyWithImpl<$Res> extends _$AuthModelCopyWithImpl<$Res>
    implements _$AuthModelCopyWith<$Res> {
  __$AuthModelCopyWithImpl(_AuthModel _value, $Res Function(_AuthModel) _then)
      : super(_value, (v) => _then(v as _AuthModel));

  @override
  _AuthModel get _value => super._value as _AuthModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? passwordConfirmation = freezed,
  }) {
    return _then(_AuthModel(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthModel with DiagnosticableTreeMixin implements _AuthModel {
  const _$_AuthModel(this.email, this.password,
      [this.name,
      @JsonKey(name: "password_confirmation") this.passwordConfirmation]);

  factory _$_AuthModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthModelFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? name;
  @override
  @JsonKey(name: "password_confirmation")
  final dynamic passwordConfirmation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthModel(email: $email, password: $password, name: $name, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthModel'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('passwordConfirmation', passwordConfirmation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirmation, passwordConfirmation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(passwordConfirmation);

  @JsonKey(ignore: true)
  @override
  _$AuthModelCopyWith<_AuthModel> get copyWith =>
      __$AuthModelCopyWithImpl<_AuthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthModelToJson(this);
  }
}

abstract class _AuthModel implements AuthModel {
  const factory _AuthModel(
      String email,
      String password,
      [String? name,
      @JsonKey(name: "password_confirmation")
          dynamic passwordConfirmation]) = _$_AuthModel;

  factory _AuthModel.fromJson(Map<String, dynamic> json) =
      _$_AuthModel.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "password_confirmation")
  dynamic get passwordConfirmation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthModelCopyWith<_AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
