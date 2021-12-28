// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_reasons_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportReasonsResponse _$ReportReasonsResponseFromJson(
    Map<String, dynamic> json) {
  return _ReportReasonsResponse.fromJson(json);
}

/// @nodoc
class _$ReportReasonsResponseTearOff {
  const _$ReportReasonsResponseTearOff();

  _ReportReasonsResponse call(
      @JsonKey(name: "report_types") List<ReportReason> reportReasons) {
    return _ReportReasonsResponse(
      reportReasons,
    );
  }

  ReportReasonsResponse fromJson(Map<String, Object> json) {
    return ReportReasonsResponse.fromJson(json);
  }
}

/// @nodoc
const $ReportReasonsResponse = _$ReportReasonsResponseTearOff();

/// @nodoc
mixin _$ReportReasonsResponse {
  @JsonKey(name: "report_types")
  List<ReportReason> get reportReasons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportReasonsResponseCopyWith<ReportReasonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportReasonsResponseCopyWith<$Res> {
  factory $ReportReasonsResponseCopyWith(ReportReasonsResponse value,
          $Res Function(ReportReasonsResponse) then) =
      _$ReportReasonsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "report_types") List<ReportReason> reportReasons});
}

/// @nodoc
class _$ReportReasonsResponseCopyWithImpl<$Res>
    implements $ReportReasonsResponseCopyWith<$Res> {
  _$ReportReasonsResponseCopyWithImpl(this._value, this._then);

  final ReportReasonsResponse _value;
  // ignore: unused_field
  final $Res Function(ReportReasonsResponse) _then;

  @override
  $Res call({
    Object? reportReasons = freezed,
  }) {
    return _then(_value.copyWith(
      reportReasons: reportReasons == freezed
          ? _value.reportReasons
          : reportReasons // ignore: cast_nullable_to_non_nullable
              as List<ReportReason>,
    ));
  }
}

/// @nodoc
abstract class _$ReportReasonsResponseCopyWith<$Res>
    implements $ReportReasonsResponseCopyWith<$Res> {
  factory _$ReportReasonsResponseCopyWith(_ReportReasonsResponse value,
          $Res Function(_ReportReasonsResponse) then) =
      __$ReportReasonsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "report_types") List<ReportReason> reportReasons});
}

/// @nodoc
class __$ReportReasonsResponseCopyWithImpl<$Res>
    extends _$ReportReasonsResponseCopyWithImpl<$Res>
    implements _$ReportReasonsResponseCopyWith<$Res> {
  __$ReportReasonsResponseCopyWithImpl(_ReportReasonsResponse _value,
      $Res Function(_ReportReasonsResponse) _then)
      : super(_value, (v) => _then(v as _ReportReasonsResponse));

  @override
  _ReportReasonsResponse get _value => super._value as _ReportReasonsResponse;

  @override
  $Res call({
    Object? reportReasons = freezed,
  }) {
    return _then(_ReportReasonsResponse(
      reportReasons == freezed
          ? _value.reportReasons
          : reportReasons // ignore: cast_nullable_to_non_nullable
              as List<ReportReason>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportReasonsResponse
    with DiagnosticableTreeMixin
    implements _ReportReasonsResponse {
  const _$_ReportReasonsResponse(
      @JsonKey(name: "report_types") this.reportReasons);

  factory _$_ReportReasonsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ReportReasonsResponseFromJson(json);

  @override
  @JsonKey(name: "report_types")
  final List<ReportReason> reportReasons;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportReasonsResponse(reportReasons: $reportReasons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportReasonsResponse'))
      ..add(DiagnosticsProperty('reportReasons', reportReasons));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportReasonsResponse &&
            (identical(other.reportReasons, reportReasons) ||
                const DeepCollectionEquality()
                    .equals(other.reportReasons, reportReasons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reportReasons);

  @JsonKey(ignore: true)
  @override
  _$ReportReasonsResponseCopyWith<_ReportReasonsResponse> get copyWith =>
      __$ReportReasonsResponseCopyWithImpl<_ReportReasonsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportReasonsResponseToJson(this);
  }
}

abstract class _ReportReasonsResponse implements ReportReasonsResponse {
  const factory _ReportReasonsResponse(
          @JsonKey(name: "report_types") List<ReportReason> reportReasons) =
      _$_ReportReasonsResponse;

  factory _ReportReasonsResponse.fromJson(Map<String, dynamic> json) =
      _$_ReportReasonsResponse.fromJson;

  @override
  @JsonKey(name: "report_types")
  List<ReportReason> get reportReasons => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportReasonsResponseCopyWith<_ReportReasonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
