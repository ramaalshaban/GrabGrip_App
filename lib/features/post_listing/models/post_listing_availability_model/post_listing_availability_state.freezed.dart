// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_listing_availability_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostListingAvailabilityStateTearOff {
  const _$PostListingAvailabilityStateTearOff();

  _Published published({required bool successfullyPublished}) {
    return _Published(
      successfullyPublished: successfullyPublished,
    );
  }

  _Unpublished unPublished({required bool successfullyUnPublished}) {
    return _Unpublished(
      successfullyUnPublished: successfullyUnPublished,
    );
  }

  _Reenabled reEnabled({required bool successfullyReEnabled}) {
    return _Reenabled(
      successfullyReEnabled: successfullyReEnabled,
    );
  }
}

/// @nodoc
const $PostListingAvailabilityState = _$PostListingAvailabilityStateTearOff();

/// @nodoc
mixin _$PostListingAvailabilityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool successfullyPublished) published,
    required TResult Function(bool successfullyUnPublished) unPublished,
    required TResult Function(bool successfullyReEnabled) reEnabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool successfullyPublished)? published,
    TResult Function(bool successfullyUnPublished)? unPublished,
    TResult Function(bool successfullyReEnabled)? reEnabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool successfullyPublished)? published,
    TResult Function(bool successfullyUnPublished)? unPublished,
    TResult Function(bool successfullyReEnabled)? reEnabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Published value) published,
    required TResult Function(_Unpublished value) unPublished,
    required TResult Function(_Reenabled value) reEnabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Published value)? published,
    TResult Function(_Unpublished value)? unPublished,
    TResult Function(_Reenabled value)? reEnabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Published value)? published,
    TResult Function(_Unpublished value)? unPublished,
    TResult Function(_Reenabled value)? reEnabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListingAvailabilityStateCopyWith<$Res> {
  factory $PostListingAvailabilityStateCopyWith(
          PostListingAvailabilityState value,
          $Res Function(PostListingAvailabilityState) then) =
      _$PostListingAvailabilityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostListingAvailabilityStateCopyWithImpl<$Res>
    implements $PostListingAvailabilityStateCopyWith<$Res> {
  _$PostListingAvailabilityStateCopyWithImpl(this._value, this._then);

  final PostListingAvailabilityState _value;
  // ignore: unused_field
  final $Res Function(PostListingAvailabilityState) _then;
}

/// @nodoc
abstract class _$PublishedCopyWith<$Res> {
  factory _$PublishedCopyWith(
          _Published value, $Res Function(_Published) then) =
      __$PublishedCopyWithImpl<$Res>;
  $Res call({bool successfullyPublished});
}

/// @nodoc
class __$PublishedCopyWithImpl<$Res>
    extends _$PostListingAvailabilityStateCopyWithImpl<$Res>
    implements _$PublishedCopyWith<$Res> {
  __$PublishedCopyWithImpl(_Published _value, $Res Function(_Published) _then)
      : super(_value, (v) => _then(v as _Published));

  @override
  _Published get _value => super._value as _Published;

  @override
  $Res call({
    Object? successfullyPublished = freezed,
  }) {
    return _then(_Published(
      successfullyPublished: successfullyPublished == freezed
          ? _value.successfullyPublished
          : successfullyPublished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Published with DiagnosticableTreeMixin implements _Published {
  const _$_Published({required this.successfullyPublished});

  @override
  final bool successfullyPublished;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostListingAvailabilityState.published(successfullyPublished: $successfullyPublished)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PostListingAvailabilityState.published'))
      ..add(
          DiagnosticsProperty('successfullyPublished', successfullyPublished));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Published &&
            (identical(other.successfullyPublished, successfullyPublished) ||
                const DeepCollectionEquality().equals(
                    other.successfullyPublished, successfullyPublished)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(successfullyPublished);

  @JsonKey(ignore: true)
  @override
  _$PublishedCopyWith<_Published> get copyWith =>
      __$PublishedCopyWithImpl<_Published>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool successfullyPublished) published,
    required TResult Function(bool successfullyUnPublished) unPublished,
    required TResult Function(bool successfullyReEnabled) reEnabled,
  }) {
    return published(successfullyPublished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool successfullyPublished)? published,
    TResult Function(bool successfullyUnPublished)? unPublished,
    TResult Function(bool successfullyReEnabled)? reEnabled,
  }) {
    return published?.call(successfullyPublished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool successfullyPublished)? published,
    TResult Function(bool successfullyUnPublished)? unPublished,
    TResult Function(bool successfullyReEnabled)? reEnabled,
    required TResult orElse(),
  }) {
    if (published != null) {
      return published(successfullyPublished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Published value) published,
    required TResult Function(_Unpublished value) unPublished,
    required TResult Function(_Reenabled value) reEnabled,
  }) {
    return published(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Published value)? published,
    TResult Function(_Unpublished value)? unPublished,
    TResult Function(_Reenabled value)? reEnabled,
  }) {
    return published?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Published value)? published,
    TResult Function(_Unpublished value)? unPublished,
    TResult Function(_Reenabled value)? reEnabled,
    required TResult orElse(),
  }) {
    if (published != null) {
      return published(this);
    }
    return orElse();
  }
}

