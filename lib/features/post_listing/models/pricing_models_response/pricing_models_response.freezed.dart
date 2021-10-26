// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pricing_models_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PricingModelsResponse _$PricingModelsResponseFromJson(
    Map<String, dynamic> json) {
  return _PricingModelsResponse.fromJson(json);
}

/// @nodoc
class _$PricingModelsResponseTearOff {
  const _$PricingModelsResponseTearOff();

  _PricingModelsResponse call(
      @JsonKey(name: "selected_category") SelectedCategory selectedCategory) {
    return _PricingModelsResponse(
      selectedCategory,
    );
  }

  PricingModelsResponse fromJson(Map<String, Object> json) {
    return PricingModelsResponse.fromJson(json);
  }
}

/// @nodoc
const $PricingModelsResponse = _$PricingModelsResponseTearOff();

/// @nodoc
mixin _$PricingModelsResponse {
  @JsonKey(name: "selected_category")
  SelectedCategory get selectedCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingModelsResponseCopyWith<PricingModelsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingModelsResponseCopyWith<$Res> {
  factory $PricingModelsResponseCopyWith(PricingModelsResponse value,
          $Res Function(PricingModelsResponse) then) =
      _$PricingModelsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "selected_category") SelectedCategory selectedCategory});

  $SelectedCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class _$PricingModelsResponseCopyWithImpl<$Res>
    implements $PricingModelsResponseCopyWith<$Res> {
  _$PricingModelsResponseCopyWithImpl(this._value, this._then);

  final PricingModelsResponse _value;
  // ignore: unused_field
  final $Res Function(PricingModelsResponse) _then;

  @override
  $Res call({
    Object? selectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as SelectedCategory,
    ));
  }

  @override
  $SelectedCategoryCopyWith<$Res> get selectedCategory {
    return $SelectedCategoryCopyWith<$Res>(_value.selectedCategory, (value) {
      return _then(_value.copyWith(selectedCategory: value));
    });
  }
}

/// @nodoc
abstract class _$PricingModelsResponseCopyWith<$Res>
    implements $PricingModelsResponseCopyWith<$Res> {
  factory _$PricingModelsResponseCopyWith(_PricingModelsResponse value,
          $Res Function(_PricingModelsResponse) then) =
      __$PricingModelsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "selected_category") SelectedCategory selectedCategory});

  @override
  $SelectedCategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$PricingModelsResponseCopyWithImpl<$Res>
    extends _$PricingModelsResponseCopyWithImpl<$Res>
    implements _$PricingModelsResponseCopyWith<$Res> {
  __$PricingModelsResponseCopyWithImpl(_PricingModelsResponse _value,
      $Res Function(_PricingModelsResponse) _then)
      : super(_value, (v) => _then(v as _PricingModelsResponse));

  @override
  _PricingModelsResponse get _value => super._value as _PricingModelsResponse;

  @override
  $Res call({
    Object? selectedCategory = freezed,
  }) {
    return _then(_PricingModelsResponse(
      selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as SelectedCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PricingModelsResponse
    with DiagnosticableTreeMixin
    implements _PricingModelsResponse {
  const _$_PricingModelsResponse(
      @JsonKey(name: "selected_category") this.selectedCategory);

  factory _$_PricingModelsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PricingModelsResponseFromJson(json);

  @override
  @JsonKey(name: "selected_category")
  final SelectedCategory selectedCategory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PricingModelsResponse(selectedCategory: $selectedCategory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PricingModelsResponse'))
      ..add(DiagnosticsProperty('selectedCategory', selectedCategory));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PricingModelsResponse &&
            (identical(other.selectedCategory, selectedCategory) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCategory, selectedCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedCategory);

  @JsonKey(ignore: true)
  @override
  _$PricingModelsResponseCopyWith<_PricingModelsResponse> get copyWith =>
      __$PricingModelsResponseCopyWithImpl<_PricingModelsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricingModelsResponseToJson(this);
  }
}

abstract class _PricingModelsResponse implements PricingModelsResponse {
  const factory _PricingModelsResponse(
      @JsonKey(name: "selected_category")
          SelectedCategory selectedCategory) = _$_PricingModelsResponse;

  factory _PricingModelsResponse.fromJson(Map<String, dynamic> json) =
      _$_PricingModelsResponse.fromJson;

  @override
  @JsonKey(name: "selected_category")
  SelectedCategory get selectedCategory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PricingModelsResponseCopyWith<_PricingModelsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
