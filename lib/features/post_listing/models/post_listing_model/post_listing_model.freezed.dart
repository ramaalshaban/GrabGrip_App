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
      String? title,
      String? description,
      Gear? postedListing,
      TempGear? tempPostedListing,
      List<PricingModel> pricingModels = const []]) {
    return _PostListingModel(
      category,
      subcategory,
      listingTypeId,
      title,
      description,
      postedListing,
      tempPostedListing,
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
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Gear? get postedListing => throw _privateConstructorUsedError;
  TempGear? get tempPostedListing => throw _privateConstructorUsedError;
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
      String? title,
      String? description,
      Gear? postedListing,
      TempGear? tempPostedListing,
      List<PricingModel> pricingModels});

  $CategoryCopyWith<$Res>? get category;
  $CategoryCopyWith<$Res>? get subcategory;
  $GearCopyWith<$Res>? get postedListing;
  $TempGearCopyWith<$Res>? get tempPostedListing;
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
    Object? title = freezed,
    Object? description = freezed,
    Object? postedListing = freezed,
    Object? tempPostedListing = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      postedListing: postedListing == freezed
          ? _value.postedListing
          : postedListing // ignore: cast_nullable_to_non_nullable
              as Gear?,
      tempPostedListing: tempPostedListing == freezed
          ? _value.tempPostedListing
          : tempPostedListing // ignore: cast_nullable_to_non_nullable
              as TempGear?,
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

  @override
  $GearCopyWith<$Res>? get postedListing {
    if (_value.postedListing == null) {
      return null;
    }

    return $GearCopyWith<$Res>(_value.postedListing!, (value) {
      return _then(_value.copyWith(postedListing: value));
    });
  }

  @override
  $TempGearCopyWith<$Res>? get tempPostedListing {
    if (_value.tempPostedListing == null) {
      return null;
    }

    return $TempGearCopyWith<$Res>(_value.tempPostedListing!, (value) {
      return _then(_value.copyWith(tempPostedListing: value));
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
      String? title,
      String? description,
      Gear? postedListing,
      TempGear? tempPostedListing,
      List<PricingModel> pricingModels});

  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $CategoryCopyWith<$Res>? get subcategory;
  @override
  $GearCopyWith<$Res>? get postedListing;
  @override
  $TempGearCopyWith<$Res>? get tempPostedListing;
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
    Object? title = freezed,
    Object? description = freezed,
    Object? postedListing = freezed,
    Object? tempPostedListing = freezed,
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
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      postedListing == freezed
          ? _value.postedListing
          : postedListing // ignore: cast_nullable_to_non_nullable
              as Gear?,
      tempPostedListing == freezed
          ? _value.tempPostedListing
          : tempPostedListing // ignore: cast_nullable_to_non_nullable
              as TempGear?,
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
      this.title,
      this.description,
      this.postedListing,
      this.tempPostedListing,
      this.pricingModels = const []]);

  @override
  final Category? category;
  @override
  final Category? subcategory;
  @override
  final int? listingTypeId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final Gear? postedListing;
  @override
  final TempGear? tempPostedListing;
  @JsonKey(defaultValue: const [])
  @override
  final List<PricingModel> pricingModels;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostListingModel(category: $category, subcategory: $subcategory, listingTypeId: $listingTypeId, title: $title, description: $description, postedListing: $postedListing, tempPostedListing: $tempPostedListing, pricingModels: $pricingModels)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostListingModel'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('subcategory', subcategory))
      ..add(DiagnosticsProperty('listingTypeId', listingTypeId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('postedListing', postedListing))
      ..add(DiagnosticsProperty('tempPostedListing', tempPostedListing))
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
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.postedListing, postedListing) ||
                const DeepCollectionEquality()
                    .equals(other.postedListing, postedListing)) &&
            (identical(other.tempPostedListing, tempPostedListing) ||
                const DeepCollectionEquality()
                    .equals(other.tempPostedListing, tempPostedListing)) &&
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
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(postedListing) ^
      const DeepCollectionEquality().hash(tempPostedListing) ^
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
      String? title,
      String? description,
      Gear? postedListing,
      TempGear? tempPostedListing,
      List<PricingModel> pricingModels]) = _$_PostListingModel;

  @override
  Category? get category => throw _privateConstructorUsedError;
  @override
  Category? get subcategory => throw _privateConstructorUsedError;
  @override
  int? get listingTypeId => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  Gear? get postedListing => throw _privateConstructorUsedError;
  @override
  TempGear? get tempPostedListing => throw _privateConstructorUsedError;
  @override
  List<PricingModel> get pricingModels => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostListingModelCopyWith<_PostListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
