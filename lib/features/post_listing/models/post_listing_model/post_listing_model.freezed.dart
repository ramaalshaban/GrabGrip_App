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
      List<String> tags = const [],
      String? listingEndDate,
      List<PricingModel> pricingModels = const [],
      String? place,
      LatLng? latLng,
      CountryCode? country,
      String? city,
      String? region,
      List<Photo> photos = const [],
      List<UploadPhotoResponse> photosAsJson = const [],
      Map<String, UploadPhotoResponse> photosToPost = const {},
      int? price,
      int? stock,
      List<AdditionalOption> additionalOptions = const [AdditionalOption()],
      List<ShippingFee> shippingFees = const [ShippingFee()],
      List<Variation> variations = const [Variation()]]) {
    return _PostListingModel(
      category,
      subcategory,
      listingTypeId,
      title,
      description,
      postedListing,
      tags,
      listingEndDate,
      pricingModels,
      place,
      latLng,
      country,
      city,
      region,
      photos,
      photosAsJson,
      photosToPost,
      price,
      stock,
      additionalOptions,
      shippingFees,
      variations,
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
  List<String> get tags => throw _privateConstructorUsedError;
  String? get listingEndDate => throw _privateConstructorUsedError;
  List<PricingModel> get pricingModels => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;
  LatLng? get latLng => throw _privateConstructorUsedError;
  CountryCode? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;
  List<UploadPhotoResponse> get photosAsJson =>
      throw _privateConstructorUsedError;
  Map<String, UploadPhotoResponse> get photosToPost =>
      throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  List<AdditionalOption> get additionalOptions =>
      throw _privateConstructorUsedError;
  List<ShippingFee> get shippingFees => throw _privateConstructorUsedError;
  List<Variation> get variations => throw _privateConstructorUsedError;

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
      List<String> tags,
      String? listingEndDate,
      List<PricingModel> pricingModels,
      String? place,
      LatLng? latLng,
      CountryCode? country,
      String? city,
      String? region,
      List<Photo> photos,
      List<UploadPhotoResponse> photosAsJson,
      Map<String, UploadPhotoResponse> photosToPost,
      int? price,
      int? stock,
      List<AdditionalOption> additionalOptions,
      List<ShippingFee> shippingFees,
      List<Variation> variations});

  $CategoryCopyWith<$Res>? get category;
  $CategoryCopyWith<$Res>? get subcategory;
  $GearCopyWith<$Res>? get postedListing;
  $LatLngCopyWith<$Res>? get latLng;
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
    Object? tags = freezed,
    Object? listingEndDate = freezed,
    Object? pricingModels = freezed,
    Object? place = freezed,
    Object? latLng = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? region = freezed,
    Object? photos = freezed,
    Object? photosAsJson = freezed,
    Object? photosToPost = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? additionalOptions = freezed,
    Object? shippingFees = freezed,
    Object? variations = freezed,
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
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listingEndDate: listingEndDate == freezed
          ? _value.listingEndDate
          : listingEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingModels: pricingModels == freezed
          ? _value.pricingModels
          : pricingModels // ignore: cast_nullable_to_non_nullable
              as List<PricingModel>,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryCode?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      photosAsJson: photosAsJson == freezed
          ? _value.photosAsJson
          : photosAsJson // ignore: cast_nullable_to_non_nullable
              as List<UploadPhotoResponse>,
      photosToPost: photosToPost == freezed
          ? _value.photosToPost
          : photosToPost // ignore: cast_nullable_to_non_nullable
              as Map<String, UploadPhotoResponse>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalOptions: additionalOptions == freezed
          ? _value.additionalOptions
          : additionalOptions // ignore: cast_nullable_to_non_nullable
              as List<AdditionalOption>,
      shippingFees: shippingFees == freezed
          ? _value.shippingFees
          : shippingFees // ignore: cast_nullable_to_non_nullable
              as List<ShippingFee>,
      variations: variations == freezed
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<Variation>,
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
  $LatLngCopyWith<$Res>? get latLng {
    if (_value.latLng == null) {
      return null;
    }

    return $LatLngCopyWith<$Res>(_value.latLng!, (value) {
      return _then(_value.copyWith(latLng: value));
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
      List<String> tags,
      String? listingEndDate,
      List<PricingModel> pricingModels,
      String? place,
      LatLng? latLng,
      CountryCode? country,
      String? city,
      String? region,
      List<Photo> photos,
      List<UploadPhotoResponse> photosAsJson,
      Map<String, UploadPhotoResponse> photosToPost,
      int? price,
      int? stock,
      List<AdditionalOption> additionalOptions,
      List<ShippingFee> shippingFees,
      List<Variation> variations});

  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $CategoryCopyWith<$Res>? get subcategory;
  @override
  $GearCopyWith<$Res>? get postedListing;
  @override
  $LatLngCopyWith<$Res>? get latLng;
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
    Object? tags = freezed,
    Object? listingEndDate = freezed,
    Object? pricingModels = freezed,
    Object? place = freezed,
    Object? latLng = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? region = freezed,
    Object? photos = freezed,
    Object? photosAsJson = freezed,
    Object? photosToPost = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? additionalOptions = freezed,
    Object? shippingFees = freezed,
    Object? variations = freezed,
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
      tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listingEndDate == freezed
          ? _value.listingEndDate
          : listingEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingModels == freezed
          ? _value.pricingModels
          : pricingModels // ignore: cast_nullable_to_non_nullable
              as List<PricingModel>,
      place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryCode?,
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      photosAsJson == freezed
          ? _value.photosAsJson
          : photosAsJson // ignore: cast_nullable_to_non_nullable
              as List<UploadPhotoResponse>,
      photosToPost == freezed
          ? _value.photosToPost
          : photosToPost // ignore: cast_nullable_to_non_nullable
              as Map<String, UploadPhotoResponse>,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalOptions == freezed
          ? _value.additionalOptions
          : additionalOptions // ignore: cast_nullable_to_non_nullable
              as List<AdditionalOption>,
      shippingFees == freezed
          ? _value.shippingFees
          : shippingFees // ignore: cast_nullable_to_non_nullable
              as List<ShippingFee>,
      variations == freezed
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<Variation>,
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
      this.tags = const [],
      this.listingEndDate,
      this.pricingModels = const [],
      this.place,
      this.latLng,
      this.country,
      this.city,
      this.region,
      this.photos = const [],
      this.photosAsJson = const [],
      this.photosToPost = const {},
      this.price,
      this.stock,
      this.additionalOptions = const [AdditionalOption()],
      this.shippingFees = const [ShippingFee()],
      this.variations = const [Variation()]]);

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
  @JsonKey(defaultValue: const [])
  @override
  final List<String> tags;
  @override
  final String? listingEndDate;
  @JsonKey(defaultValue: const [])
  @override
  final List<PricingModel> pricingModels;
  @override
  final String? place;
  @override
  final LatLng? latLng;
  @override
  final CountryCode? country;
  @override
  final String? city;
  @override
  final String? region;
  @JsonKey(defaultValue: const [])
  @override
  final List<Photo> photos;
  @JsonKey(defaultValue: const [])
  @override
  final List<UploadPhotoResponse> photosAsJson;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, UploadPhotoResponse> photosToPost;
  @override
  final int? price;
  @override
  final int? stock;
  @JsonKey(defaultValue: const [AdditionalOption()])
  @override
  final List<AdditionalOption> additionalOptions;
  @JsonKey(defaultValue: const [ShippingFee()])
  @override
  final List<ShippingFee> shippingFees;
  @JsonKey(defaultValue: const [Variation()])
  @override
  final List<Variation> variations;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostListingModel(category: $category, subcategory: $subcategory, listingTypeId: $listingTypeId, title: $title, description: $description, postedListing: $postedListing, tags: $tags, listingEndDate: $listingEndDate, pricingModels: $pricingModels, place: $place, latLng: $latLng, country: $country, city: $city, region: $region, photos: $photos, photosAsJson: $photosAsJson, photosToPost: $photosToPost, price: $price, stock: $stock, additionalOptions: $additionalOptions, shippingFees: $shippingFees, variations: $variations)';
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
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('listingEndDate', listingEndDate))
      ..add(DiagnosticsProperty('pricingModels', pricingModels))
      ..add(DiagnosticsProperty('place', place))
      ..add(DiagnosticsProperty('latLng', latLng))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('photos', photos))
      ..add(DiagnosticsProperty('photosAsJson', photosAsJson))
      ..add(DiagnosticsProperty('photosToPost', photosToPost))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('stock', stock))
      ..add(DiagnosticsProperty('additionalOptions', additionalOptions))
      ..add(DiagnosticsProperty('shippingFees', shippingFees))
      ..add(DiagnosticsProperty('variations', variations));
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
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.listingEndDate, listingEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.listingEndDate, listingEndDate)) &&
            (identical(other.pricingModels, pricingModels) ||
                const DeepCollectionEquality()
                    .equals(other.pricingModels, pricingModels)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.latLng, latLng) ||
                const DeepCollectionEquality().equals(other.latLng, latLng)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.photosAsJson, photosAsJson) ||
                const DeepCollectionEquality()
                    .equals(other.photosAsJson, photosAsJson)) &&
            (identical(other.photosToPost, photosToPost) ||
                const DeepCollectionEquality()
                    .equals(other.photosToPost, photosToPost)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.stock, stock) ||
                const DeepCollectionEquality().equals(other.stock, stock)) &&
            (identical(other.additionalOptions, additionalOptions) ||
                const DeepCollectionEquality()
                    .equals(other.additionalOptions, additionalOptions)) &&
            (identical(other.shippingFees, shippingFees) ||
                const DeepCollectionEquality()
                    .equals(other.shippingFees, shippingFees)) &&
            (identical(other.variations, variations) ||
                const DeepCollectionEquality()
                    .equals(other.variations, variations)));
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
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(listingEndDate) ^
      const DeepCollectionEquality().hash(pricingModels) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(latLng) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(photosAsJson) ^
      const DeepCollectionEquality().hash(photosToPost) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(stock) ^
      const DeepCollectionEquality().hash(additionalOptions) ^
      const DeepCollectionEquality().hash(shippingFees) ^
      const DeepCollectionEquality().hash(variations);

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
      List<String> tags,
      String? listingEndDate,
      List<PricingModel> pricingModels,
      String? place,
      LatLng? latLng,
      CountryCode? country,
      String? city,
      String? region,
      List<Photo> photos,
      List<UploadPhotoResponse> photosAsJson,
      Map<String, UploadPhotoResponse> photosToPost,
      int? price,
      int? stock,
      List<AdditionalOption> additionalOptions,
      List<ShippingFee> shippingFees,
      List<Variation> variations]) = _$_PostListingModel;

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
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  String? get listingEndDate => throw _privateConstructorUsedError;
  @override
  List<PricingModel> get pricingModels => throw _privateConstructorUsedError;
  @override
  String? get place => throw _privateConstructorUsedError;
  @override
  LatLng? get latLng => throw _privateConstructorUsedError;
  @override
  CountryCode? get country => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get region => throw _privateConstructorUsedError;
  @override
  List<Photo> get photos => throw _privateConstructorUsedError;
  @override
  List<UploadPhotoResponse> get photosAsJson =>
      throw _privateConstructorUsedError;
  @override
  Map<String, UploadPhotoResponse> get photosToPost =>
      throw _privateConstructorUsedError;
  @override
  int? get price => throw _privateConstructorUsedError;
  @override
  int? get stock => throw _privateConstructorUsedError;
  @override
  List<AdditionalOption> get additionalOptions =>
      throw _privateConstructorUsedError;
  @override
  List<ShippingFee> get shippingFees => throw _privateConstructorUsedError;
  @override
  List<Variation> get variations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostListingModelCopyWith<_PostListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
