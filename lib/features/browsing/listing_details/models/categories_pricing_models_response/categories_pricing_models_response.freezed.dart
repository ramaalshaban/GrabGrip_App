// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_pricing_models_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesPricingModelsResponse _$CategoriesPricingModelsResponseFromJson(
    Map<String, dynamic> json) {
  return _CategoriesPricingModelsResponse.fromJson(json);
}

/// @nodoc
class _$CategoriesPricingModelsResponseTearOff {
  const _$CategoriesPricingModelsResponseTearOff();

  _CategoriesPricingModelsResponse call(
      @JsonKey(name: "categories") Map<String, String> categories,
      @JsonKey(name: "pricing_models") Map<String, String> pricingModels) {
    return _CategoriesPricingModelsResponse(
      categories,
      pricingModels,
    );
  }

  CategoriesPricingModelsResponse fromJson(Map<String, Object> json) {
    return CategoriesPricingModelsResponse.fromJson(json);
  }
}

/// @nodoc
const $CategoriesPricingModelsResponse =
    _$CategoriesPricingModelsResponseTearOff();

/// @nodoc
mixin _$CategoriesPricingModelsResponse {
  @JsonKey(name: "categories")
  Map<String, String> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_models")
  Map<String, String> get pricingModels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesPricingModelsResponseCopyWith<CategoriesPricingModelsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesPricingModelsResponseCopyWith<$Res> {
  factory $CategoriesPricingModelsResponseCopyWith(
          CategoriesPricingModelsResponse value,
          $Res Function(CategoriesPricingModelsResponse) then) =
      _$CategoriesPricingModelsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "categories") Map<String, String> categories,
      @JsonKey(name: "pricing_models") Map<String, String> pricingModels});
}

/// @nodoc
class _$CategoriesPricingModelsResponseCopyWithImpl<$Res>
    implements $CategoriesPricingModelsResponseCopyWith<$Res> {
  _$CategoriesPricingModelsResponseCopyWithImpl(this._value, this._then);

  final CategoriesPricingModelsResponse _value;
  // ignore: unused_field
  final $Res Function(CategoriesPricingModelsResponse) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? pricingModels = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      pricingModels: pricingModels == freezed
          ? _value.pricingModels
          : pricingModels // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$CategoriesPricingModelsResponseCopyWith<$Res>
    implements $CategoriesPricingModelsResponseCopyWith<$Res> {
  factory _$CategoriesPricingModelsResponseCopyWith(
          _CategoriesPricingModelsResponse value,
          $Res Function(_CategoriesPricingModelsResponse) then) =
      __$CategoriesPricingModelsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "categories") Map<String, String> categories,
      @JsonKey(name: "pricing_models") Map<String, String> pricingModels});
}

/// @nodoc
class __$CategoriesPricingModelsResponseCopyWithImpl<$Res>
    extends _$CategoriesPricingModelsResponseCopyWithImpl<$Res>
    implements _$CategoriesPricingModelsResponseCopyWith<$Res> {
  __$CategoriesPricingModelsResponseCopyWithImpl(
      _CategoriesPricingModelsResponse _value,
      $Res Function(_CategoriesPricingModelsResponse) _then)
      : super(_value, (v) => _then(v as _CategoriesPricingModelsResponse));

  @override
  _CategoriesPricingModelsResponse get _value =>
      super._value as _CategoriesPricingModelsResponse;

  @override
  $Res call({
    Object? categories = freezed,
    Object? pricingModels = freezed,
  }) {
    return _then(_CategoriesPricingModelsResponse(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      pricingModels == freezed
          ? _value.pricingModels
          : pricingModels // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesPricingModelsResponse
    with DiagnosticableTreeMixin
    implements _CategoriesPricingModelsResponse {
  const _$_CategoriesPricingModelsResponse(
      @JsonKey(name: "categories") this.categories,
      @JsonKey(name: "pricing_models") this.pricingModels);

  factory _$_CategoriesPricingModelsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_CategoriesPricingModelsResponseFromJson(json);

  @override
  @JsonKey(name: "categories")
  final Map<String, String> categories;
  @override
  @JsonKey(name: "pricing_models")
  final Map<String, String> pricingModels;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesPricingModelsResponse(categories: $categories, pricingModels: $pricingModels)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoriesPricingModelsResponse'))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('pricingModels', pricingModels));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoriesPricingModelsResponse &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.pricingModels, pricingModels) ||
                const DeepCollectionEquality()
                    .equals(other.pricingModels, pricingModels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(pricingModels);

  @JsonKey(ignore: true)
  @override
  _$CategoriesPricingModelsResponseCopyWith<_CategoriesPricingModelsResponse>
      get copyWith => __$CategoriesPricingModelsResponseCopyWithImpl<
          _CategoriesPricingModelsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesPricingModelsResponseToJson(this);
  }
}

abstract class _CategoriesPricingModelsResponse
    implements CategoriesPricingModelsResponse {
  const factory _CategoriesPricingModelsResponse(
          @JsonKey(name: "categories") Map<String, String> categories,
          @JsonKey(name: "pricing_models") Map<String, String> pricingModels) =
      _$_CategoriesPricingModelsResponse;

  factory _CategoriesPricingModelsResponse.fromJson(Map<String, dynamic> json) =
      _$_CategoriesPricingModelsResponse.fromJson;

  @override
  @JsonKey(name: "categories")
  Map<String, String> get categories => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_models")
  Map<String, String> get pricingModels => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoriesPricingModelsResponseCopyWith<_CategoriesPricingModelsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
