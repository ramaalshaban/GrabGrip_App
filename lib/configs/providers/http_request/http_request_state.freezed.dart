// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'http_request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HttpRequestStateTearOff {
  const _$HttpRequestStateTearOff();

  _Nothing noRequestInProgress() {
    return const _Nothing();
  }

  _Data success() {
    return const _Data();
  }

  _Loading loading() {
    return const _Loading();
  }

  _ErrorDetails error(String message) {
    return _ErrorDetails(
      message,
    );
  }
}

/// @nodoc
const $HttpRequestState = _$HttpRequestStateTearOff();

/// @nodoc
mixin _$HttpRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noRequestInProgress,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noRequestInProgress,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noRequestInProgress,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Nothing value) noRequestInProgress,
    required TResult Function(_Data value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ErrorDetails value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Nothing value)? noRequestInProgress,
    TResult Function(_Data value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_ErrorDetails value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Nothing value)? noRequestInProgress,
    TResult Function(_Data value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_ErrorDetails value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpRequestStateCopyWith<$Res> {
  factory $HttpRequestStateCopyWith(
          HttpRequestState value, $Res Function(HttpRequestState) then) =
      _$HttpRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HttpRequestStateCopyWithImpl<$Res>
    implements $HttpRequestStateCopyWith<$Res> {
  _$HttpRequestStateCopyWithImpl(this._value, this._then);

  final HttpRequestState _value;
  // ignore: unused_field
  final $Res Function(HttpRequestState) _then;
}

/// @nodoc
abstract class _$NothingCopyWith<$Res> {
  factory _$NothingCopyWith(_Nothing value, $Res Function(_Nothing) then) =
      __$NothingCopyWithImpl<$Res>;
}

/// @nodoc
class __$NothingCopyWithImpl<$Res> extends _$HttpRequestStateCopyWithImpl<$Res>
    implements _$NothingCopyWith<$Res> {
  __$NothingCopyWithImpl(_Nothing _value, $Res Function(_Nothing) _then)
      : super(_value, (v) => _then(v as _Nothing));

  @override
  _Nothing get _value => super._value as _Nothing;
}

/// @nodoc

class _$_Nothing with DiagnosticableTreeMixin implements _Nothing {
  const _$_Nothing();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HttpRequestState.noRequestInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'HttpRequestState.noRequestInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Nothing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noRequestInProgress,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return noRequestInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noRequestInProgress,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return noRequestInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noRequestInProgress,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (noRequestInProgress != null) {
      return noRequestInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Nothing value) noRequestInProgress,
    required TResult Function(_Data value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ErrorDetails value) error,
  }) {
    return noRequestInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Nothing value)? noRequestInProgress,
    TResult Function(_Data value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_ErrorDetails value)? error,
  }) {
    return noRequestInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Nothing value)? noRequestInProgress,
    TResult Function(_Data value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (noRequestInProgress != null) {
      return noRequestInProgress(this);
    }
    return orElse();
  }
}

abstract class _Nothing implements HttpRequestState {
  const factory _Nothing() = _$_Nothing;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$HttpRequestStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;
}

/// @nodoc

class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HttpRequestState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HttpRequestState.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Data);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noRequestInProgress,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noRequestInProgress,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noRequestInProgress,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Nothing value) noRequestInProgress,
    required TResult Function(_Data value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ErrorDetails value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Nothing value)? noRequestInProgress,
    TResult Function(_Data value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_ErrorDetails value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Nothing value)? noRequestInProgress,
    TResult Function(_Data value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Data implements HttpRequestState {
  const factory _Data() = _$_Data;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HttpRequestStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HttpRequestState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HttpRequestState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noRequestInProgress,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noRequestInProgress,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noRequestInProgress,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Nothing value) noRequestInProgress,
    required TResult Function(_Data value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ErrorDetails value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Nothing value)? noRequestInProgress,
    TResult Function(_Data value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_ErrorDetails value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Nothing value)? noRequestInProgress,
    TResult Function(_Data value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HttpRequestState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorDetailsCopyWith<$Res> {
  factory _$ErrorDetailsCopyWith(
          _ErrorDetails value, $Res Function(_ErrorDetails) then) =
      __$ErrorDetailsCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorDetailsCopyWithImpl<$Res>
    extends _$HttpRequestStateCopyWithImpl<$Res>
    implements _$ErrorDetailsCopyWith<$Res> {
  __$ErrorDetailsCopyWithImpl(
      _ErrorDetails _value, $Res Function(_ErrorDetails) _then)
      : super(_value, (v) => _then(v as _ErrorDetails));

  @override
  _ErrorDetails get _value => super._value as _ErrorDetails;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorDetails(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorDetails with DiagnosticableTreeMixin implements _ErrorDetails {
  const _$_ErrorDetails(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HttpRequestState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HttpRequestState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorDetails &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorDetailsCopyWith<_ErrorDetails> get copyWith =>
      __$ErrorDetailsCopyWithImpl<_ErrorDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noRequestInProgress,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noRequestInProgress,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noRequestInProgress,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Nothing value) noRequestInProgress,
    required TResult Function(_Data value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ErrorDetails value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Nothing value)? noRequestInProgress,
    TResult Function(_Data value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_ErrorDetails value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Nothing value)? noRequestInProgress,
    TResult Function(_Data value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorDetails implements HttpRequestState {
  const factory _ErrorDetails(String message) = _$_ErrorDetails;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorDetailsCopyWith<_ErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
