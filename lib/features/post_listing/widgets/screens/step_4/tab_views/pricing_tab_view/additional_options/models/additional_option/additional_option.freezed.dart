// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'additional_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdditionalOption _$AdditionalOptionFromJson(Map<String, dynamic> json) {
  return _AdditionalOption.fromJson(json);
}

/// @nodoc
class _$AdditionalOptionTearOff {
  const _$AdditionalOptionTearOff();

  _AdditionalOption call(
      {int? id,
      String? name,
      String? price,
      @JsonKey(name: "max_quantity") int? maxQuantity}) {
    return _AdditionalOption(
      id: id,
      name: name,
      price: price,
      maxQuantity: maxQuantity,
    );
  }

  AdditionalOption fromJson(Map<String, Object> json) {
    return AdditionalOption.fromJson(json);
  }
}

/// @nodoc
const $AdditionalOption = _$AdditionalOptionTearOff();

/// @nodoc
mixin _$AdditionalOption {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "max_quantity")
  int? get maxQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalOptionCopyWith<AdditionalOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalOptionCopyWith<$Res> {
  factory $AdditionalOptionCopyWith(
          AdditionalOption value, $Res Function(AdditionalOption) then) =
      _$AdditionalOptionCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? price,
      @JsonKey(name: "max_quantity") int? maxQuantity});
}

/// @nodoc
class _$AdditionalOptionCopyWithImpl<$Res>
    implements $AdditionalOptionCopyWith<$Res> {
  _$AdditionalOptionCopyWithImpl(this._value, this._then);

  final AdditionalOption _value;
  // ignore: unused_field
  final $Res Function(AdditionalOption) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? maxQuantity = freezed,
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
      maxQuantity: maxQuantity == freezed
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AdditionalOptionCopyWith<$Res>
    implements $AdditionalOptionCopyWith<$Res> {
  factory _$AdditionalOptionCopyWith(
          _AdditionalOption value, $Res Function(_AdditionalOption) then) =
      __$AdditionalOptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? price,
      @JsonKey(name: "max_quantity") int? maxQuantity});
}

/// @nodoc
class __$AdditionalOptionCopyWithImpl<$Res>
    extends _$AdditionalOptionCopyWithImpl<$Res>
    implements _$AdditionalOptionCopyWith<$Res> {
  __$AdditionalOptionCopyWithImpl(
      _AdditionalOption _value, $Res Function(_AdditionalOption) _then)
      : super(_value, (v) => _then(v as _AdditionalOption));

  @override
  _AdditionalOption get _value => super._value as _AdditionalOption;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? maxQuantity = freezed,
  }) {
    return _then(_AdditionalOption(
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
      maxQuantity: maxQuantity == freezed
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdditionalOption
    with DiagnosticableTreeMixin
    implements _AdditionalOption {
  const _$_AdditionalOption(
      {this.id,
      this.name,
      this.price,
      @JsonKey(name: "max_quantity") this.maxQuantity});

  factory _$_AdditionalOption.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionalOptionFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? price;
  @override
  @JsonKey(name: "max_quantity")
  final int? maxQuantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdditionalOption(id: $id, name: $name, price: $price, maxQuantity: $maxQuantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdditionalOption'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('maxQuantity', maxQuantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdditionalOption &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.maxQuantity, maxQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.maxQuantity, maxQuantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(maxQuantity);

  @JsonKey(ignore: true)
  @override
  _$AdditionalOptionCopyWith<_AdditionalOption> get copyWith =>
      __$AdditionalOptionCopyWithImpl<_AdditionalOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdditionalOptionToJson(this);
  }
}

abstract class _AdditionalOption implements AdditionalOption {
  const factory _AdditionalOption(
      {int? id,
      String? name,
      String? price,
      @JsonKey(name: "max_quantity") int? maxQuantity}) = _$_AdditionalOption;

  factory _AdditionalOption.fromJson(Map<String, dynamic> json) =
      _$_AdditionalOption.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "max_quantity")
  int? get maxQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdditionalOptionCopyWith<_AdditionalOption> get copyWith =>
      throw _privateConstructorUsedError;
}
