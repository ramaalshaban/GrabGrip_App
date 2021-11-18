// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
class _$OrderTearOff {
  const _$OrderTearOff();

  _Order call(
      String hash,
      int id,
      String status,
      @JsonKey(name: 'created_at') String orderingDate,
      String amount,
      String currency,
      @JsonKey(name: 'stock') int? stockQuantity,
      @JsonKey(name: 'listing') Gear orderedGear,
      @JsonKey(name: 'user') User? orderOwner) {
    return _Order(
      hash,
      id,
      status,
      orderingDate,
      amount,
      currency,
      stockQuantity,
      orderedGear,
      orderOwner,
    );
  }

  Order fromJson(Map<String, Object> json) {
    return Order.fromJson(json);
  }
}

/// @nodoc
const $Order = _$OrderTearOff();

/// @nodoc
mixin _$Order {
  String get hash => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get orderingDate => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int? get stockQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'listing')
  Gear get orderedGear => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User? get orderOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {String hash,
      int id,
      String status,
      @JsonKey(name: 'created_at') String orderingDate,
      String amount,
      String currency,
      @JsonKey(name: 'stock') int? stockQuantity,
      @JsonKey(name: 'listing') Gear orderedGear,
      @JsonKey(name: 'user') User? orderOwner});

  $GearCopyWith<$Res> get orderedGear;
  $UserCopyWith<$Res>? get orderOwner;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? orderingDate = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? stockQuantity = freezed,
    Object? orderedGear = freezed,
    Object? orderOwner = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderingDate: orderingDate == freezed
          ? _value.orderingDate
          : orderingDate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      stockQuantity: stockQuantity == freezed
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      orderedGear: orderedGear == freezed
          ? _value.orderedGear
          : orderedGear // ignore: cast_nullable_to_non_nullable
              as Gear,
      orderOwner: orderOwner == freezed
          ? _value.orderOwner
          : orderOwner // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $GearCopyWith<$Res> get orderedGear {
    return $GearCopyWith<$Res>(_value.orderedGear, (value) {
      return _then(_value.copyWith(orderedGear: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get orderOwner {
    if (_value.orderOwner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.orderOwner!, (value) {
      return _then(_value.copyWith(orderOwner: value));
    });
  }
}

/// @nodoc
abstract class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) then) =
      __$OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String hash,
      int id,
      String status,
      @JsonKey(name: 'created_at') String orderingDate,
      String amount,
      String currency,
      @JsonKey(name: 'stock') int? stockQuantity,
      @JsonKey(name: 'listing') Gear orderedGear,
      @JsonKey(name: 'user') User? orderOwner});

  @override
  $GearCopyWith<$Res> get orderedGear;
  @override
  $UserCopyWith<$Res>? get orderOwner;
}

/// @nodoc
class __$OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(_Order _value, $Res Function(_Order) _then)
      : super(_value, (v) => _then(v as _Order));

  @override
  _Order get _value => super._value as _Order;

  @override
  $Res call({
    Object? hash = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? orderingDate = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? stockQuantity = freezed,
    Object? orderedGear = freezed,
    Object? orderOwner = freezed,
  }) {
    return _then(_Order(
      hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderingDate == freezed
          ? _value.orderingDate
          : orderingDate // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      stockQuantity == freezed
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      orderedGear == freezed
          ? _value.orderedGear
          : orderedGear // ignore: cast_nullable_to_non_nullable
              as Gear,
      orderOwner == freezed
          ? _value.orderOwner
          : orderOwner // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order with DiagnosticableTreeMixin implements _Order {
  const _$_Order(
      this.hash,
      this.id,
      this.status,
      @JsonKey(name: 'created_at') this.orderingDate,
      this.amount,
      this.currency,
      @JsonKey(name: 'stock') this.stockQuantity,
      @JsonKey(name: 'listing') this.orderedGear,
      @JsonKey(name: 'user') this.orderOwner);

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final String hash;
  @override
  final int id;
  @override
  final String status;
  @override
  @JsonKey(name: 'created_at')
  final String orderingDate;
  @override
  final String amount;
  @override
  final String currency;
  @override
  @JsonKey(name: 'stock')
  final int? stockQuantity;
  @override
  @JsonKey(name: 'listing')
  final Gear orderedGear;
  @override
  @JsonKey(name: 'user')
  final User? orderOwner;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Order(hash: $hash, id: $id, status: $status, orderingDate: $orderingDate, amount: $amount, currency: $currency, stockQuantity: $stockQuantity, orderedGear: $orderedGear, orderOwner: $orderOwner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Order'))
      ..add(DiagnosticsProperty('hash', hash))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('orderingDate', orderingDate))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('currency', currency))
      ..add(DiagnosticsProperty('stockQuantity', stockQuantity))
      ..add(DiagnosticsProperty('orderedGear', orderedGear))
      ..add(DiagnosticsProperty('orderOwner', orderOwner));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Order &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.orderingDate, orderingDate) ||
                const DeepCollectionEquality()
                    .equals(other.orderingDate, orderingDate)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.stockQuantity, stockQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.stockQuantity, stockQuantity)) &&
            (identical(other.orderedGear, orderedGear) ||
                const DeepCollectionEquality()
                    .equals(other.orderedGear, orderedGear)) &&
            (identical(other.orderOwner, orderOwner) ||
                const DeepCollectionEquality()
                    .equals(other.orderOwner, orderOwner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(orderingDate) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(stockQuantity) ^
      const DeepCollectionEquality().hash(orderedGear) ^
      const DeepCollectionEquality().hash(orderOwner);

  @JsonKey(ignore: true)
  @override
  _$OrderCopyWith<_Order> get copyWith =>
      __$OrderCopyWithImpl<_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(this);
  }
}

abstract class _Order implements Order {
  const factory _Order(
      String hash,
      int id,
      String status,
      @JsonKey(name: 'created_at') String orderingDate,
      String amount,
      String currency,
      @JsonKey(name: 'stock') int? stockQuantity,
      @JsonKey(name: 'listing') Gear orderedGear,
      @JsonKey(name: 'user') User? orderOwner) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  String get hash => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get orderingDate => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stock')
  int? get stockQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'listing')
  Gear get orderedGear => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user')
  User? get orderOwner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderCopyWith<_Order> get copyWith => throw _privateConstructorUsedError;
}
