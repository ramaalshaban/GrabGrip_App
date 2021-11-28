// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listing_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListingDetailsStateTearOff {
  const _$ListingDetailsStateTearOff();

  _ListingDetailsState call(
      [ListingCategory? category,
      PricingModel? pricingModel,
      int selectedQuantity = 1,
      List<AdditionalOption> additionalOptions = const [],
      List<ShippingFee> shippingOptions = const [],
      Map<String, List<String>> variantOptions = const {},
      Map<int, int> selectedAdditionalOptions = const {},
      Map<int, Map<String, int>> selectedAdditionalOptionsMeta = const {},
      int? selectedShippingOptionId,
      Map<String, String> selectedVariantOptions = const {},
      String? startDate,
      String? endDate]) {
    return _ListingDetailsState(
      category,
      pricingModel,
      selectedQuantity,
      additionalOptions,
      shippingOptions,
      variantOptions,
      selectedAdditionalOptions,
      selectedAdditionalOptionsMeta,
      selectedShippingOptionId,
      selectedVariantOptions,
      startDate,
      endDate,
    );
  }
}

/// @nodoc
const $ListingDetailsState = _$ListingDetailsStateTearOff();

/// @nodoc
mixin _$ListingDetailsState {
  ListingCategory? get category => throw _privateConstructorUsedError;
  PricingModel? get pricingModel => throw _privateConstructorUsedError;
  int get selectedQuantity => throw _privateConstructorUsedError;
  List<AdditionalOption> get additionalOptions =>
      throw _privateConstructorUsedError;
  List<ShippingFee> get shippingOptions => throw _privateConstructorUsedError;
  Map<String, List<String>> get variantOptions =>
      throw _privateConstructorUsedError;
  Map<int, int> get selectedAdditionalOptions =>
      throw _privateConstructorUsedError;
  Map<int, Map<String, int>> get selectedAdditionalOptionsMeta =>
      throw _privateConstructorUsedError;
  int? get selectedShippingOptionId => throw _privateConstructorUsedError;
  Map<String, String> get selectedVariantOptions =>
      throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListingDetailsStateCopyWith<ListingDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingDetailsStateCopyWith<$Res> {
  factory $ListingDetailsStateCopyWith(
          ListingDetailsState value, $Res Function(ListingDetailsState) then) =
      _$ListingDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {ListingCategory? category,
      PricingModel? pricingModel,
      int selectedQuantity,
      List<AdditionalOption> additionalOptions,
      List<ShippingFee> shippingOptions,
      Map<String, List<String>> variantOptions,
      Map<int, int> selectedAdditionalOptions,
      Map<int, Map<String, int>> selectedAdditionalOptionsMeta,
      int? selectedShippingOptionId,
      Map<String, String> selectedVariantOptions,
      String? startDate,
      String? endDate});

  $ListingCategoryCopyWith<$Res>? get category;
  $PricingModelCopyWith<$Res>? get pricingModel;
}

