// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseWidget _$ResponseWidgetFromJson(Map<String, dynamic> json) {
  return _ResponseWidget.fromJson(json);
}

/// @nodoc
class _$ResponseWidgetTearOff {
  const _$ResponseWidgetTearOff();

  _ResponseWidget call(
      double total,
      String? error,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate) {
    return _ResponseWidget(
      total,
      error,
      startDate,
      endDate,
    );
  }

  ResponseWidget fromJson(Map<String, Object> json) {
    return ResponseWidget.fromJson(json);
  }
}

/// @nodoc
const $ResponseWidget = _$ResponseWidgetTearOff();

/// @nodoc
mixin _$ResponseWidget {
  double get total => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseWidgetCopyWith<ResponseWidget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseWidgetCopyWith<$Res> {
  factory $ResponseWidgetCopyWith(
          ResponseWidget value, $Res Function(ResponseWidget) then) =
      _$ResponseWidgetCopyWithImpl<$Res>;
  $Res call(
      {double total,
      String? error,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate});
}

/// @nodoc
class _$ResponseWidgetCopyWithImpl<$Res>
    implements $ResponseWidgetCopyWith<$Res> {
  _$ResponseWidgetCopyWithImpl(this._value, this._then);

  final ResponseWidget _value;
  // ignore: unused_field
  final $Res Function(ResponseWidget) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? error = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ResponseWidgetCopyWith<$Res>
    implements $ResponseWidgetCopyWith<$Res> {
  factory _$ResponseWidgetCopyWith(
          _ResponseWidget value, $Res Function(_ResponseWidget) then) =
      __$ResponseWidgetCopyWithImpl<$Res>;
  @override
  $Res call(
      {double total,
      String? error,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate});
}

/// @nodoc
class __$ResponseWidgetCopyWithImpl<$Res>
    extends _$ResponseWidgetCopyWithImpl<$Res>
    implements _$ResponseWidgetCopyWith<$Res> {
  __$ResponseWidgetCopyWithImpl(
      _ResponseWidget _value, $Res Function(_ResponseWidget) _then)
      : super(_value, (v) => _then(v as _ResponseWidget));

  @override
  _ResponseWidget get _value => super._value as _ResponseWidget;

  @override
  $Res call({
    Object? total = freezed,
    Object? error = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_ResponseWidget(
      total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseWidget
    with DiagnosticableTreeMixin
    implements _ResponseWidget {
  const _$_ResponseWidget(
      this.total,
      this.error,
      @JsonKey(name: "start_date") this.startDate,
      @JsonKey(name: "end_date") this.endDate);

  factory _$_ResponseWidget.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseWidgetFromJson(json);

  @override
  final double total;
  @override
  final String? error;
  @override
  @JsonKey(name: "start_date")
  final String? startDate;
  @override
  @JsonKey(name: "end_date")
  final String? endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseWidget(total: $total, error: $error, startDate: $startDate, endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseWidget'))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseWidget &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate);

  @JsonKey(ignore: true)
  @override
  _$ResponseWidgetCopyWith<_ResponseWidget> get copyWith =>
      __$ResponseWidgetCopyWithImpl<_ResponseWidget>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseWidgetToJson(this);
  }
}

abstract class _ResponseWidget implements ResponseWidget {
  const factory _ResponseWidget(
      double total,
      String? error,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate) = _$_ResponseWidget;

  factory _ResponseWidget.fromJson(Map<String, dynamic> json) =
      _$_ResponseWidget.fromJson;

  @override
  double get total => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "start_date")
  String? get startDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "end_date")
  String? get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResponseWidgetCopyWith<_ResponseWidget> get copyWith =>
      throw _privateConstructorUsedError;
}
