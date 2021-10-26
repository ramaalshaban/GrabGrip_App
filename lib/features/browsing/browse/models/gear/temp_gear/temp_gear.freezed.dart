// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'temp_gear.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TempGear _$TempGearFromJson(Map<String, dynamic> json) {
  return _TempGear.fromJson(json);
}

/// @nodoc
class _$TempGearTearOff {
  const _$TempGearTearOff();

  _TempGear call(
      String hash,
      int id,
      @JsonKey(name: 'category_id') int categoryId,
      String title,
      @JsonKey(name: 'stock') int? stockQuantity,
      String description,
      @JsonKey(name: 'short_description') String shortDescription,
      String currency,
      double lat,
      double lng,
      String? city,
      String? country,
      String thumbnail,
      @JsonKey(name: 'price_formatted') String? formattedPrice,
      @JsonKey(name: 'user') User? owner) {
    return _TempGear(
      hash,
      id,
      categoryId,
      title,
      stockQuantity,
      description,
      shortDescription,
      currency,
      lat,
      lng,
      city,
      country,
      thumbnail,
      formattedPrice,
      owner,
    );
  }

  TempGear fromJson(Map<String, Object> json) {
    return TempGear.fromJson(json);
  }
}

/// @nodoc
const $TempGear = _$TempGearTearOff();

/// @nodoc
mixin _$TempGear {
  String get hash => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int? get stockQuantity => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String get shortDescription => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get lat =>
      throw _privateConstructorUsedError; // double instead of String
  double get lng =>
      throw _privateConstructorUsedError; // double instead of String
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_formatted')
  String? get formattedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempGearCopyWith<TempGear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempGearCopyWith<$Res> {
  factory $TempGearCopyWith(TempGear value, $Res Function(TempGear) then) =
      _$TempGearCopyWithImpl<$Res>;
  $Res call(
      {String hash,
      int id,
      @JsonKey(name: 'category_id') int categoryId,
      String title,
      @JsonKey(name: 'stock') int? stockQuantity,
      String description,
      @JsonKey(name: 'short_description') String shortDescription,
      String currency,
      double lat,
      double lng,
      String? city,
      String? country,
      String thumbnail,
      @JsonKey(name: 'price_formatted') String? formattedPrice,
      @JsonKey(name: 'user') User? owner});

  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class _$TempGearCopyWithImpl<$Res> implements $TempGearCopyWith<$Res> {
  _$TempGearCopyWithImpl(this._value, this._then);

  final TempGear _value;
  // ignore: unused_field
  final $Res Function(TempGear) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? title = freezed,
    Object? stockQuantity = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? currency = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? thumbnail = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stockQuantity: stockQuantity == freezed
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String,
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
abstract class _$TempGearCopyWith<$Res> implements $TempGearCopyWith<$Res> {
  factory _$TempGearCopyWith(_TempGear value, $Res Function(_TempGear) then) =
      __$TempGearCopyWithImpl<$Res>;
  @override
  $Res call(
      {String hash,
      int id,
      @JsonKey(name: 'category_id') int categoryId,
      String title,
      @JsonKey(name: 'stock') int? stockQuantity,
      String description,
      @JsonKey(name: 'short_description') String shortDescription,
      String currency,
      double lat,
      double lng,
      String? city,
      String? country,
      String thumbnail,
      @JsonKey(name: 'price_formatted') String? formattedPrice,
      @JsonKey(name: 'user') User? owner});

  @override
  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class __$TempGearCopyWithImpl<$Res> extends _$TempGearCopyWithImpl<$Res>
    implements _$TempGearCopyWith<$Res> {
  __$TempGearCopyWithImpl(_TempGear _value, $Res Function(_TempGear) _then)
      : super(_value, (v) => _then(v as _TempGear));

  @override
  _TempGear get _value => super._value as _TempGear;

  @override
  $Res call({
    Object? hash = freezed,
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? title = freezed,
    Object? stockQuantity = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? currency = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? thumbnail = freezed,
    Object? formattedPrice = freezed,
    Object? owner = freezed,
  }) {
    return _then(_TempGear(
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
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stockQuantity == freezed
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String,
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
class _$_TempGear with DiagnosticableTreeMixin implements _TempGear {
  const _$_TempGear(
      this.hash,
      this.id,
      @JsonKey(name: 'category_id') this.categoryId,
      this.title,
      @JsonKey(name: 'stock') this.stockQuantity,
      this.description,
      @JsonKey(name: 'short_description') this.shortDescription,
      this.currency,
      this.lat,
      this.lng,
      this.city,
      this.country,
      this.thumbnail,
      @JsonKey(name: 'price_formatted') this.formattedPrice,
      @JsonKey(name: 'user') this.owner);

  factory _$_TempGear.fromJson(Map<String, dynamic> json) =>
      _$$_TempGearFromJson(json);

  @override
  final String hash;
  @override
  final int id;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  final String title;
  @override
  @JsonKey(name: 'stock')
  final int? stockQuantity;
  @override
  final String description;
  @override
  @JsonKey(name: 'short_description')
  final String shortDescription;
  @override
  final String currency;
  @override
  final double lat;
  @override // double instead of String
  final double lng;
  @override // double instead of String
  final String? city;
  @override
  final String? country;
  @override
  final String thumbnail;
  @override
  @JsonKey(name: 'price_formatted')
  final String? formattedPrice;
  @override
  @JsonKey(name: 'user')
  final User? owner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TempGear(hash: $hash, id: $id, categoryId: $categoryId, title: $title, stockQuantity: $stockQuantity, description: $description, shortDescription: $shortDescription, currency: $currency, lat: $lat, lng: $lng, city: $city, country: $country, thumbnail: $thumbnail, formattedPrice: $formattedPrice, owner: $owner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TempGear'))
      ..add(DiagnosticsProperty('hash', hash))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('stockQuantity', stockQuantity))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('shortDescription', shortDescription))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('formattedPrice', formattedPrice))
      ..add(DiagnosticsProperty('owner', owner));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TempGear &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
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
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(stockQuantity) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(formattedPrice) ^
      const DeepCollectionEquality().hash(owner);

  @JsonKey(ignore: true)
  @override
  _$TempGearCopyWith<_TempGear> get copyWith =>
      __$TempGearCopyWithImpl<_TempGear>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempGearToJson(this);
  }
}

abstract class _TempGear implements TempGear {
  const factory _TempGear(
      String hash,
      int id,
      @JsonKey(name: 'category_id') int categoryId,
      String title,
      @JsonKey(name: 'stock') int? stockQuantity,
      String description,
      @JsonKey(name: 'short_description') String shortDescription,
      String currency,
      double lat,
      double lng,
      String? city,
      String? country,
      String thumbnail,
      @JsonKey(name: 'price_formatted') String? formattedPrice,
      @JsonKey(name: 'user') User? owner) = _$_TempGear;

  factory _TempGear.fromJson(Map<String, dynamic> json) = _$_TempGear.fromJson;

  @override
  String get hash => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stock')
  int? get stockQuantity => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'short_description')
  String get shortDescription => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  double get lat => throw _privateConstructorUsedError;
  @override // double instead of String
  double get lng => throw _privateConstructorUsedError;
  @override // double instead of String
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  String get thumbnail => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'price_formatted')
  String? get formattedPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user')
  User? get owner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TempGearCopyWith<_TempGear> get copyWith =>
      throw _privateConstructorUsedError;
}
