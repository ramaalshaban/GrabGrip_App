// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_listing_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaveListingRequest _$SaveListingRequestFromJson(Map<String, dynamic> json) {
  return _SaveListingRequest.fromJson(json);
}

/// @nodoc
class _$SaveListingRequestTearOff {
  const _$SaveListingRequestTearOff();

  _SaveListingRequest call(
      {String? title,
      String? description,
      @JsonKey(name: "tags_string") String? tags,
      @JsonKey(name: "ends_at") String? listingEndDate,
      double? lat,
      double? lng,
      String? city,
      String? region,
      String? country,
      int? price,
      int? stock,
      @JsonKey(name: "additional") List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping") List<ShippingFee>? shippingFees,
      List<VariationStringValue>? variations}) {
    return _SaveListingRequest(
      title: title,
      description: description,
      tags: tags,
      listingEndDate: listingEndDate,
      lat: lat,
      lng: lng,
      city: city,
      region: region,
      country: country,
      price: price,
      stock: stock,
      additionalOptions: additionalOptions,
      shippingFees: shippingFees,
      variations: variations,
    );
  }

  SaveListingRequest fromJson(Map<String, Object> json) {
    return SaveListingRequest.fromJson(json);
  }
}

/// @nodoc
const $SaveListingRequest = _$SaveListingRequestTearOff();

/// @nodoc
mixin _$SaveListingRequest {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "tags_string")
  String? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "ends_at")
  String? get listingEndDate => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get stock =>
      throw _privateConstructorUsedError; //   List<UploadPhotoResponse>? photos,
  @JsonKey(name: "additional")
  List<AdditionalOption>? get additionalOptions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "shipping")
  List<ShippingFee>? get shippingFees => throw _privateConstructorUsedError;
  List<VariationStringValue>? get variations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveListingRequestCopyWith<SaveListingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveListingRequestCopyWith<$Res> {
  factory $SaveListingRequestCopyWith(
          SaveListingRequest value, $Res Function(SaveListingRequest) then) =
      _$SaveListingRequestCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? description,
      @JsonKey(name: "tags_string") String? tags,
      @JsonKey(name: "ends_at") String? listingEndDate,
      double? lat,
      double? lng,
      String? city,
      String? region,
      String? country,
      int? price,
      int? stock,
      @JsonKey(name: "additional") List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping") List<ShippingFee>? shippingFees,
      List<VariationStringValue>? variations});
}

/// @nodoc
class _$SaveListingRequestCopyWithImpl<$Res>
    implements $SaveListingRequestCopyWith<$Res> {
  _$SaveListingRequestCopyWithImpl(this._value, this._then);

  final SaveListingRequest _value;
  // ignore: unused_field
  final $Res Function(SaveListingRequest) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? listingEndDate = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? city = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? additionalOptions = freezed,
    Object? shippingFees = freezed,
    Object? variations = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      listingEndDate: listingEndDate == freezed
          ? _value.listingEndDate
          : listingEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<AdditionalOption>?,
      shippingFees: shippingFees == freezed
          ? _value.shippingFees
          : shippingFees // ignore: cast_nullable_to_non_nullable
              as List<ShippingFee>?,
      variations: variations == freezed
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<VariationStringValue>?,
    ));
  }
}

/// @nodoc
abstract class _$SaveListingRequestCopyWith<$Res>
    implements $SaveListingRequestCopyWith<$Res> {
  factory _$SaveListingRequestCopyWith(
          _SaveListingRequest value, $Res Function(_SaveListingRequest) then) =
      __$SaveListingRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? description,
      @JsonKey(name: "tags_string") String? tags,
      @JsonKey(name: "ends_at") String? listingEndDate,
      double? lat,
      double? lng,
      String? city,
      String? region,
      String? country,
      int? price,
      int? stock,
      @JsonKey(name: "additional") List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping") List<ShippingFee>? shippingFees,
      List<VariationStringValue>? variations});
}

