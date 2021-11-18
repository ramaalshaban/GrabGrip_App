// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrdersPage _$OrdersPageFromJson(Map<String, dynamic> json) {
  return _OrdersPage.fromJson(json);
}

/// @nodoc
class _$OrdersPageTearOff {
  const _$OrdersPageTearOff();

  _OrdersPage call(
      @JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int gearsCount,
      @JsonKey(name: 'data') List<Order> orders) {
    return _OrdersPage(
      pageNumber,
      lastPageNumber,
      gearsCount,
      orders,
    );
  }

  OrdersPage fromJson(Map<String, Object> json) {
    return OrdersPage.fromJson(json);
  }
}

/// @nodoc
const $OrdersPage = _$OrdersPageTearOff();

/// @nodoc
mixin _$OrdersPage {
  @JsonKey(name: 'current_page')
  int get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get gearsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Order> get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersPageCopyWith<OrdersPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersPageCopyWith<$Res> {
  factory $OrdersPageCopyWith(
          OrdersPage value, $Res Function(OrdersPage) then) =
      _$OrdersPageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int gearsCount,
      @JsonKey(name: 'data') List<Order> orders});
}

/// @nodoc
class _$OrdersPageCopyWithImpl<$Res> implements $OrdersPageCopyWith<$Res> {
  _$OrdersPageCopyWithImpl(this._value, this._then);

  final OrdersPage _value;
  // ignore: unused_field
  final $Res Function(OrdersPage) _then;

  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? lastPageNumber = freezed,
    Object? gearsCount = freezed,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageNumber: lastPageNumber == freezed
          ? _value.lastPageNumber
          : lastPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      gearsCount: gearsCount == freezed
          ? _value.gearsCount
          : gearsCount // ignore: cast_nullable_to_non_nullable
              as int,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc
abstract class _$OrdersPageCopyWith<$Res> implements $OrdersPageCopyWith<$Res> {
  factory _$OrdersPageCopyWith(
          _OrdersPage value, $Res Function(_OrdersPage) then) =
      __$OrdersPageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int gearsCount,
      @JsonKey(name: 'data') List<Order> orders});
}

/// @nodoc
class __$OrdersPageCopyWithImpl<$Res> extends _$OrdersPageCopyWithImpl<$Res>
    implements _$OrdersPageCopyWith<$Res> {
  __$OrdersPageCopyWithImpl(
      _OrdersPage _value, $Res Function(_OrdersPage) _then)
      : super(_value, (v) => _then(v as _OrdersPage));

  @override
  _OrdersPage get _value => super._value as _OrdersPage;

  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? lastPageNumber = freezed,
    Object? gearsCount = freezed,
    Object? orders = freezed,
  }) {
    return _then(_OrdersPage(
      pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageNumber == freezed
          ? _value.lastPageNumber
          : lastPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      gearsCount == freezed
          ? _value.gearsCount
          : gearsCount // ignore: cast_nullable_to_non_nullable
              as int,
      orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrdersPage with DiagnosticableTreeMixin implements _OrdersPage {
  const _$_OrdersPage(
      @JsonKey(name: 'current_page') this.pageNumber,
      @JsonKey(name: 'last_page') this.lastPageNumber,
      @JsonKey(name: 'total') this.gearsCount,
      @JsonKey(name: 'data') this.orders);

  factory _$_OrdersPage.fromJson(Map<String, dynamic> json) =>
      _$$_OrdersPageFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int pageNumber;
  @override
  @JsonKey(name: 'last_page')
  final int lastPageNumber;
  @override
  @JsonKey(name: 'total')
  final int gearsCount;
  @override
  @JsonKey(name: 'data')
  final List<Order> orders;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrdersPage(pageNumber: $pageNumber, lastPageNumber: $lastPageNumber, gearsCount: $gearsCount, orders: $orders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrdersPage'))
      ..add(DiagnosticsProperty('pageNumber', pageNumber))
      ..add(DiagnosticsProperty('lastPageNumber', lastPageNumber))
      ..add(DiagnosticsProperty('gearsCount', gearsCount))
      ..add(DiagnosticsProperty('orders', orders));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrdersPage &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.lastPageNumber, lastPageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.lastPageNumber, lastPageNumber)) &&
            (identical(other.gearsCount, gearsCount) ||
                const DeepCollectionEquality()
                    .equals(other.gearsCount, gearsCount)) &&
            (identical(other.orders, orders) ||
                const DeepCollectionEquality().equals(other.orders, orders)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(lastPageNumber) ^
      const DeepCollectionEquality().hash(gearsCount) ^
      const DeepCollectionEquality().hash(orders);

  @JsonKey(ignore: true)
  @override
  _$OrdersPageCopyWith<_OrdersPage> get copyWith =>
      __$OrdersPageCopyWithImpl<_OrdersPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrdersPageToJson(this);
  }
}

abstract class _OrdersPage implements OrdersPage {
  const factory _OrdersPage(
      @JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int gearsCount,
      @JsonKey(name: 'data') List<Order> orders) = _$_OrdersPage;

  factory _OrdersPage.fromJson(Map<String, dynamic> json) =
      _$_OrdersPage.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get pageNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_page')
  int get lastPageNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total')
  int get gearsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'data')
  List<Order> get orders => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrdersPageCopyWith<_OrdersPage> get copyWith =>
      throw _privateConstructorUsedError;
}
