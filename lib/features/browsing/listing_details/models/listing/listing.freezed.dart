// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Listing _$ListingFromJson(Map<String, dynamic> json) {
  return _Listing.fromJson(json);
}

/// @nodoc
class _$ListingTearOff {
  const _$ListingTearOff();

  _Listing call(
      @JsonKey(name: 'user_id')
          int ownerId,
      @JsonKey(name: "category")
          ListingCategory category,
      @JsonKey(name: "pricing_model")
          PricingModel pricingModel,
      int stock,
      @JsonKey(name: "additional_options")
          List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping_options")
          List<ShippingFee>? shippingOptions,
      @JsonKey(name: "variant_options")
          Map<String, List<String>>? variantOptions,
      @JsonKey(name: "ends_at")
          String? listingEndDate,
      @JsonKey(name: "user")
          User? user,
      @JsonKey(name: "is_favorited")
          dynamic isFavorited,
      @JsonKey(name: "user_rating")
          String userRating,
      @JsonKey(name: "user_listings_count")
          int userListingsCount) {
    return _Listing(
      ownerId,
      category,
      pricingModel,
      stock,
      additionalOptions,
      shippingOptions,
      variantOptions,
      listingEndDate,
      user,
      isFavorited,
      userRating,
      userListingsCount,
    );
  }

  Listing fromJson(Map<String, Object> json) {
    return Listing.fromJson(json);
  }
}

/// @nodoc
const $Listing = _$ListingTearOff();

