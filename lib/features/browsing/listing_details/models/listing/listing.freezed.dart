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
      @JsonKey(name: "category")
          ListingCategory category,
      @JsonKey(name: "pricing_model")
          PricingModel pricingModel,
      @JsonKey(name: "additional_options")
          List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping_options")
          List<ShippingFee>? shippingOptions,
      @JsonKey(name: "variant_options")
          Map<String, List<String>>? variantOptions,
      @JsonKey(name: "user")
          User? user) {
    return _Listing(
      category,
      pricingModel,
      additionalOptions,
      shippingOptions,
      variantOptions,
      user,
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
  @JsonKey(name: "category")
  ListingCategory get category => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_model")
  PricingModel get pricingModel => throw _privateConstructorUsedError;
  @JsonKey(name: "additional_options")
  List<AdditionalOption>? get additionalOptions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_options")
  List<ShippingFee>? get shippingOptions => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_options")
  Map<String, List<String>>? get variantOptions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingCopyWith<Listing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingCopyWith<$Res> {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) then) =
      _$ListingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "category")
          ListingCategory category,
      @JsonKey(name: "pricing_model")
          PricingModel pricingModel,
      @JsonKey(name: "additional_options")
          List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping_options")
          List<ShippingFee>? shippingOptions,
      @JsonKey(name: "variant_options")
          Map<String, List<String>>? variantOptions,
      @JsonKey(name: "user")
          User? user});

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
    Object? category = freezed,
    Object? pricingModel = freezed,
    Object? additionalOptions = freezed,
    Object? shippingOptions = freezed,
    Object? variantOptions = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ListingCategory,
      pricingModel: pricingModel == freezed
          ? _value.pricingModel
          : pricingModel // ignore: cast_nullable_to_non_nullable
              as PricingModel,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
      {@JsonKey(name: "category")
          ListingCategory category,
      @JsonKey(name: "pricing_model")
          PricingModel pricingModel,
      @JsonKey(name: "additional_options")
          List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping_options")
          List<ShippingFee>? shippingOptions,
      @JsonKey(name: "variant_options")
          Map<String, List<String>>? variantOptions,
      @JsonKey(name: "user")
          User? user});

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
    Object? category = freezed,
    Object? pricingModel = freezed,
    Object? additionalOptions = freezed,
    Object? shippingOptions = freezed,
    Object? variantOptions = freezed,
    Object? user = freezed,
  }) {
    return _then(_Listing(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ListingCategory,
      pricingModel == freezed
          ? _value.pricingModel
          : pricingModel // ignore: cast_nullable_to_non_nullable
              as PricingModel,
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
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Listing with DiagnosticableTreeMixin implements _Listing {
  const _$_Listing(
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "pricing_model") this.pricingModel,
      @JsonKey(name: "additional_options") this.additionalOptions,
      @JsonKey(name: "shipping_options") this.shippingOptions,
      @JsonKey(name: "variant_options") this.variantOptions,
      @JsonKey(name: "user") this.user);

  factory _$_Listing.fromJson(Map<String, dynamic> json) =>
      _$$_ListingFromJson(json);

  @override
  @JsonKey(name: "category")
  final ListingCategory category;
  @override
  @JsonKey(name: "pricing_model")
  final PricingModel pricingModel;
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
  @JsonKey(name: "user")
  final User? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Listing(category: $category, pricingModel: $pricingModel, additionalOptions: $additionalOptions, shippingOptions: $shippingOptions, variantOptions: $variantOptions, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Listing'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('pricingModel', pricingModel))
      ..add(DiagnosticsProperty('additionalOptions', additionalOptions))
      ..add(DiagnosticsProperty('shippingOptions', shippingOptions))
      ..add(DiagnosticsProperty('variantOptions', variantOptions))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Listing &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.pricingModel, pricingModel) ||
                const DeepCollectionEquality()
                    .equals(other.pricingModel, pricingModel)) &&
            (identical(other.additionalOptions, additionalOptions) ||
                const DeepCollectionEquality()
                    .equals(other.additionalOptions, additionalOptions)) &&
            (identical(other.shippingOptions, shippingOptions) ||
                const DeepCollectionEquality()
                    .equals(other.shippingOptions, shippingOptions)) &&
            (identical(other.variantOptions, variantOptions) ||
                const DeepCollectionEquality()
                    .equals(other.variantOptions, variantOptions)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(pricingModel) ^
      const DeepCollectionEquality().hash(additionalOptions) ^
      const DeepCollectionEquality().hash(shippingOptions) ^
      const DeepCollectionEquality().hash(variantOptions) ^
      const DeepCollectionEquality().hash(user);

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
      @JsonKey(name: "category")
          ListingCategory category,
      @JsonKey(name: "pricing_model")
          PricingModel pricingModel,
      @JsonKey(name: "additional_options")
          List<AdditionalOption>? additionalOptions,
      @JsonKey(name: "shipping_options")
          List<ShippingFee>? shippingOptions,
      @JsonKey(name: "variant_options")
          Map<String, List<String>>? variantOptions,
      @JsonKey(name: "user")
          User? user) = _$_Listing;

  factory _Listing.fromJson(Map<String, dynamic> json) = _$_Listing.fromJson;

  @override
  @JsonKey(name: "category")
  ListingCategory get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_model")
  PricingModel get pricingModel => throw _privateConstructorUsedError;
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
  @JsonKey(name: "user")
  User? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingCopyWith<_Listing> get copyWith =>
      throw _privateConstructorUsedError;
}
