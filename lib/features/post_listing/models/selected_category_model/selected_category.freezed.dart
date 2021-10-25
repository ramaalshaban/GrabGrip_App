// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selected_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectedCategory _$SelectedCategoryFromJson(Map<String, dynamic> json) {
  return _SelectedCategory.fromJson(json);
}

/// @nodoc
class _$SelectedCategoryTearOff {
  const _$SelectedCategoryTearOff();

  _SelectedCategory call(
      @JsonKey(name: "pricing_models") List<PricingModel> pricingModels) {
    return _SelectedCategory(
      pricingModels,
    );
  }

  SelectedCategory fromJson(Map<String, Object> json) {
    return SelectedCategory.fromJson(json);
  }
}

/// @nodoc
const $SelectedCategory = _$SelectedCategoryTearOff();

/// @nodoc
mixin _$SelectedCategory {
  @JsonKey(name: "pricing_models")
  List<PricingModel> get pricingModels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedCategoryCopyWith<SelectedCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedCategoryCopyWith<$Res> {
  factory $SelectedCategoryCopyWith(
          SelectedCategory value, $Res Function(SelectedCategory) then) =
      _$SelectedCategoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "pricing_models") List<PricingModel> pricingModels});
}

/// @nodoc
class _$SelectedCategoryCopyWithImpl<$Res>
    implements $SelectedCategoryCopyWith<$Res> {
  _$SelectedCategoryCopyWithImpl(this._value, this._then);

  final SelectedCategory _value;
  // ignore: unused_field
  final $Res Function(SelectedCategory) _then;

  @override
  $Res call({
    Object? pricingModels = freezed,
  }) {
    return _then(_value.copyWith(
      pricingModels: pricingModels == freezed
          ? _value.pricingModels
          : pricingModels // ignore: cast_nullable_to_non_nullable
              as List<PricingModel>,
    ));
  }
}

/// @nodoc
abstract class _$SelectedCategoryCopyWith<$Res>
    implements $SelectedCategoryCopyWith<$Res> {
  factory _$SelectedCategoryCopyWith(
          _SelectedCategory value, $Res Function(_SelectedCategory) then) =
      __$SelectedCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "pricing_models") List<PricingModel> pricingModels});
}

/// @nodoc
class __$SelectedCategoryCopyWithImpl<$Res>
    extends _$SelectedCategoryCopyWithImpl<$Res>
    implements _$SelectedCategoryCopyWith<$Res> {
  __$SelectedCategoryCopyWithImpl(
      _SelectedCategory _value, $Res Function(_SelectedCategory) _then)
      : super(_value, (v) => _then(v as _SelectedCategory));

  @override
  _SelectedCategory get _value => super._value as _SelectedCategory;

  @override
  $Res call({
    Object? pricingModels = freezed,
  }) {
    return _then(_SelectedCategory(
      pricingModels == freezed
          ? _value.pricingModels
          : pricingModels // ignore: cast_nullable_to_non_nullable
              as List<PricingModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectedCategory
    with DiagnosticableTreeMixin
    implements _SelectedCategory {
  const _$_SelectedCategory(
      @JsonKey(name: "pricing_models") this.pricingModels);

  factory _$_SelectedCategory.fromJson(Map<String, dynamic> json) =>
      _$$_SelectedCategoryFromJson(json);

  @override
  @JsonKey(name: "pricing_models")
  final List<PricingModel> pricingModels;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectedCategory(pricingModels: $pricingModels)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelectedCategory'))
      ..add(DiagnosticsProperty('pricingModels', pricingModels));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedCategory &&
            (identical(other.pricingModels, pricingModels) ||
                const DeepCollectionEquality()
                    .equals(other.pricingModels, pricingModels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pricingModels);

  @JsonKey(ignore: true)
  @override
  _$SelectedCategoryCopyWith<_SelectedCategory> get copyWith =>
      __$SelectedCategoryCopyWithImpl<_SelectedCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectedCategoryToJson(this);
  }
}

abstract class _SelectedCategory implements SelectedCategory {
  const factory _SelectedCategory(
          @JsonKey(name: "pricing_models") List<PricingModel> pricingModels) =
      _$_SelectedCategory;

  factory _SelectedCategory.fromJson(Map<String, dynamic> json) =
      _$_SelectedCategory.fromJson;

  @override
  @JsonKey(name: "pricing_models")
  List<PricingModel> get pricingModels => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedCategoryCopyWith<_SelectedCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
