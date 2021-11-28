// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shipping_fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingFee _$ShippingFeeFromJson(Map<String, dynamic> json) {
  return _ShippingFee.fromJson(json);
}

/// @nodoc
class _$ShippingFeeTearOff {
  const _$ShippingFeeTearOff();

  _ShippingFee call({int? id, String? name, String? price}) {
    return _ShippingFee(
      id: id,
      name: name,
      price: price,
    );
  }

  ShippingFee fromJson(Map<String, Object> json) {
    return ShippingFee.fromJson(json);
  }
}

/// @nodoc
const $ShippingFee = _$ShippingFeeTearOff();

/// @nodoc
mixin _$ShippingFee {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingFeeCopyWith<ShippingFee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingFeeCopyWith<$Res> {
  factory $ShippingFeeCopyWith(
          ShippingFee value, $Res Function(ShippingFee) then) =
      _$ShippingFeeCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? price});
}

/// @nodoc
class _$ShippingFeeCopyWithImpl<$Res> implements $ShippingFeeCopyWith<$Res> {
  _$ShippingFeeCopyWithImpl(this._value, this._then);

  final ShippingFee _value;
  // ignore: unused_field
  final $Res Function(ShippingFee) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShippingFeeCopyWith<$Res>
    implements $ShippingFeeCopyWith<$Res> {
  factory _$ShippingFeeCopyWith(
          _ShippingFee value, $Res Function(_ShippingFee) then) =
      __$ShippingFeeCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? price});
}

/// @nodoc
class __$ShippingFeeCopyWithImpl<$Res> extends _$ShippingFeeCopyWithImpl<$Res>
    implements _$ShippingFeeCopyWith<$Res> {
  __$ShippingFeeCopyWithImpl(
      _ShippingFee _value, $Res Function(_ShippingFee) _then)
      : super(_value, (v) => _then(v as _ShippingFee));

  @override
  _ShippingFee get _value => super._value as _ShippingFee;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_ShippingFee(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingFee with DiagnosticableTreeMixin implements _ShippingFee {
  const _$_ShippingFee({this.id, this.name, this.price});

  factory _$_ShippingFee.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingFeeFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShippingFee(id: $id, name: $name, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShippingFee'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShippingFee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$ShippingFeeCopyWith<_ShippingFee> get copyWith =>
      __$ShippingFeeCopyWithImpl<_ShippingFee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingFeeToJson(this);
  }
}

abstract class _ShippingFee implements ShippingFee {
  const factory _ShippingFee({int? id, String? name, String? price}) =
      _$_ShippingFee;

  factory _ShippingFee.fromJson(Map<String, dynamic> json) =
      _$_ShippingFee.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShippingFeeCopyWith<_ShippingFee> get copyWith =>
      throw _privateConstructorUsedError;
}