abstract class _Published implements PostListingAvailabilityState {
  const factory _Published({required bool successfullyPublished}) =
      _$_Published;

  bool get successfullyPublished => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PublishedCopyWith<_Published> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnpublishedCopyWith<$Res> {
  factory _$UnpublishedCopyWith(
          _Unpublished value, $Res Function(_Unpublished) then) =
      __$UnpublishedCopyWithImpl<$Res>;
  $Res call({bool successfullyUnPublished});
}

/// @nodoc
class __$UnpublishedCopyWithImpl<$Res>
    extends _$PostListingAvailabilityStateCopyWithImpl<$Res>
    implements _$UnpublishedCopyWith<$Res> {
  __$UnpublishedCopyWithImpl(
      _Unpublished _value, $Res Function(_Unpublished) _then)
      : super(_value, (v) => _then(v as _Unpublished));

  @override
  _Unpublished get _value => super._value as _Unpublished;

  @override
  $Res call({
    Object? successfullyUnPublished = freezed,
  }) {
    return _then(_Unpublished(
      successfullyUnPublished: successfullyUnPublished == freezed
          ? _value.successfullyUnPublished
          : successfullyUnPublished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Unpublished with DiagnosticableTreeMixin implements _Unpublished {
  const _$_Unpublished({required this.successfullyUnPublished});

  @override
  final bool successfullyUnPublished;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostListingAvailabilityState.unPublished(successfullyUnPublished: $successfullyUnPublished)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PostListingAvailabilityState.unPublished'))
      ..add(DiagnosticsProperty(
          'successfullyUnPublished', successfullyUnPublished));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unpublished &&
            (identical(
                    other.successfullyUnPublished, successfullyUnPublished) ||
                const DeepCollectionEquality().equals(
                    other.successfullyUnPublished, successfullyUnPublished)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(successfullyUnPublished);

  @JsonKey(ignore: true)
  @override
  _$UnpublishedCopyWith<_Unpublished> get copyWith =>
      __$UnpublishedCopyWithImpl<_Unpublished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool successfullyPublished) published,
    required TResult Function(bool successfullyUnPublished) unPublished,
    required TResult Function(bool successfullyReEnabled) reEnabled,
  }) {
    return unPublished(successfullyUnPublished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool successfullyPublished)? published,
    TResult Function(bool successfullyUnPublished)? unPublished,
    TResult Function(bool successfullyReEnabled)? reEnabled,
  }) {
    return unPublished?.call(successfullyUnPublished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool successfullyPublished)? published,
    TResult Function(bool successfullyUnPublished)? unPublished,
    TResult Function(bool successfullyReEnabled)? reEnabled,
    required TResult orElse(),
  }) {
    if (unPublished != null) {
      return unPublished(successfullyUnPublished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Published value) published,
    required TResult Function(_Unpublished value) unPublished,
    required TResult Function(_Reenabled value) reEnabled,
  }) {
    return unPublished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Published value)? published,
    TResult Function(_Unpublished value)? unPublished,
    TResult Function(_Reenabled value)? reEnabled,
  }) {
    return unPublished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Published value)? published,
    TResult Function(_Unpublished value)? unPublished,
    TResult Function(_Reenabled value)? reEnabled,
    required TResult orElse(),
  }) {
    if (unPublished != null) {
      return unPublished(this);
    }
    return orElse();
  }
}

