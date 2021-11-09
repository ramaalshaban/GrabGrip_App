// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variation_string_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VariationStringValue _$VariationStringValueFromJson(Map<String, dynamic> json) {
  return _VariationStringValue.fromJson(json);
}

/// @nodoc
class _$VariationStringValueTearOff {
  const _$VariationStringValueTearOff();

  _VariationStringValue call(
      {@JsonKey(name: "name") String? attribute,
      @JsonKey(name: "options") String? values}) {
    return _VariationStringValue(
      attribute: attribute,
      values: values,
    );
  }

  VariationStringValue fromJson(Map<String, Object> json) {
    return VariationStringValue.fromJson(json);
  }
}

/// @nodoc
const $VariationStringValue = _$VariationStringValueTearOff();

/// @nodoc
mixin _$VariationStringValue {
  @JsonKey(name: "name")
  String? get attribute => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  String? get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariationStringValueCopyWith<VariationStringValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariationStringValueCopyWith<$Res> {
  factory $VariationStringValueCopyWith(VariationStringValue value,
          $Res Function(VariationStringValue) then) =
      _$VariationStringValueCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") String? attribute,
      @JsonKey(name: "options") String? values});
}

/// @nodoc
class _$VariationStringValueCopyWithImpl<$Res>
    implements $VariationStringValueCopyWith<$Res> {
  _$VariationStringValueCopyWithImpl(this._value, this._then);

  final VariationStringValue _value;
  // ignore: unused_field
  final $Res Function(VariationStringValue) _then;

  @override
  $Res call({
    Object? attribute = freezed,
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as String?,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VariationStringValueCopyWith<$Res>
    implements $VariationStringValueCopyWith<$Res> {
  factory _$VariationStringValueCopyWith(_VariationStringValue value,
          $Res Function(_VariationStringValue) then) =
      __$VariationStringValueCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") String? attribute,
      @JsonKey(name: "options") String? values});
}

/// @nodoc
class __$VariationStringValueCopyWithImpl<$Res>
    extends _$VariationStringValueCopyWithImpl<$Res>
    implements _$VariationStringValueCopyWith<$Res> {
  __$VariationStringValueCopyWithImpl(
      _VariationStringValue _value, $Res Function(_VariationStringValue) _then)
      : super(_value, (v) => _then(v as _VariationStringValue));

  @override
  _VariationStringValue get _value => super._value as _VariationStringValue;

  @override
  $Res call({
    Object? attribute = freezed,
    Object? values = freezed,
  }) {
    return _then(_VariationStringValue(
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as String?,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariationStringValue
    with DiagnosticableTreeMixin
    implements _VariationStringValue {
  const _$_VariationStringValue(
      {@JsonKey(name: "name") this.attribute,
      @JsonKey(name: "options") this.values});

  factory _$_VariationStringValue.fromJson(Map<String, dynamic> json) =>
      _$$_VariationStringValueFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? attribute;
  @override
  @JsonKey(name: "options")
  final String? values;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VariationStringValue(attribute: $attribute, values: $values)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VariationStringValue'))
      ..add(DiagnosticsProperty('attribute', attribute))
      ..add(DiagnosticsProperty('values', values));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VariationStringValue &&
            (identical(other.attribute, attribute) ||
                const DeepCollectionEquality()
                    .equals(other.attribute, attribute)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(attribute) ^
      const DeepCollectionEquality().hash(values);

  @JsonKey(ignore: true)
  @override
  _$VariationStringValueCopyWith<_VariationStringValue> get copyWith =>
      __$VariationStringValueCopyWithImpl<_VariationStringValue>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariationStringValueToJson(this);
  }
}

abstract class _VariationStringValue implements VariationStringValue {
  const factory _VariationStringValue(
      {@JsonKey(name: "name") String? attribute,
      @JsonKey(name: "options") String? values}) = _$_VariationStringValue;

  factory _VariationStringValue.fromJson(Map<String, dynamic> json) =
      _$_VariationStringValue.fromJson;

  @override
  @JsonKey(name: "name")
  String? get attribute => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "options")
  String? get values => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariationStringValueCopyWith<_VariationStringValue> get copyWith =>
      throw _privateConstructorUsedError;
}
