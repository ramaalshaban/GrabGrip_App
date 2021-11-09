// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Variation _$VariationFromJson(Map<String, dynamic> json) {
  return _Variation.fromJson(json);
}

/// @nodoc
class _$VariationTearOff {
  const _$VariationTearOff();

  _Variation call({String? attribute, List<String> values = const []}) {
    return _Variation(
      attribute: attribute,
      values: values,
    );
  }

  Variation fromJson(Map<String, Object> json) {
    return Variation.fromJson(json);
  }
}

/// @nodoc
const $Variation = _$VariationTearOff();

/// @nodoc
mixin _$Variation {
  String? get attribute => throw _privateConstructorUsedError;
  List<String> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariationCopyWith<Variation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariationCopyWith<$Res> {
  factory $VariationCopyWith(Variation value, $Res Function(Variation) then) =
      _$VariationCopyWithImpl<$Res>;
  $Res call({String? attribute, List<String> values});
}

/// @nodoc
class _$VariationCopyWithImpl<$Res> implements $VariationCopyWith<$Res> {
  _$VariationCopyWithImpl(this._value, this._then);

  final Variation _value;
  // ignore: unused_field
  final $Res Function(Variation) _then;

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
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$VariationCopyWith<$Res> implements $VariationCopyWith<$Res> {
  factory _$VariationCopyWith(
          _Variation value, $Res Function(_Variation) then) =
      __$VariationCopyWithImpl<$Res>;
  @override
  $Res call({String? attribute, List<String> values});
}

/// @nodoc
class __$VariationCopyWithImpl<$Res> extends _$VariationCopyWithImpl<$Res>
    implements _$VariationCopyWith<$Res> {
  __$VariationCopyWithImpl(_Variation _value, $Res Function(_Variation) _then)
      : super(_value, (v) => _then(v as _Variation));

  @override
  _Variation get _value => super._value as _Variation;

  @override
  $Res call({
    Object? attribute = freezed,
    Object? values = freezed,
  }) {
    return _then(_Variation(
      attribute: attribute == freezed
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as String?,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Variation with DiagnosticableTreeMixin implements _Variation {
  const _$_Variation({this.attribute, this.values = const []});

  factory _$_Variation.fromJson(Map<String, dynamic> json) =>
      _$$_VariationFromJson(json);

  @override
  final String? attribute;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> values;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Variation(attribute: $attribute, values: $values)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Variation'))
      ..add(DiagnosticsProperty('attribute', attribute))
      ..add(DiagnosticsProperty('values', values));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Variation &&
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
  _$VariationCopyWith<_Variation> get copyWith =>
      __$VariationCopyWithImpl<_Variation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariationToJson(this);
  }
}

abstract class _Variation implements Variation {
  const factory _Variation({String? attribute, List<String> values}) =
      _$_Variation;

  factory _Variation.fromJson(Map<String, dynamic> json) =
      _$_Variation.fromJson;

  @override
  String? get attribute => throw _privateConstructorUsedError;
  @override
  List<String> get values => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VariationCopyWith<_Variation> get copyWith =>
      throw _privateConstructorUsedError;
}
