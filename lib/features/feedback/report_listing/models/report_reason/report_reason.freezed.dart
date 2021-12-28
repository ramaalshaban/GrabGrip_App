// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportReason _$ReportReasonFromJson(Map<String, dynamic> json) {
  return _ReportReason.fromJson(json);
}

/// @nodoc
class _$ReportReasonTearOff {
  const _$ReportReasonTearOff();

  _ReportReason call(String value) {
    return _ReportReason(
      value,
    );
  }

  ReportReason fromJson(Map<String, Object> json) {
    return ReportReason.fromJson(json);
  }
}

/// @nodoc
const $ReportReason = _$ReportReasonTearOff();

/// @nodoc
mixin _$ReportReason {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportReasonCopyWith<ReportReason> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportReasonCopyWith<$Res> {
  factory $ReportReasonCopyWith(
          ReportReason value, $Res Function(ReportReason) then) =
      _$ReportReasonCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$ReportReasonCopyWithImpl<$Res> implements $ReportReasonCopyWith<$Res> {
  _$ReportReasonCopyWithImpl(this._value, this._then);

  final ReportReason _value;
  // ignore: unused_field
  final $Res Function(ReportReason) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReportReasonCopyWith<$Res>
    implements $ReportReasonCopyWith<$Res> {
  factory _$ReportReasonCopyWith(
          _ReportReason value, $Res Function(_ReportReason) then) =
      __$ReportReasonCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$ReportReasonCopyWithImpl<$Res> extends _$ReportReasonCopyWithImpl<$Res>
    implements _$ReportReasonCopyWith<$Res> {
  __$ReportReasonCopyWithImpl(
      _ReportReason _value, $Res Function(_ReportReason) _then)
      : super(_value, (v) => _then(v as _ReportReason));

  @override
  _ReportReason get _value => super._value as _ReportReason;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ReportReason(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportReason with DiagnosticableTreeMixin implements _ReportReason {
  const _$_ReportReason(this.value);

  factory _$_ReportReason.fromJson(Map<String, dynamic> json) =>
      _$$_ReportReasonFromJson(json);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportReason(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportReason'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportReason &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ReportReasonCopyWith<_ReportReason> get copyWith =>
      __$ReportReasonCopyWithImpl<_ReportReason>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportReasonToJson(this);
  }
}

abstract class _ReportReason implements ReportReason {
  const factory _ReportReason(String value) = _$_ReportReason;

  factory _ReportReason.fromJson(Map<String, dynamic> json) =
      _$_ReportReason.fromJson;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportReasonCopyWith<_ReportReason> get copyWith =>
      throw _privateConstructorUsedError;
}
