// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listing_pricing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListingPricingModelTearOff {
  const _$ListingPricingModelTearOff();

  _ListingPricingModel call(int additionalOptionsLength, int shippingFeesLength,
      int variationsLength) {
    return _ListingPricingModel(
      additionalOptionsLength,
      shippingFeesLength,
      variationsLength,
    );
  }
}

/// @nodoc
const $ListingPricingModel = _$ListingPricingModelTearOff();

/// @nodoc
mixin _$ListingPricingModel {
  int get additionalOptionsLength => throw _privateConstructorUsedError;
  int get shippingFeesLength => throw _privateConstructorUsedError;
  int get variationsLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListingPricingModelCopyWith<ListingPricingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingPricingModelCopyWith<$Res> {
  factory $ListingPricingModelCopyWith(
          ListingPricingModel value, $Res Function(ListingPricingModel) then) =
      _$ListingPricingModelCopyWithImpl<$Res>;
  $Res call(
      {int additionalOptionsLength,
      int shippingFeesLength,
      int variationsLength});
}

/// @nodoc
class _$ListingPricingModelCopyWithImpl<$Res>
    implements $ListingPricingModelCopyWith<$Res> {
  _$ListingPricingModelCopyWithImpl(this._value, this._then);

  final ListingPricingModel _value;
  // ignore: unused_field
  final $Res Function(ListingPricingModel) _then;

  @override
  $Res call({
    Object? additionalOptionsLength = freezed,
    Object? shippingFeesLength = freezed,
    Object? variationsLength = freezed,
  }) {
    return _then(_value.copyWith(
      additionalOptionsLength: additionalOptionsLength == freezed
          ? _value.additionalOptionsLength
          : additionalOptionsLength // ignore: cast_nullable_to_non_nullable
              as int,
      shippingFeesLength: shippingFeesLength == freezed
          ? _value.shippingFeesLength
          : shippingFeesLength // ignore: cast_nullable_to_non_nullable
              as int,
      variationsLength: variationsLength == freezed
          ? _value.variationsLength
          : variationsLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ListingPricingModelCopyWith<$Res>
    implements $ListingPricingModelCopyWith<$Res> {
  factory _$ListingPricingModelCopyWith(_ListingPricingModel value,
          $Res Function(_ListingPricingModel) then) =
      __$ListingPricingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int additionalOptionsLength,
      int shippingFeesLength,
      int variationsLength});
}

/// @nodoc
class __$ListingPricingModelCopyWithImpl<$Res>
    extends _$ListingPricingModelCopyWithImpl<$Res>
    implements _$ListingPricingModelCopyWith<$Res> {
  __$ListingPricingModelCopyWithImpl(
      _ListingPricingModel _value, $Res Function(_ListingPricingModel) _then)
      : super(_value, (v) => _then(v as _ListingPricingModel));

  @override
  _ListingPricingModel get _value => super._value as _ListingPricingModel;

  @override
  $Res call({
    Object? additionalOptionsLength = freezed,
    Object? shippingFeesLength = freezed,
    Object? variationsLength = freezed,
  }) {
    return _then(_ListingPricingModel(
      additionalOptionsLength == freezed
          ? _value.additionalOptionsLength
          : additionalOptionsLength // ignore: cast_nullable_to_non_nullable
              as int,
      shippingFeesLength == freezed
          ? _value.shippingFeesLength
          : shippingFeesLength // ignore: cast_nullable_to_non_nullable
              as int,
      variationsLength == freezed
          ? _value.variationsLength
          : variationsLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ListingPricingModel
    with DiagnosticableTreeMixin
    implements _ListingPricingModel {
  const _$_ListingPricingModel(this.additionalOptionsLength,
      this.shippingFeesLength, this.variationsLength);

  @override
  final int additionalOptionsLength;
  @override
  final int shippingFeesLength;
  @override
  final int variationsLength;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListingPricingModel(additionalOptionsLength: $additionalOptionsLength, shippingFeesLength: $shippingFeesLength, variationsLength: $variationsLength)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListingPricingModel'))
      ..add(DiagnosticsProperty(
          'additionalOptionsLength', additionalOptionsLength))
      ..add(DiagnosticsProperty('shippingFeesLength', shippingFeesLength))
      ..add(DiagnosticsProperty('variationsLength', variationsLength));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListingPricingModel &&
            (identical(
                    other.additionalOptionsLength, additionalOptionsLength) ||
                const DeepCollectionEquality().equals(
                    other.additionalOptionsLength, additionalOptionsLength)) &&
            (identical(other.shippingFeesLength, shippingFeesLength) ||
                const DeepCollectionEquality()
                    .equals(other.shippingFeesLength, shippingFeesLength)) &&
            (identical(other.variationsLength, variationsLength) ||
                const DeepCollectionEquality()
                    .equals(other.variationsLength, variationsLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(additionalOptionsLength) ^
      const DeepCollectionEquality().hash(shippingFeesLength) ^
      const DeepCollectionEquality().hash(variationsLength);

  @JsonKey(ignore: true)
  @override
  _$ListingPricingModelCopyWith<_ListingPricingModel> get copyWith =>
      __$ListingPricingModelCopyWithImpl<_ListingPricingModel>(
          this, _$identity);
}

abstract class _ListingPricingModel implements ListingPricingModel {
  const factory _ListingPricingModel(int additionalOptionsLength,
      int shippingFeesLength, int variationsLength) = _$_ListingPricingModel;

  @override
  int get additionalOptionsLength => throw _privateConstructorUsedError;
  @override
  int get shippingFeesLength => throw _privateConstructorUsedError;
  @override
  int get variationsLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingPricingModelCopyWith<_ListingPricingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
