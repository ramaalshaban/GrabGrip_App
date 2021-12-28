// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedbackStateTearOff {
  const _$FeedbackStateTearOff();

  _FeedbackState call(
      [String? reason,
      String notes = "",
      List<String> reportReasons = const []]) {
    return _FeedbackState(
      reason,
      notes,
      reportReasons,
    );
  }
}

/// @nodoc
const $FeedbackState = _$FeedbackStateTearOff();

/// @nodoc
mixin _$FeedbackState {
  String? get reason => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  List<String> get reportReasons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedbackStateCopyWith<FeedbackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackStateCopyWith<$Res> {
  factory $FeedbackStateCopyWith(
          FeedbackState value, $Res Function(FeedbackState) then) =
      _$FeedbackStateCopyWithImpl<$Res>;
  $Res call({String? reason, String notes, List<String> reportReasons});
}

/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._value, this._then);

  final FeedbackState _value;
  // ignore: unused_field
  final $Res Function(FeedbackState) _then;

  @override
  $Res call({
    Object? reason = freezed,
    Object? notes = freezed,
    Object? reportReasons = freezed,
  }) {
    return _then(_value.copyWith(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      reportReasons: reportReasons == freezed
          ? _value.reportReasons
          : reportReasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$FeedbackStateCopyWith<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  factory _$FeedbackStateCopyWith(
          _FeedbackState value, $Res Function(_FeedbackState) then) =
      __$FeedbackStateCopyWithImpl<$Res>;
  @override
  $Res call({String? reason, String notes, List<String> reportReasons});
}

/// @nodoc
class __$FeedbackStateCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res>
    implements _$FeedbackStateCopyWith<$Res> {
  __$FeedbackStateCopyWithImpl(
      _FeedbackState _value, $Res Function(_FeedbackState) _then)
      : super(_value, (v) => _then(v as _FeedbackState));

  @override
  _FeedbackState get _value => super._value as _FeedbackState;

  @override
  $Res call({
    Object? reason = freezed,
    Object? notes = freezed,
    Object? reportReasons = freezed,
  }) {
    return _then(_FeedbackState(
      reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      reportReasons == freezed
          ? _value.reportReasons
          : reportReasons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_FeedbackState with DiagnosticableTreeMixin implements _FeedbackState {
  const _$_FeedbackState(
      [this.reason, this.notes = "", this.reportReasons = const []]);

  @override
  final String? reason;
  @JsonKey(defaultValue: "")
  @override
  final String notes;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> reportReasons;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedbackState(reason: $reason, notes: $notes, reportReasons: $reportReasons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedbackState'))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('reportReasons', reportReasons));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedbackState &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.reportReasons, reportReasons) ||
                const DeepCollectionEquality()
                    .equals(other.reportReasons, reportReasons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(reportReasons);

  @JsonKey(ignore: true)
  @override
  _$FeedbackStateCopyWith<_FeedbackState> get copyWith =>
      __$FeedbackStateCopyWithImpl<_FeedbackState>(this, _$identity);
}

abstract class _FeedbackState implements FeedbackState {
  const factory _FeedbackState(
      [String? reason,
      String notes,
      List<String> reportReasons]) = _$_FeedbackState;

  @override
  String? get reason => throw _privateConstructorUsedError;
  @override
  String get notes => throw _privateConstructorUsedError;
  @override
  List<String> get reportReasons => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedbackStateCopyWith<_FeedbackState> get copyWith =>
      throw _privateConstructorUsedError;
}
