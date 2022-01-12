// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pricing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pricing _$PricingFromJson(Map<String, dynamic> json) {
  return _Pricing.fromJson(json);
}

/// @nodoc
class _$PricingTearOff {
  const _$PricingTearOff();

  _Pricing call(@JsonKey(name: "user_choice") List<UserChoice> userChoices,
      @JsonKey(name: "price_items") List<PriceItem> priceItems, double total) {
    return _Pricing(
      userChoices,
      priceItems,
      total,
    );
  }

  Pricing fromJson(Map<String, Object> json) {
    return Pricing.fromJson(json);
  }
}

/// @nodoc
const $Pricing = _$PricingTearOff();

/// @nodoc
mixin _$Pricing {
  @JsonKey(name: "user_choice")
  List<UserChoice> get userChoices => throw _privateConstructorUsedError;
  @JsonKey(name: "price_items")
  List<PriceItem> get priceItems => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingCopyWith<Pricing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingCopyWith<$Res> {
  factory $PricingCopyWith(Pricing value, $Res Function(Pricing) then) =
      _$PricingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "user_choice") List<UserChoice> userChoices,
      @JsonKey(name: "price_items") List<PriceItem> priceItems,
      double total});
}

/// @nodoc
class _$PricingCopyWithImpl<$Res> implements $PricingCopyWith<$Res> {
  _$PricingCopyWithImpl(this._value, this._then);

  final Pricing _value;
  // ignore: unused_field
  final $Res Function(Pricing) _then;

  @override
  $Res call({
    Object? userChoices = freezed,
    Object? priceItems = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      userChoices: userChoices == freezed
          ? _value.userChoices
          : userChoices // ignore: cast_nullable_to_non_nullable
              as List<UserChoice>,
      priceItems: priceItems == freezed
          ? _value.priceItems
          : priceItems // ignore: cast_nullable_to_non_nullable
              as List<PriceItem>,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PricingCopyWith<$Res> implements $PricingCopyWith<$Res> {
  factory _$PricingCopyWith(_Pricing value, $Res Function(_Pricing) then) =
      __$PricingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "user_choice") List<UserChoice> userChoices,
      @JsonKey(name: "price_items") List<PriceItem> priceItems,
      double total});
}

/// @nodoc
class __$PricingCopyWithImpl<$Res> extends _$PricingCopyWithImpl<$Res>
    implements _$PricingCopyWith<$Res> {
  __$PricingCopyWithImpl(_Pricing _value, $Res Function(_Pricing) _then)
      : super(_value, (v) => _then(v as _Pricing));

  @override
  _Pricing get _value => super._value as _Pricing;

  @override
  $Res call({
    Object? userChoices = freezed,
    Object? priceItems = freezed,
    Object? total = freezed,
  }) {
    return _then(_Pricing(
      userChoices == freezed
          ? _value.userChoices
          : userChoices // ignore: cast_nullable_to_non_nullable
              as List<UserChoice>,
      priceItems == freezed
          ? _value.priceItems
          : priceItems // ignore: cast_nullable_to_non_nullable
              as List<PriceItem>,
      total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pricing with DiagnosticableTreeMixin implements _Pricing {
  const _$_Pricing(@JsonKey(name: "user_choice") this.userChoices,
      @JsonKey(name: "price_items") this.priceItems, this.total);

  factory _$_Pricing.fromJson(Map<String, dynamic> json) =>
      _$$_PricingFromJson(json);

  @override
  @JsonKey(name: "user_choice")
  final List<UserChoice> userChoices;
  @override
  @JsonKey(name: "price_items")
  final List<PriceItem> priceItems;
  @override
  final double total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pricing(userChoices: $userChoices, priceItems: $priceItems, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pricing'))
      ..add(DiagnosticsProperty('userChoices', userChoices))
      ..add(DiagnosticsProperty('priceItems', priceItems))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pricing &&
            (identical(other.userChoices, userChoices) ||
                const DeepCollectionEquality()
                    .equals(other.userChoices, userChoices)) &&
            (identical(other.priceItems, priceItems) ||
                const DeepCollectionEquality()
                    .equals(other.priceItems, priceItems)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userChoices) ^
      const DeepCollectionEquality().hash(priceItems) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$PricingCopyWith<_Pricing> get copyWith =>
      __$PricingCopyWithImpl<_Pricing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricingToJson(this);
  }
}

abstract class _Pricing implements Pricing {
  const factory _Pricing(
      @JsonKey(name: "user_choice") List<UserChoice> userChoices,
      @JsonKey(name: "price_items") List<PriceItem> priceItems,
      double total) = _$_Pricing;

  factory _Pricing.fromJson(Map<String, dynamic> json) = _$_Pricing.fromJson;

  @override
  @JsonKey(name: "user_choice")
  List<UserChoice> get userChoices => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "price_items")
  List<PriceItem> get priceItems => throw _privateConstructorUsedError;
  @override
  double get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PricingCopyWith<_Pricing> get copyWith =>
      throw _privateConstructorUsedError;
}