/// @nodoc
class _$ListingDetailsStateCopyWithImpl<$Res>
    implements $ListingDetailsStateCopyWith<$Res> {
  _$ListingDetailsStateCopyWithImpl(this._value, this._then);

  final ListingDetailsState _value;
  // ignore: unused_field
  final $Res Function(ListingDetailsState) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? pricingModel = freezed,
    Object? selectedQuantity = freezed,
    Object? additionalOptions = freezed,
    Object? shippingOptions = freezed,
    Object? variantOptions = freezed,
    Object? selectedAdditionalOptions = freezed,
    Object? selectedAdditionalOptionsMeta = freezed,
    Object? selectedShippingOptionId = freezed,
    Object? selectedVariantOptions = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ListingCategory?,
      pricingModel: pricingModel == freezed
          ? _value.pricingModel
          : pricingModel // ignore: cast_nullable_to_non_nullable
              as PricingModel?,
      selectedQuantity: selectedQuantity == freezed
          ? _value.selectedQuantity
          : selectedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      additionalOptions: additionalOptions == freezed
          ? _value.additionalOptions
          : additionalOptions // ignore: cast_nullable_to_non_nullable
              as List<AdditionalOption>,
      shippingOptions: shippingOptions == freezed
          ? _value.shippingOptions
          : shippingOptions // ignore: cast_nullable_to_non_nullable
              as List<ShippingFee>,
      variantOptions: variantOptions == freezed
          ? _value.variantOptions
          : variantOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      selectedAdditionalOptions: selectedAdditionalOptions == freezed
          ? _value.selectedAdditionalOptions
          : selectedAdditionalOptions // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      selectedAdditionalOptionsMeta: selectedAdditionalOptionsMeta == freezed
          ? _value.selectedAdditionalOptionsMeta
          : selectedAdditionalOptionsMeta // ignore: cast_nullable_to_non_nullable
              as Map<int, Map<String, int>>,
      selectedShippingOptionId: selectedShippingOptionId == freezed
          ? _value.selectedShippingOptionId
          : selectedShippingOptionId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedVariantOptions: selectedVariantOptions == freezed
          ? _value.selectedVariantOptions
          : selectedVariantOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
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

  @override
  $ListingCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ListingCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $PricingModelCopyWith<$Res>? get pricingModel {
    if (_value.pricingModel == null) {
      return null;
    }

    return $PricingModelCopyWith<$Res>(_value.pricingModel!, (value) {
      return _then(_value.copyWith(pricingModel: value));
    });
  }
}

/// @nodoc
abstract class _$ListingDetailsStateCopyWith<$Res>
    implements $ListingDetailsStateCopyWith<$Res> {
  factory _$ListingDetailsStateCopyWith(_ListingDetailsState value,
          $Res Function(_ListingDetailsState) then) =
      __$ListingDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ListingCategory? category,
      PricingModel? pricingModel,
      int selectedQuantity,
      List<AdditionalOption> additionalOptions,
      List<ShippingFee> shippingOptions,
      Map<String, List<String>> variantOptions,
      Map<int, int> selectedAdditionalOptions,
      Map<int, Map<String, int>> selectedAdditionalOptionsMeta,
      int? selectedShippingOptionId,
      Map<String, String> selectedVariantOptions,
      String? startDate,
      String? endDate});

  @override
  $ListingCategoryCopyWith<$Res>? get category;
  @override
  $PricingModelCopyWith<$Res>? get pricingModel;
}

