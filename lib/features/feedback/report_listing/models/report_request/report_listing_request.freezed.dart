// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_listing_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportListingRequest _$ReportListingRequestFromJson(Map<String, dynamic> json) {
  return _ReportListingRequest.fromJson(json);
}

/// @nodoc
class _$ReportListingRequestTearOff {
  const _$ReportListingRequestTearOff();

  _ReportListingRequest call(String reason, String notes) {
    return _ReportListingRequest(
      reason,
      notes,
    );
  }

  ReportListingRequest fromJson(Map<String, Object> json) {
    return ReportListingRequest.fromJson(json);
  }
}

/// @nodoc
const $ReportListingRequest = _$ReportListingRequestTearOff();

/// @nodoc
mixin _$ReportListingRequest {
  String get reason => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportListingRequestCopyWith<ReportListingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportListingRequestCopyWith<$Res> {
  factory $ReportListingRequestCopyWith(ReportListingRequest value,
          $Res Function(ReportListingRequest) then) =
      _$ReportListingRequestCopyWithImpl<$Res>;
  $Res call({String reason, String notes});
}

/// @nodoc
class _$ReportListingRequestCopyWithImpl<$Res>
    implements $ReportListingRequestCopyWith<$Res> {
  _$ReportListingRequestCopyWithImpl(this._value, this._then);

  final ReportListingRequest _value;
  // ignore: unused_field
  final $Res Function(ReportListingRequest) _then;

  @override
  $Res call({
    Object? reason = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReportListingRequestCopyWith<$Res>
    implements $ReportListingRequestCopyWith<$Res> {
  factory _$ReportListingRequestCopyWith(_ReportListingRequest value,
          $Res Function(_ReportListingRequest) then) =
      __$ReportListingRequestCopyWithImpl<$Res>;
  @override
  $Res call({String reason, String notes});
}

/// @nodoc
class __$ReportListingRequestCopyWithImpl<$Res>
    extends _$ReportListingRequestCopyWithImpl<$Res>
    implements _$ReportListingRequestCopyWith<$Res> {
  __$ReportListingRequestCopyWithImpl(
      _ReportListingRequest _value, $Res Function(_ReportListingRequest) _then)
      : super(_value, (v) => _then(v as _ReportListingRequest));

  @override
  _ReportListingRequest get _value => super._value as _ReportListingRequest;

  @override
  $Res call({
    Object? reason = freezed,
    Object? notes = freezed,
  }) {
    return _then(_ReportListingRequest(
      reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportListingRequest
    with DiagnosticableTreeMixin
    implements _ReportListingRequest {
  const _$_ReportListingRequest(this.reason, this.notes);

  factory _$_ReportListingRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ReportListingRequestFromJson(json);

  @override
  final String reason;
  @override
  final String notes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportListingRequest(reason: $reason, notes: $notes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportListingRequest'))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('notes', notes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportListingRequest &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(notes);

  @JsonKey(ignore: true)
  @override
  _$ReportListingRequestCopyWith<_ReportListingRequest> get copyWith =>
      __$ReportListingRequestCopyWithImpl<_ReportListingRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportListingRequestToJson(this);
  }
}

abstract class _ReportListingRequest implements ReportListingRequest {
  const factory _ReportListingRequest(String reason, String notes) =
      _$_ReportListingRequest;

  factory _ReportListingRequest.fromJson(Map<String, dynamic> json) =
      _$_ReportListingRequest.fromJson;

  @override
  String get reason => throw _privateConstructorUsedError;
  @override
  String get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportListingRequestCopyWith<_ReportListingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