/// @nodoc
mixin _$Listing {
  @JsonKey(name: 'user_id')
  int get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  ListingCategory get category => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_model")
  PricingModel get pricingModel => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_options")
  List<AdditionalOption>? get additionalOptions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_options")
  List<ShippingFee>? get shippingOptions => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_options")
  Map<String, List<String>>? get variantOptions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "ends_at")
  String? get listingEndDate => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "is_favorited")
  dynamic get isFavorited => throw _privateConstructorUsedError;
  @JsonKey(name: "user_rating")
  String get userRating => throw _privateConstructorUsedError;
  @JsonKey(name: "user_listings_count")
  int get userListingsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingCopyWith<Listing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingCopyWith<$Res> {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) then) =
      _$ListingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_id')
          int ownerId,
      @JsonKey(name: "category")
          ListingCategory category,
      @JsonKey(name: "pricing_model")
          PricingModel pricingModel,
      int stock,
      @JsonKey(name: "additional_options")
          List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping_options")
          List<ShippingFee>? shippingOptions,
      @JsonKey(name: "variant_options")
          Map<String, List<String>>? variantOptions,
      @JsonKey(name: "ends_at")
          String? listingEndDate,
      @JsonKey(name: "user")
          User? user,
      @JsonKey(name: "is_favorited")
          dynamic isFavorited,
      @JsonKey(name: "user_rating")
          String userRating,
      @JsonKey(name: "user_listings_count")
          int userListingsCount});

  $ListingCategoryCopyWith<$Res> get category;
  $PricingModelCopyWith<$Res> get pricingModel;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ListingCopyWithImpl<$Res> implements $ListingCopyWith<$Res> {
  _$ListingCopyWithImpl(this._value, this._then);

  final Listing _value;
  // ignore: unused_field
  final $Res Function(Listing) _then;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? category = freezed,
    Object? pricingModel = freezed,
    Object? stock = freezed,
    Object? additionalOptions = freezed,
    Object? shippingOptions = freezed,
    Object? variantOptions = freezed,
    Object? listingEndDate = freezed,
    Object? user = freezed,
    Object? isFavorited = freezed,
    Object? userRating = freezed,
    Object? userListingsCount = freezed,
  }) {
    return _then(_value.copyWith(
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ListingCategory,
      pricingModel: pricingModel == freezed
          ? _value.pricingModel
          : pricingModel // ignore: cast_nullable_to_non_nullable
              as PricingModel,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      additionalOptions: additionalOptions == freezed
          ? _value.additionalOptions
          : additionalOptions // ignore: cast_nullable_to_non_nullable
              as List<AdditionalOption>?,
      shippingOptions: shippingOptions == freezed
          ? _value.shippingOptions
          : shippingOptions // ignore: cast_nullable_to_non_nullable
              as List<ShippingFee>?,
      variantOptions: variantOptions == freezed
          ? _value.variantOptions
          : variantOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      listingEndDate: listingEndDate == freezed
          ? _value.listingEndDate
          : listingEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isFavorited: isFavorited == freezed
          ? _value.isFavorited
          : isFavorited // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userRating: userRating == freezed
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as String,
      userListingsCount: userListingsCount == freezed
          ? _value.userListingsCount
          : userListingsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ListingCategoryCopyWith<$Res> get category {
    return $ListingCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $PricingModelCopyWith<$Res> get pricingModel {
    return $PricingModelCopyWith<$Res>(_value.pricingModel, (value) {
      return _then(_value.copyWith(pricingModel: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ListingCopyWith<$Res> implements $ListingCopyWith<$Res> {
  factory _$ListingCopyWith(_Listing value, $Res Function(_Listing) then) =
      __$ListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_id')
          int ownerId,
      @JsonKey(name: "category")
          ListingCategory category,
      @JsonKey(name: "pricing_model")
          PricingModel pricingModel,
      int stock,
      @JsonKey(name: "additional_options")
          List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping_options")
          List<ShippingFee>? shippingOptions,
      @JsonKey(name: "variant_options")
          Map<String, List<String>>? variantOptions,
      @JsonKey(name: "ends_at")
          String? listingEndDate,
      @JsonKey(name: "user")
          User? user,
      @JsonKey(name: "is_favorited")
          dynamic isFavorited,
      @JsonKey(name: "user_rating")
          String userRating,
      @JsonKey(name: "user_listings_count")
          int userListingsCount});

  @override
  $ListingCategoryCopyWith<$Res> get category;
  @override
  $PricingModelCopyWith<$Res> get pricingModel;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$ListingCopyWithImpl<$Res> extends _$ListingCopyWithImpl<$Res>
    implements _$ListingCopyWith<$Res> {
  __$ListingCopyWithImpl(_Listing _value, $Res Function(_Listing) _then)
      : super(_value, (v) => _then(v as _Listing));

  @override
  _Listing get _value => super._value as _Listing;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? category = freezed,
    Object? pricingModel = freezed,
    Object? stock = freezed,
    Object? additionalOptions = freezed,
    Object? shippingOptions = freezed,
    Object? variantOptions = freezed,
    Object? listingEndDate = freezed,
    Object? user = freezed,
    Object? isFavorited = freezed,
    Object? userRating = freezed,
    Object? userListingsCount = freezed,
  }) {
    return _then(_Listing(
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ListingCategory,
      pricingModel == freezed
          ? _value.pricingModel
          : pricingModel // ignore: cast_nullable_to_non_nullable
              as PricingModel,
      stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      additionalOptions == freezed
          ? _value.additionalOptions
          : additionalOptions // ignore: cast_nullable_to_non_nullable
              as List<AdditionalOption>?,
      shippingOptions == freezed
          ? _value.shippingOptions
          : shippingOptions // ignore: cast_nullable_to_non_nullable
              as List<ShippingFee>?,
      variantOptions == freezed
          ? _value.variantOptions
          : variantOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      listingEndDate == freezed
          ? _value.listingEndDate
          : listingEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isFavorited == freezed ? _value.isFavorited : isFavorited,
      userRating == freezed
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as String,
      userListingsCount == freezed
          ? _value.userListingsCount
          : userListingsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Listing with DiagnosticableTreeMixin implements _Listing {
  const _$_Listing(
      @JsonKey(name: 'user_id') this.ownerId,
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "pricing_model") this.pricingModel,
      this.stock,
      @JsonKey(name: "additional_options") this.additionalOptions,
      @JsonKey(name: "shipping_options") this.shippingOptions,
      @JsonKey(name: "variant_options") this.variantOptions,
      @JsonKey(name: "ends_at") this.listingEndDate,
      @JsonKey(name: "user") this.user,
      @JsonKey(name: "is_favorited") this.isFavorited,
      @JsonKey(name: "user_rating") this.userRating,
      @JsonKey(name: "user_listings_count") this.userListingsCount);

  factory _$_Listing.fromJson(Map<String, dynamic> json) =>
      _$$_ListingFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int ownerId;
  @override
  @JsonKey(name: "category")
  final ListingCategory category;
  @override
  @JsonKey(name: "pricing_model")
  final PricingModel pricingModel;
  @override
  final int stock;
  @override
  @JsonKey(name: "additional_options")
  final List<AdditionalOption>? additionalOptions;
  @override
  @JsonKey(name: "shipping_options")
  final List<ShippingFee>? shippingOptions;
  @override
  @JsonKey(name: "variant_options")
  final Map<String, List<String>>? variantOptions;
  @override
  @JsonKey(name: "ends_at")
  final String? listingEndDate;
  @override
  @JsonKey(name: "user")
  final User? user;
  @override
  @JsonKey(name: "is_favorited")
  final dynamic isFavorited;
  @override
  @JsonKey(name: "user_rating")
  final String userRating;
  @override
  @JsonKey(name: "user_listings_count")
  final int userListingsCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Listing(ownerId: $ownerId, category: $category, pricingModel: $pricingModel, stock: $stock, additionalOptions: $additionalOptions, shippingOptions: $shippingOptions, variantOptions: $variantOptions, listingEndDate: $listingEndDate, user: $user, isFavorited: $isFavorited, userRating: $userRating, userListingsCount: $userListingsCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Listing'))
      ..add(DiagnosticsProperty('ownerId', ownerId))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('pricingModel', pricingModel))
      ..add(DiagnosticsProperty('stock', stock))
      ..add(DiagnosticsProperty('additionalOptions', additionalOptions))
      ..add(DiagnosticsProperty('shippingOptions', shippingOptions))
      ..add(DiagnosticsProperty('variantOptions', variantOptions))
      ..add(DiagnosticsProperty('listingEndDate', listingEndDate))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('isFavorited', isFavorited))
      ..add(DiagnosticsProperty('userRating', userRating))
      ..add(DiagnosticsProperty('userListingsCount', userListingsCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Listing &&
            (identical(other.ownerId, ownerId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerId, ownerId)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.pricingModel, pricingModel) ||
                const DeepCollectionEquality()
                    .equals(other.pricingModel, pricingModel)) &&
            (identical(other.stock, stock) ||
                const DeepCollectionEquality().equals(other.stock, stock)) &&
            (identical(other.additionalOptions, additionalOptions) ||
                const DeepCollectionEquality()
                    .equals(other.additionalOptions, additionalOptions)) &&
            (identical(other.shippingOptions, shippingOptions) ||
                const DeepCollectionEquality()
                    .equals(other.shippingOptions, shippingOptions)) &&
            (identical(other.variantOptions, variantOptions) ||
                const DeepCollectionEquality()
                    .equals(other.variantOptions, variantOptions)) &&
            (identical(other.listingEndDate, listingEndDate) ||
                const DeepCollectionEquality()
                    .equals(other.listingEndDate, listingEndDate)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isFavorited, isFavorited) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorited, isFavorited)) &&
            (identical(other.userRating, userRating) ||
                const DeepCollectionEquality()
                    .equals(other.userRating, userRating)) &&
            (identical(other.userListingsCount, userListingsCount) ||
                const DeepCollectionEquality()
                    .equals(other.userListingsCount, userListingsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ownerId) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(pricingModel) ^
      const DeepCollectionEquality().hash(stock) ^
      const DeepCollectionEquality().hash(additionalOptions) ^
      const DeepCollectionEquality().hash(shippingOptions) ^
      const DeepCollectionEquality().hash(variantOptions) ^
      const DeepCollectionEquality().hash(listingEndDate) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isFavorited) ^
      const DeepCollectionEquality().hash(userRating) ^
      const DeepCollectionEquality().hash(userListingsCount);

  @JsonKey(ignore: true)
  @override
  _$ListingCopyWith<_Listing> get copyWith =>
      __$ListingCopyWithImpl<_Listing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingToJson(this);
  }
}

abstract class _Listing implements Listing {
  const factory _Listing(
      @JsonKey(name: 'user_id')
          int ownerId,
      @JsonKey(name: "category")
          ListingCategory category,
      @JsonKey(name: "pricing_model")
          PricingModel pricingModel,
      int stock,
      @JsonKey(name: "additional_options")
          List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping_options")
          List<ShippingFee>? shippingOptions,
      @JsonKey(name: "variant_options")
          Map<String, List<String>>? variantOptions,
      @JsonKey(name: "ends_at")
          String? listingEndDate,
      @JsonKey(name: "user")
          User? user,
      @JsonKey(name: "is_favorited")
          dynamic isFavorited,
      @JsonKey(name: "user_rating")
          String userRating,
      @JsonKey(name: "user_listings_count")
          int userListingsCount) = _$_Listing;

  factory _Listing.fromJson(Map<String, dynamic> json) = _$_Listing.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get ownerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "category")
  ListingCategory get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_model")
  PricingModel get pricingModel => throw _privateConstructorUsedError;
  @override
  int get stock => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "additional_options")
  List<AdditionalOption>? get additionalOptions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "shipping_options")
  List<ShippingFee>? get shippingOptions => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "variant_options")
  Map<String, List<String>>? get variantOptions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "ends_at")
  String? get listingEndDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user")
  User? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "is_favorited")
  dynamic get isFavorited => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_rating")
  String get userRating => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_listings_count")
  int get userListingsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingCopyWith<_Listing> get copyWith =>
      throw _privateConstructorUsedError;
}
