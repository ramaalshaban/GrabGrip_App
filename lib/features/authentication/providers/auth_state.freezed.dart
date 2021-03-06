// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthenticatedState authenticated({bool? isVerified}) {
    return _AuthenticatedState(
      isVerified: isVerified,
    );
  }

  _NotAuthenticatedState notAuthenticated() {
    return const _NotAuthenticatedState();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isVerified) authenticated,
    required TResult Function() notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isVerified)? authenticated,
    TResult Function()? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isVerified)? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_NotAuthenticatedState value) notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$AuthenticatedStateCopyWith<$Res> {
  factory _$AuthenticatedStateCopyWith(
          _AuthenticatedState value, $Res Function(_AuthenticatedState) then) =
      __$AuthenticatedStateCopyWithImpl<$Res>;
  $Res call({bool? isVerified});
}

/// @nodoc
class __$AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedStateCopyWith<$Res> {
  __$AuthenticatedStateCopyWithImpl(
      _AuthenticatedState _value, $Res Function(_AuthenticatedState) _then)
      : super(_value, (v) => _then(v as _AuthenticatedState));

  @override
  _AuthenticatedState get _value => super._value as _AuthenticatedState;

  @override
  $Res call({
    Object? isVerified = freezed,
  }) {
    return _then(_AuthenticatedState(
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AuthenticatedState
    with DiagnosticableTreeMixin
    implements _AuthenticatedState {
  const _$_AuthenticatedState({this.isVerified});

  @override
  final bool? isVerified;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authenticated(isVerified: $isVerified)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authenticated'))
      ..add(DiagnosticsProperty('isVerified', isVerified));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticatedState &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isVerified, isVerified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isVerified);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedStateCopyWith<_AuthenticatedState> get copyWith =>
      __$AuthenticatedStateCopyWithImpl<_AuthenticatedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isVerified) authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return authenticated(isVerified);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isVerified)? authenticated,
    TResult Function()? notAuthenticated,
  }) {
    return authenticated?.call(isVerified);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isVerified)? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(isVerified);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_NotAuthenticatedState value) notAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedState implements AuthState {
  const factory _AuthenticatedState({bool? isVerified}) = _$_AuthenticatedState;

  bool? get isVerified => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticatedStateCopyWith<_AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotAuthenticatedStateCopyWith<$Res> {
  factory _$NotAuthenticatedStateCopyWith(_NotAuthenticatedState value,
          $Res Function(_NotAuthenticatedState) then) =
      __$NotAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$NotAuthenticatedStateCopyWith<$Res> {
  __$NotAuthenticatedStateCopyWithImpl(_NotAuthenticatedState _value,
      $Res Function(_NotAuthenticatedState) _then)
      : super(_value, (v) => _then(v as _NotAuthenticatedState));

  @override
  _NotAuthenticatedState get _value => super._value as _NotAuthenticatedState;
}

/// @nodoc

class _$_NotAuthenticatedState
    with DiagnosticableTreeMixin
    implements _NotAuthenticatedState {
  const _$_NotAuthenticatedState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.notAuthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.notAuthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isVerified) authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool? isVerified)? authenticated,
    TResult Function()? notAuthenticated,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isVerified)? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_NotAuthenticatedState value) notAuthenticated,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_NotAuthenticatedState value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticatedState implements AuthState {
  const factory _NotAuthenticatedState() = _$_NotAuthenticatedState;
}
