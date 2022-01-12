// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceItem _$PriceItemFromJson(Map<String, dynamic> json) {
  return _PriceItem.fromJson(json);
}

/// @nodoc
class _$PriceItemTearOff {
  const _$PriceItemTearOff();

  _PriceItem call(String label, double price) {
    return _PriceItem(
      label,
      price,
    );
  }

  PriceItem fromJson(Map<String, Object> json) {
    return PriceItem.fromJson(json);
  }
}

/// @nodoc
const $PriceItem = _$PriceItemTearOff();

/// @nodoc
mixin _$PriceItem {
  String get label => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceItemCopyWith<PriceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceItemCopyWith<$Res> {
  factory $PriceItemCopyWith(PriceItem value, $Res Function(PriceItem) then) =
      _$PriceItemCopyWithImpl<$Res>;
  $Res call({String label, double price});
}

/// @nodoc
class _$PriceItemCopyWithImpl<$Res> implements $PriceItemCopyWith<$Res> {
  _$PriceItemCopyWithImpl(this._value, this._then);

  final PriceItem _value;
  // ignore: unused_field
  final $Res Function(PriceItem) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PriceItemCopyWith<$Res> implements $PriceItemCopyWith<$Res> {
  factory _$PriceItemCopyWith(
          _PriceItem value, $Res Function(_PriceItem) then) =
      __$PriceItemCopyWithImpl<$Res>;
  @override
  $Res call({String label, double price});
}

/// @nodoc
class __$PriceItemCopyWithImpl<$Res> extends _$PriceItemCopyWithImpl<$Res>
    implements _$PriceItemCopyWith<$Res> {
  __$PriceItemCopyWithImpl(_PriceItem _value, $Res Function(_PriceItem) _then)
      : super(_value, (v) => _then(v as _PriceItem));

  @override
  _PriceItem get _value => super._value as _PriceItem;

  @override
  $Res call({
    Object? label = freezed,
    Object? price = freezed,
  }) {
    return _then(_PriceItem(
      label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceItem with DiagnosticableTreeMixin implements _PriceItem {
  const _$_PriceItem(this.label, this.price);

  factory _$_PriceItem.fromJson(Map<String, dynamic> json) =>
      _$$_PriceItemFromJson(json);

  @override
  final String label;
  @override
  final double price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceItem(label: $label, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceItem'))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceItem &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$PriceItemCopyWith<_PriceItem> get copyWith =>
      __$PriceItemCopyWithImpl<_PriceItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceItemToJson(this);
  }
}

abstract class _PriceItem implements PriceItem {
  const factory _PriceItem(String label, double price) = _$_PriceItem;

  factory _PriceItem.fromJson(Map<String, dynamic> json) =
      _$_PriceItem.fromJson;

  @override
  String get label => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PriceItemCopyWith<_PriceItem> get copyWith =>
      throw _privateConstructorUsedError;
}
