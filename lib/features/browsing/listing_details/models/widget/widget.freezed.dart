// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Widget _$WidgetFromJson(Map<String, dynamic> json) {
  return _Widget.fromJson(json);
}

/// @nodoc
class _$WidgetTearOff {
  const _$WidgetTearOff();

  _Widget call(
      int total,
      dynamic error,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate) {
    return _Widget(
      total,
      error,
      startDate,
      endDate,
    );
  }

  Widget fromJson(Map<String, Object> json) {
    return Widget.fromJson(json);
  }
}

/// @nodoc
const $Widget = _$WidgetTearOff();

/// @nodoc
mixin _$Widget {
  int get total => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WidgetCopyWith<Widget> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetCopyWith<$Res> {
  factory $WidgetCopyWith(Widget value, $Res Function(Widget) then) =
      _$WidgetCopyWithImpl<$Res>;
  $Res call(
      {int total,
      dynamic error,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate});
}

/// @nodoc
class _$WidgetCopyWithImpl<$Res> implements $WidgetCopyWith<$Res> {
  _$WidgetCopyWithImpl(this._value, this._then);

  final Widget _value;
  // ignore: unused_field
  final $Res Function(Widget) _then;

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
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$WidgetCopyWith<$Res> implements $WidgetCopyWith<$Res> {
  factory _$WidgetCopyWith(_Widget value, $Res Function(_Widget) then) =
      __$WidgetCopyWithImpl<$Res>;
  @override
  $Res call(
      {int total,
      dynamic error,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate});
}

/// @nodoc
class __$WidgetCopyWithImpl<$Res> extends _$WidgetCopyWithImpl<$Res>
    implements _$WidgetCopyWith<$Res> {
  __$WidgetCopyWithImpl(_Widget _value, $Res Function(_Widget) _then)
      : super(_value, (v) => _then(v as _Widget));

  @override
  _Widget get _value => super._value as _Widget;

  @override
  $Res call({
    Object? total = freezed,
    Object? error = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_Widget(
      total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$_Widget with DiagnosticableTreeMixin implements _Widget {
  const _$_Widget(
      this.total,
      this.error,
      @JsonKey(name: "start_date") this.startDate,
      @JsonKey(name: "end_date") this.endDate);

  factory _$_Widget.fromJson(Map<String, dynamic> json) =>
      _$$_WidgetFromJson(json);

  @override
  final int total;
  @override
  final dynamic error;
  @override
  @JsonKey(name: "start_date")
  final String? startDate;
  @override
  @JsonKey(name: "end_date")
  final String? endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Widget(total: $total, error: $error, startDate: $startDate, endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Widget'))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Widget &&
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
  _$WidgetCopyWith<_Widget> get copyWith =>
      __$WidgetCopyWithImpl<_Widget>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WidgetToJson(this);
  }
}

abstract class _Widget implements Widget {
  const factory _Widget(
      int total,
      dynamic error,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate) = _$_Widget;

  factory _Widget.fromJson(Map<String, dynamic> json) = _$_Widget.fromJson;

  @override
  int get total => throw _privateConstructorUsedError;
  @override
  dynamic get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "start_date")
  String? get startDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "end_date")
  String? get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WidgetCopyWith<_Widget> get copyWith => throw _privateConstructorUsedError;
}
