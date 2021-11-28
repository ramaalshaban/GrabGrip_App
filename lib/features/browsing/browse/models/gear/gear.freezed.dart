// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gear.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gear _$GearFromJson(Map<String, dynamic> json) {
  return _Gear.fromJson(json);
}

/// @nodoc
class _$GearTearOff {
  const _$GearTearOff();

  _Gear call(
      String hash,
      int id,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'pricing_model_id') String pricingModelId,
      String title,
      @JsonKey(name: 'stock') int stockQuantity,
      String description,
      @JsonKey(name: 'short_description') String shortDescription,
      String currency,
      List<String>? tags,
      String slug,
      double lat,
      double lng,
      String? city,
      String? country,
      String? thumbnail,
      @JsonKey(name: 'media') List<ListingPhoto> photos,
      @JsonKey(name: 'price_formatted') String? formattedPrice,
      @JsonKey(name: 'user') User? owner) {
    return _Gear(
      hash,
      id,
      categoryId,
      pricingModelId,
      title,
      stockQuantity,
      description,
      shortDescription,
      currency,
      tags,
      slug,
      lat,
      lng,
      city,
      country,
      thumbnail,
      photos,
      formattedPrice,
      owner,
    );
  }

  Gear fromJson(Map<String, Object> json) {
    return Gear.fromJson(json);
  }
}

/// @nodoc
const $Gear = _$GearTearOff();

