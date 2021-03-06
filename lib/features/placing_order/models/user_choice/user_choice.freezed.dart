// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserChoice _$UserChoiceFromJson(Map<String, dynamic> json) {
  return _UserChoice.fromJson(json);
}

/// @nodoc
class _$UserChoiceTearOff {
  const _$UserChoiceTearOff();

  _UserChoice call(
      String name, String value, String group, String? price, int? quantity) {
    return _UserChoice(
      name,
      value,
      group,
      price,
      quantity,
    );
  }

  UserChoice fromJson(Map<String, Object> json) {
    return UserChoice.fromJson(json);
  }
}

/// @nodoc
const $UserChoice = _$UserChoiceTearOff();

/// @nodoc
mixin _$UserChoice {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserChoiceCopyWith<UserChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserChoiceCopyWith<$Res> {
  factory $UserChoiceCopyWith(
          UserChoice value, $Res Function(UserChoice) then) =
      _$UserChoiceCopyWithImpl<$Res>;
  $Res call(
      {String name, String value, String group, String? price, int? quantity});
}

/// @nodoc
class _$UserChoiceCopyWithImpl<$Res> implements $UserChoiceCopyWith<$Res> {
  _$UserChoiceCopyWithImpl(this._value, this._then);

  final UserChoice _value;
  // ignore: unused_field
  final $Res Function(UserChoice) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? group = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserChoiceCopyWith<$Res> implements $UserChoiceCopyWith<$Res> {
  factory _$UserChoiceCopyWith(
          _UserChoice value, $Res Function(_UserChoice) then) =
      __$UserChoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String value, String group, String? price, int? quantity});
}

/// @nodoc
class __$UserChoiceCopyWithImpl<$Res> extends _$UserChoiceCopyWithImpl<$Res>
    implements _$UserChoiceCopyWith<$Res> {
  __$UserChoiceCopyWithImpl(
      _UserChoice _value, $Res Function(_UserChoice) _then)
      : super(_value, (v) => _then(v as _UserChoice));

  @override
  _UserChoice get _value => super._value as _UserChoice;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? group = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_UserChoice(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserChoice with DiagnosticableTreeMixin implements _UserChoice {
  const _$_UserChoice(
      this.name, this.value, this.group, this.price, this.quantity);

  factory _$_UserChoice.fromJson(Map<String, dynamic> json) =>
      _$$_UserChoiceFromJson(json);

  @override
  final String name;
  @override
  final String value;
  @override
  final String group;
  @override
  final String? price;
  @override
  final int? quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserChoice(name: $name, value: $value, group: $group, price: $price, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserChoice'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('group', group))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserChoice &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  _$UserChoiceCopyWith<_UserChoice> get copyWith =>
      __$UserChoiceCopyWithImpl<_UserChoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserChoiceToJson(this);
  }
}

abstract class _UserChoice implements UserChoice {
  const factory _UserChoice(String name, String value, String group,
      String? price, int? quantity) = _$_UserChoice;

  factory _UserChoice.fromJson(Map<String, dynamic> json) =
      _$_UserChoice.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get value => throw _privateConstructorUsedError;
  @override
  String get group => throw _privateConstructorUsedError;
  @override
  String? get price => throw _privateConstructorUsedError;
  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserChoiceCopyWith<_UserChoice> get copyWith =>
      throw _privateConstructorUsedError;
}