abstract class _Unpublished implements PostListingAvailabilityState {
  const factory _Unpublished({required bool successfullyUnPublished}) =
      _$_Unpublished;

  bool get successfullyUnPublished => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnpublishedCopyWith<_Unpublished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReenabledCopyWith<$Res> {
  factory _$ReenabledCopyWith(
          _Reenabled value, $Res Function(_Reenabled) then) =
      __$ReenabledCopyWithImpl<$Res>;
  $Res call({bool successfullyReEnabled});
}

/// @nodoc
class __$ReenabledCopyWithImpl<$Res>
    extends _$PostListingAvailabilityStateCopyWithImpl<$Res>
    implements _$ReenabledCopyWith<$Res> {
  __$ReenabledCopyWithImpl(_Reenabled _value, $Res Function(_Reenabled) _then)
      : super(_value, (v) => _then(v as _Reenabled));

  @override
  _Reenabled get _value => super._value as _Reenabled;

  @override
  $Res call({
    Object? successfullyReEnabled = freezed,
  }) {
    return _then(_Reenabled(
      successfullyReEnabled: successfullyReEnabled == freezed
          ? _value.successfullyReEnabled
          : successfullyReEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Reenabled with DiagnosticableTreeMixin implements _Reenabled {
  const _$_Reenabled({required this.successfullyReEnabled});

  @override
  final bool successfullyReEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostListingAvailabilityState.reEnabled(successfullyReEnabled: $successfullyReEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PostListingAvailabilityState.reEnabled'))
      ..add(
          DiagnosticsProperty('successfullyReEnabled', successfullyReEnabled));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reenabled &&
            (identical(other.successfullyReEnabled, successfullyReEnabled) ||
                const DeepCollectionEquality().equals(
                    other.successfullyReEnabled, successfullyReEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(successfullyReEnabled);

  @JsonKey(ignore: true)
  @override
  _$ReenabledCopyWith<_Reenabled> get copyWith =>
      __$ReenabledCopyWithImpl<_Reenabled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool successfullyPublished) published,
    required TResult Function(bool successfullyUnPublished) unPublished,
    required TResult Function(bool successfullyReEnabled) reEnabled,
  }) {
    return reEnabled(successfullyReEnabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool successfullyPublished)? published,
    TResult Function(bool successfullyUnPublished)? unPublished,
    TResult Function(bool successfullyReEnabled)? reEnabled,
  }) {
    return reEnabled?.call(successfullyReEnabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool successfullyPublished)? published,
    TResult Function(bool successfullyUnPublished)? unPublished,
    TResult Function(bool successfullyReEnabled)? reEnabled,
    required TResult orElse(),
  }) {
    if (reEnabled != null) {
      return reEnabled(successfullyReEnabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Published value) published,
    required TResult Function(_Unpublished value) unPublished,
    required TResult Function(_Reenabled value) reEnabled,
  }) {
    return reEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Published value)? published,
    TResult Function(_Unpublished value)? unPublished,
    TResult Function(_Reenabled value)? reEnabled,
  }) {
    return reEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Published value)? published,
    TResult Function(_Unpublished value)? unPublished,
    TResult Function(_Reenabled value)? reEnabled,
    required TResult orElse(),
  }) {
    if (reEnabled != null) {
      return reEnabled(this);
    }
    return orElse();
  }
}

abstract class _Reenabled implements PostListingAvailabilityState {
  const factory _Reenabled({required bool successfullyReEnabled}) =
      _$_Reenabled;

  bool get successfullyReEnabled => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReenabledCopyWith<_Reenabled> get copyWith =>
      throw _privateConstructorUsedError;
}
