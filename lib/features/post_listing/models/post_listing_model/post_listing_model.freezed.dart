// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostListingModelTearOff {
  const _$PostListingModelTearOff();

  _PostListingModel call(
      [Category? category,
      Category? subcategory,
      int? listingTypeId,
      List<PricingModel> pricingModels = const []]) {
    return _PostListingModel(
      category,
      subcategory,
      listingTypeId,
      pricingModels,
    );
  }
}

/// @nodoc
const $PostListingModel = _$PostListingModelTearOff();

/// @nodoc
mixin _$PostListingModel {
  Category? get category => throw _privateConstructorUsedError;
  Category? get subcategory => throw _privateConstructorUsedError;
  int? get listingTypeId => throw _privateConstructorUsedError;
  List<PricingModel> get pricingModels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostListingModelCopyWith<PostListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListingModelCopyWith<$Res> {
  factory $PostListingModelCopyWith(
          PostListingModel value, $Res Function(PostListingModel) then) =
      _$PostListingModelCopyWithImpl<$Res>;
  $Res call(
      {Category? category,
      Category? subcategory,
      int? listingTypeId,
      List<PricingModel> pricingModels});

  $CategoryCopyWith<$Res>? get category;
  $CategoryCopyWith<$Res>? get subcategory;
}

/// @nodoc
class _$PostListingModelCopyWithImpl<$Res>
    implements $PostListingModelCopyWith<$Res> {
  _$PostListingModelCopyWithImpl(this._value, this._then);

  final PostListingModel _value;
  // ignore: unused_field
  final $Res Function(PostListingModel) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? subcategory = freezed,
    Object? listingTypeId = freezed,
    Object? pricingModels = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      subcategory: subcategory == freezed
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      listingTypeId: listingTypeId == freezed
          ? _value.listingTypeId
          : listingTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingModels: pricingModels == freezed
          ? _value.pricingModels
          : pricingModels // ignore: cast_nullable_to_non_nullable
              as List<PricingModel>,
    ));
  }

  @override
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $CategoryCopyWith<$Res>? get subcategory {
    if (_value.subcategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.subcategory!, (value) {
      return _then(_value.copyWith(subcategory: value));
    });
  }
}

/// @nodoc
abstract class _$PostListingModelCopyWith<$Res>
    implements $PostListingModelCopyWith<$Res> {
  factory _$PostListingModelCopyWith(
          _PostListingModel value, $Res Function(_PostListingModel) then) =
      __$PostListingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {Category? category,
      Category? subcategory,
      int? listingTypeId,
      List<PricingModel> pricingModels});

  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $CategoryCopyWith<$Res>? get subcategory;
}

/// @nodoc
class __$PostListingModelCopyWithImpl<$Res>
    extends _$PostListingModelCopyWithImpl<$Res>
    implements _$PostListingModelCopyWith<$Res> {
  __$PostListingModelCopyWithImpl(
      _PostListingModel _value, $Res Function(_PostListingModel) _then)
      : super(_value, (v) => _then(v as _PostListingModel));

  @override
  _PostListingModel get _value => super._value as _PostListingModel;

  @override
  $Res call({
    Object? category = freezed,
    Object? subcategory = freezed,
    Object? listingTypeId = freezed,
    Object? pricingModels = freezed,
  }) {
    return _then(_PostListingModel(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      subcategory == freezed
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      listingTypeId == freezed
          ? _value.listingTypeId
          : listingTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingModels == freezed
          ? _value.pricingModels
          : pricingModels // ignore: cast_nullable_to_non_nullable
              as List<PricingModel>,
    ));
  }
}

/// @nodoc

class _$_PostListingModel
    with DiagnosticableTreeMixin
    implements _PostListingModel {
  const _$_PostListingModel(
      [this.category,
      this.subcategory,
      this.listingTypeId,
      this.pricingModels = const []]);

  @override
  final Category? category;
  @override
  final Category? subcategory;
  @override
  final int? listingTypeId;
  @JsonKey(defaultValue: const [])
  @override
  final List<PricingModel> pricingModels;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostListingModel(category: $category, subcategory: $subcategory, listingTypeId: $listingTypeId, pricingModels: $pricingModels)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostListingModel'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('subcategory', subcategory))
      ..add(DiagnosticsProperty('listingTypeId', listingTypeId))
      ..add(DiagnosticsProperty('pricingModels', pricingModels));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostListingModel &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.subcategory, subcategory) ||
                const DeepCollectionEquality()
                    .equals(other.subcategory, subcategory)) &&
            (identical(other.listingTypeId, listingTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.listingTypeId, listingTypeId)) &&
            (identical(other.pricingModels, pricingModels) ||
                const DeepCollectionEquality()
                    .equals(other.pricingModels, pricingModels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(subcategory) ^
      const DeepCollectionEquality().hash(listingTypeId) ^
      const DeepCollectionEquality().hash(pricingModels);

  @JsonKey(ignore: true)
  @override
  _$PostListingModelCopyWith<_PostListingModel> get copyWith =>
      __$PostListingModelCopyWithImpl<_PostListingModel>(this, _$identity);
}

abstract class _PostListingModel implements PostListingModel {
  const factory _PostListingModel(
      [Category? category,
      Category? subcategory,
      int? listingTypeId,
      List<PricingModel> pricingModels]) = _$_PostListingModel;

  @override
  Category? get category => throw _privateConstructorUsedError;
  @override
  Category? get subcategory => throw _privateConstructorUsedError;
  @override
  int? get listingTypeId => throw _privateConstructorUsedError;
  @override
  List<PricingModel> get pricingModels => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostListingModelCopyWith<_PostListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