/// @nodoc
mixin _$Gear {
  String get hash => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricing_model_id')
  String get pricingModelId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int get stockQuantity => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String get shortDescription => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  List<ListingPhoto> get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_formatted')
  String? get formattedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GearCopyWith<Gear> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GearCopyWith<$Res> {
  factory $GearCopyWith(Gear value, $Res Function(Gear) then) =
      _$GearCopyWithImpl<$Res>;
  $Res call(
      {String hash,
      int id,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'pricing_model_id') String pricingModelId,
      String title,
      @JsonKey(name: 'stock') int stockQuantity,
      String description,
      @JsonKey(name: 'short_description') String shortDescription,
      String currency,
      List<String>? tags,
      String slug,
      double lat,
      double lng,
      String? city,
      String? country,
      String? thumbnail,
      @JsonKey(name: 'media') List<ListingPhoto> photos,
      @JsonKey(name: 'price_formatted') String? formattedPrice,
      @JsonKey(name: 'user') User? owner});

  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class _$GearCopyWithImpl<$Res> implements $GearCopyWith<$Res> {
  _$GearCopyWithImpl(this._value, this._then);

  final Gear _value;
  // ignore: unused_field
  final $Res Function(Gear) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? pricingModelId = freezed,
    Object? title = freezed,
    Object? stockQuantity = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? currency = freezed,
    Object? tags = freezed,
    Object? slug = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? thumbnail = freezed,
    Object? photos = freezed,
    Object? formattedPrice = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      pricingModelId: pricingModelId == freezed
          ? _value.pricingModelId
          : pricingModelId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stockQuantity: stockQuantity == freezed
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<ListingPhoto>,
      formattedPrice: formattedPrice == freezed
          ? _value.formattedPrice
          : formattedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$GearCopyWith<$Res> implements $GearCopyWith<$Res> {
  factory _$GearCopyWith(_Gear value, $Res Function(_Gear) then) =
      __$GearCopyWithImpl<$Res>;
  @override
  $Res call(
      {String hash,
      int id,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'pricing_model_id') String pricingModelId,
      String title,
      @JsonKey(name: 'stock') int stockQuantity,
      String description,
      @JsonKey(name: 'short_description') String shortDescription,
      String currency,
      List<String>? tags,
      String slug,
      double lat,
      double lng,
      String? city,
      String? country,
      String? thumbnail,
      @JsonKey(name: 'media') List<ListingPhoto> photos,
      @JsonKey(name: 'price_formatted') String? formattedPrice,
      @JsonKey(name: 'user') User? owner});

  @override
  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class __$GearCopyWithImpl<$Res> extends _$GearCopyWithImpl<$Res>
    implements _$GearCopyWith<$Res> {
  __$GearCopyWithImpl(_Gear _value, $Res Function(_Gear) _then)
      : super(_value, (v) => _then(v as _Gear));

  @override
  _Gear get _value => super._value as _Gear;

  @override
  $Res call({
    Object? hash = freezed,
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? pricingModelId = freezed,
    Object? title = freezed,
    Object? stockQuantity = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? currency = freezed,
    Object? tags = freezed,
    Object? slug = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? thumbnail = freezed,
    Object? photos = freezed,
    Object? formattedPrice = freezed,
    Object? owner = freezed,
  }) {
    return _then(_Gear(
      hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      pricingModelId == freezed
          ? _value.pricingModelId
          : pricingModelId // ignore: cast_nullable_to_non_nullable
              as String,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stockQuantity == freezed
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<ListingPhoto>,
      formattedPrice == freezed
          ? _value.formattedPrice
          : formattedPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gear with DiagnosticableTreeMixin implements _Gear {
  const _$_Gear(
      this.hash,
      this.id,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'pricing_model_id') this.pricingModelId,
      this.title,
      @JsonKey(name: 'stock') this.stockQuantity,
      this.description,
      @JsonKey(name: 'short_description') this.shortDescription,
      this.currency,
      this.tags,
      this.slug,
      this.lat,
      this.lng,
      this.city,
      this.country,
      this.thumbnail,
      @JsonKey(name: 'media') this.photos,
      @JsonKey(name: 'price_formatted') this.formattedPrice,
      @JsonKey(name: 'user') this.owner);

  factory _$_Gear.fromJson(Map<String, dynamic> json) => _$$_GearFromJson(json);

  @override
  final String hash;
  @override
  final int id;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'pricing_model_id')
  final String pricingModelId;
  @override
  final String title;
  @override
  @JsonKey(name: 'stock')
  final int stockQuantity;
  @override
  final String description;
  @override
  @JsonKey(name: 'short_description')
  final String shortDescription;
  @override
  final String currency;
  @override
  final List<String>? tags;
  @override
  final String slug;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? thumbnail;
  @override
  @JsonKey(name: 'media')
  final List<ListingPhoto> photos;
  @override
  @JsonKey(name: 'price_formatted')
  final String? formattedPrice;
  @override
  @JsonKey(name: 'user')
  final User? owner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Gear(hash: $hash, id: $id, categoryId: $categoryId, pricingModelId: $pricingModelId, title: $title, stockQuantity: $stockQuantity, description: $description, shortDescription: $shortDescription, currency: $currency, tags: $tags, slug: $slug, lat: $lat, lng: $lng, city: $city, country: $country, thumbnail: $thumbnail, photos: $photos, formattedPrice: $formattedPrice, owner: $owner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Gear'))
      ..add(DiagnosticsProperty('hash', hash))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('pricingModelId', pricingModelId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('stockQuantity', stockQuantity))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('shortDescription', shortDescription))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('slug', slug))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('photos', photos))
      ..add(DiagnosticsProperty('formattedPrice', formattedPrice))
      ..add(DiagnosticsProperty('owner', owner));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Gear &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.pricingModelId, pricingModelId) ||
                const DeepCollectionEquality()
                    .equals(other.pricingModelId, pricingModelId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.stockQuantity, stockQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.stockQuantity, stockQuantity)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.formattedPrice, formattedPrice) ||
                const DeepCollectionEquality()
                    .equals(other.formattedPrice, formattedPrice)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(pricingModelId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(stockQuantity) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(formattedPrice) ^
      const DeepCollectionEquality().hash(owner);

  @JsonKey(ignore: true)
  @override
  _$GearCopyWith<_Gear> get copyWith =>
      __$GearCopyWithImpl<_Gear>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GearToJson(this);
  }
}

abstract class _Gear implements Gear {
  const factory _Gear(
      String hash,
      int id,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'pricing_model_id') String pricingModelId,
      String title,
      @JsonKey(name: 'stock') int stockQuantity,
      String description,
      @JsonKey(name: 'short_description') String shortDescription,
      String currency,
      List<String>? tags,
      String slug,
      double lat,
      double lng,
      String? city,
      String? country,
      String? thumbnail,
      @JsonKey(name: 'media') List<ListingPhoto> photos,
      @JsonKey(name: 'price_formatted') String? formattedPrice,
      @JsonKey(name: 'user') User? owner) = _$_Gear;

  factory _Gear.fromJson(Map<String, dynamic> json) = _$_Gear.fromJson;

  @override
  String get hash => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pricing_model_id')
  String get pricingModelId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stock')
  int get stockQuantity => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'short_description')
  String get shortDescription => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  List<String>? get tags => throw _privateConstructorUsedError;
  @override
  String get slug => throw _privateConstructorUsedError;
  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lng => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  String? get thumbnail => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'media')
  List<ListingPhoto> get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'price_formatted')
  String? get formattedPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user')
  User? get owner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GearCopyWith<_Gear> get copyWith => throw _privateConstructorUsedError;
}