/// @nodoc
class __$ListingDetailsStateCopyWithImpl<$Res>
    extends _$ListingDetailsStateCopyWithImpl<$Res>
    implements _$ListingDetailsStateCopyWith<$Res> {
  __$ListingDetailsStateCopyWithImpl(
      _ListingDetailsState _value, $Res Function(_ListingDetailsState) _then)
      : super(_value, (v) => _then(v as _ListingDetailsState));

  @override
  _ListingDetailsState get _value => super._value as _ListingDetailsState;

  @override
  $Res call({
    Object? category = freezed,
    Object? pricingModel = freezed,
    Object? selectedQuantity = freezed,
    Object? additionalOptions = freezed,
    Object? shippingOptions = freezed,
    Object? variantOptions = freezed,
    Object? selectedAdditionalOptions = freezed,
    Object? selectedAdditionalOptionsMeta = freezed,
    Object? selectedShippingOptionId = freezed,
    Object? selectedVariantOptions = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_ListingDetailsState(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ListingCategory?,
      pricingModel == freezed
          ? _value.pricingModel
          : pricingModel // ignore: cast_nullable_to_non_nullable
              as PricingModel?,
      selectedQuantity == freezed
          ? _value.selectedQuantity
          : selectedQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      additionalOptions == freezed
          ? _value.additionalOptions
          : additionalOptions // ignore: cast_nullable_to_non_nullable
              as List<AdditionalOption>,
      shippingOptions == freezed
          ? _value.shippingOptions
          : shippingOptions // ignore: cast_nullable_to_non_nullable
              as List<ShippingFee>,
      variantOptions == freezed
          ? _value.variantOptions
          : variantOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      selectedAdditionalOptions == freezed
          ? _value.selectedAdditionalOptions
          : selectedAdditionalOptions // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      selectedAdditionalOptionsMeta == freezed
          ? _value.selectedAdditionalOptionsMeta
          : selectedAdditionalOptionsMeta // ignore: cast_nullable_to_non_nullable
              as Map<int, Map<String, int>>,
      selectedShippingOptionId == freezed
          ? _value.selectedShippingOptionId
          : selectedShippingOptionId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedVariantOptions == freezed
          ? _value.selectedVariantOptions
          : selectedVariantOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
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

class _$_ListingDetailsState
    with DiagnosticableTreeMixin
    implements _ListingDetailsState {
  const _$_ListingDetailsState(
      [this.category,
      this.pricingModel,
      this.selectedQuantity = 1,
      this.additionalOptions = const [],
      this.shippingOptions = const [],
      this.variantOptions = const {},
      this.selectedAdditionalOptions = const {},
      this.selectedAdditionalOptionsMeta = const {},
      this.selectedShippingOptionId,
      this.selectedVariantOptions = const {},
      this.startDate,
      this.endDate]);

  @override
  final ListingCategory? category;
  @override
  final PricingModel? pricingModel;
  @JsonKey(defaultValue: 1)
  @override
  final int selectedQuantity;
  @JsonKey(defaultValue: const [])
  @override
  final List<AdditionalOption> additionalOptions;
  @JsonKey(defaultValue: const [])
  @override
  final List<ShippingFee> shippingOptions;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, List<String>> variantOptions;
  @JsonKey(defaultValue: const {})
  @override
  final Map<int, int> selectedAdditionalOptions;
  @JsonKey(defaultValue: const {})
  @override
  final Map<int, Map<String, int>> selectedAdditionalOptionsMeta;
  @override
  final int? selectedShippingOptionId;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> selectedVariantOptions;
  @override
  final String? startDate;
  @override
  final String? endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListingDetailsState(category: $category, pricingModel: $pricingModel, selectedQuantity: $selectedQuantity, additionalOptions: $additionalOptions, shippingOptions: $shippingOptions, variantOptions: $variantOptions, selectedAdditionalOptions: $selectedAdditionalOptions, selectedAdditionalOptionsMeta: $selectedAdditionalOptionsMeta, selectedShippingOptionId: $selectedShippingOptionId, selectedVariantOptions: $selectedVariantOptions, startDate: $startDate, endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListingDetailsState'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('pricingModel', pricingModel))
      ..add(DiagnosticsProperty('selectedQuantity', selectedQuantity))
      ..add(DiagnosticsProperty('additionalOptions', additionalOptions))
      ..add(DiagnosticsProperty('shippingOptions', shippingOptions))
      ..add(DiagnosticsProperty('variantOptions', variantOptions))
      ..add(DiagnosticsProperty(
          'selectedAdditionalOptions', selectedAdditionalOptions))
      ..add(DiagnosticsProperty(
          'selectedAdditionalOptionsMeta', selectedAdditionalOptionsMeta))
      ..add(DiagnosticsProperty(
          'selectedShippingOptionId', selectedShippingOptionId))
      ..add(
          DiagnosticsProperty('selectedVariantOptions', selectedVariantOptions))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListingDetailsState &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.pricingModel, pricingModel) ||
                const DeepCollectionEquality()
                    .equals(other.pricingModel, pricingModel)) &&
            (identical(other.selectedQuantity, selectedQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.selectedQuantity, selectedQuantity)) &&
            (identical(other.additionalOptions, additionalOptions) ||
                const DeepCollectionEquality()
                    .equals(other.additionalOptions, additionalOptions)) &&
            (identical(other.shippingOptions, shippingOptions) ||
                const DeepCollectionEquality()
                    .equals(other.shippingOptions, shippingOptions)) &&
            (identical(other.variantOptions, variantOptions) ||
                const DeepCollectionEquality()
                    .equals(other.variantOptions, variantOptions)) &&
            (identical(other.selectedAdditionalOptions,
                    selectedAdditionalOptions) ||
                const DeepCollectionEquality().equals(
                    other.selectedAdditionalOptions,
                    selectedAdditionalOptions)) &&
            (identical(other.selectedAdditionalOptionsMeta,
                    selectedAdditionalOptionsMeta) ||
                const DeepCollectionEquality().equals(
                    other.selectedAdditionalOptionsMeta,
                    selectedAdditionalOptionsMeta)) &&
            (identical(other.selectedShippingOptionId, selectedShippingOptionId) ||
                const DeepCollectionEquality().equals(
                    other.selectedShippingOptionId,
                    selectedShippingOptionId)) &&
            (identical(other.selectedVariantOptions, selectedVariantOptions) ||
                const DeepCollectionEquality().equals(
                    other.selectedVariantOptions, selectedVariantOptions)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(pricingModel) ^
      const DeepCollectionEquality().hash(selectedQuantity) ^
      const DeepCollectionEquality().hash(additionalOptions) ^
      const DeepCollectionEquality().hash(shippingOptions) ^
      const DeepCollectionEquality().hash(variantOptions) ^
      const DeepCollectionEquality().hash(selectedAdditionalOptions) ^
      const DeepCollectionEquality().hash(selectedAdditionalOptionsMeta) ^
      const DeepCollectionEquality().hash(selectedShippingOptionId) ^
      const DeepCollectionEquality().hash(selectedVariantOptions) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate);

  @JsonKey(ignore: true)
  @override
  _$ListingDetailsStateCopyWith<_ListingDetailsState> get copyWith =>
      __$ListingDetailsStateCopyWithImpl<_ListingDetailsState>(
          this, _$identity);
}

abstract class _ListingDetailsState implements ListingDetailsState {
  const factory _ListingDetailsState(
      [ListingCategory? category,
      PricingModel? pricingModel,
      int selectedQuantity,
      List<AdditionalOption> additionalOptions,
      List<ShippingFee> shippingOptions,
      Map<String, List<String>> variantOptions,
      Map<int, int> selectedAdditionalOptions,
      Map<int, Map<String, int>> selectedAdditionalOptionsMeta,
      int? selectedShippingOptionId,
      Map<String, String> selectedVariantOptions,
      String? startDate,
      String? endDate]) = _$_ListingDetailsState;

  @override
  ListingCategory? get category => throw _privateConstructorUsedError;
  @override
  PricingModel? get pricingModel => throw _privateConstructorUsedError;
  @override
  int get selectedQuantity => throw _privateConstructorUsedError;
  @override
  List<AdditionalOption> get additionalOptions =>
      throw _privateConstructorUsedError;
  @override
  List<ShippingFee> get shippingOptions => throw _privateConstructorUsedError;
  @override
  Map<String, List<String>> get variantOptions =>
      throw _privateConstructorUsedError;
  @override
  Map<int, int> get selectedAdditionalOptions =>
      throw _privateConstructorUsedError;
  @override
  Map<int, Map<String, int>> get selectedAdditionalOptionsMeta =>
      throw _privateConstructorUsedError;
  @override
  int? get selectedShippingOptionId => throw _privateConstructorUsedError;
  @override
  Map<String, String> get selectedVariantOptions =>
      throw _privateConstructorUsedError;
  @override
  String? get startDate => throw _privateConstructorUsedError;
  @override
  String? get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingDetailsStateCopyWith<_ListingDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