/// @nodoc
class __$SaveListingRequestCopyWithImpl<$Res>
    extends _$SaveListingRequestCopyWithImpl<$Res>
    implements _$SaveListingRequestCopyWith<$Res> {
  __$SaveListingRequestCopyWithImpl(
      _SaveListingRequest _value, $Res Function(_SaveListingRequest) _then)
      : super(_value, (v) => _then(v as _SaveListingRequest));

  @override
  _SaveListingRequest get _value => super._value as _SaveListingRequest;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? listingEndDate = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? city = freezed,
    Object? region = freezed,
    Object? country = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? additionalOptions = freezed,
    Object? shippingFees = freezed,
    Object? variations = freezed,
  }) {
    return _then(_SaveListingRequest(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      listingEndDate: listingEndDate == freezed
          ? _value.listingEndDate
          : listingEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<AdditionalOption>?,
      shippingFees: shippingFees == freezed
          ? _value.shippingFees
          : shippingFees // ignore: cast_nullable_to_non_nullable
              as List<ShippingFee>?,
      variations: variations == freezed
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<VariationStringValue>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaveListingRequest
    with DiagnosticableTreeMixin
    implements _SaveListingRequest {
  const _$_SaveListingRequest(
      {this.title,
      this.description,
      @JsonKey(name: "tags_string") this.tags,
      @JsonKey(name: "ends_at") this.listingEndDate,
      this.lat,
      this.lng,
      this.city,
      this.region,
      this.country,
      this.price,
      this.stock,
      @JsonKey(name: "additional") this.additionalOptions,
      @JsonKey(name: "shipping") this.shippingFees,
      this.variations});

  factory _$_SaveListingRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SaveListingRequestFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey(name: "tags_string")
  final String? tags;
  @override
  @JsonKey(name: "ends_at")
  final String? listingEndDate;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final String? city;
  @override
  final String? region;
  @override
  final String? country;
  @override
  final int? price;
  @override
  final int? stock;
  @override //   List<UploadPhotoResponse>? photos,
  @JsonKey(name: "additional")
  final List<AdditionalOption>? additionalOptions;
  @override
  @JsonKey(name: "shipping")
  final List<ShippingFee>? shippingFees;
  @override
  final List<VariationStringValue>? variations;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SaveListingRequest(title: $title, description: $description, tags: $tags, listingEndDate: $listingEndDate, lat: $lat, lng: $lng, city: $city, region: $region, country: $country, price: $price, stock: $stock, additionalOptions: $additionalOptions, shippingFees: $shippingFees, variations: $variations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SaveListingRequest'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('listingEndDate', listingEndDate))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('stock', stock))
      ..add(DiagnosticsProperty('additionalOptions', additionalOptions))
      ..add(DiagnosticsProperty('shippingFees', shippingFees))
      ..add(DiagnosticsProperty('variations', variations));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveListingRequest &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.listingEndDate, listingEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.listingEndDate, listingEndDate)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
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
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(listingEndDate) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(stock) ^
      const DeepCollectionEquality().hash(additionalOptions) ^
      const DeepCollectionEquality().hash(shippingFees) ^
      const DeepCollectionEquality().hash(variations);

  @JsonKey(ignore: true)
  @override
  _$SaveListingRequestCopyWith<_SaveListingRequest> get copyWith =>
      __$SaveListingRequestCopyWithImpl<_SaveListingRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveListingRequestToJson(this);
  }
}

abstract class _SaveListingRequest implements SaveListingRequest {
  const factory _SaveListingRequest(
      {String? title,
      String? description,
      @JsonKey(name: "tags_string") String? tags,
      @JsonKey(name: "ends_at") String? listingEndDate,
      double? lat,
      double? lng,
      String? city,
      String? region,
      String? country,
      int? price,
      int? stock,
      @JsonKey(name: "additional") List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping") List<ShippingFee>? shippingFees,
      List<VariationStringValue>? variations}) = _$_SaveListingRequest;

  factory _SaveListingRequest.fromJson(Map<String, dynamic> json) =
      _$_SaveListingRequest.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "tags_string")
  String? get tags => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "ends_at")
  String? get listingEndDate => throw _privateConstructorUsedError;
  @override
  double? get lat => throw _privateConstructorUsedError;
  @override
  double? get lng => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get region => throw _privateConstructorUsedError;
  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  int? get price => throw _privateConstructorUsedError;
  @override
  int? get stock => throw _privateConstructorUsedError;
  @override //   List<UploadPhotoResponse>? photos,
  @JsonKey(name: "additional")
  List<AdditionalOption>? get additionalOptions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "shipping")
  List<ShippingFee>? get shippingFees => throw _privateConstructorUsedError;
  @override
  List<VariationStringValue>? get variations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SaveListingRequestCopyWith<_SaveListingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
