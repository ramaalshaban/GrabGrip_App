// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'browse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrowseModel _$BrowseModelFromJson(Map<String, dynamic> json) {
  return _BrowseModel.fromJson(json);
}

/// @nodoc
class _$BrowseModelTearOff {
  const _$BrowseModelTearOff();

  _BrowseModel call(@JsonKey(name: 'listings') Listing data) {
    return _BrowseModel(
      data,
    );
  }

  BrowseModel fromJson(Map<String, Object> json) {
    return BrowseModel.fromJson(json);
  }
}

/// @nodoc
const $BrowseModel = _$BrowseModelTearOff();

/// @nodoc
mixin _$BrowseModel {
  @JsonKey(name: 'listings')
  Listing get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrowseModelCopyWith<BrowseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrowseModelCopyWith<$Res> {
  factory $BrowseModelCopyWith(
          BrowseModel value, $Res Function(BrowseModel) then) =
      _$BrowseModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'listings') Listing data});

  $ListingCopyWith<$Res> get data;
}

/// @nodoc
class _$BrowseModelCopyWithImpl<$Res> implements $BrowseModelCopyWith<$Res> {
  _$BrowseModelCopyWithImpl(this._value, this._then);

  final BrowseModel _value;
  // ignore: unused_field
  final $Res Function(BrowseModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Listing,
    ));
  }

  @override
  $ListingCopyWith<$Res> get data {
    return $ListingCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$BrowseModelCopyWith<$Res>
    implements $BrowseModelCopyWith<$Res> {
  factory _$BrowseModelCopyWith(
          _BrowseModel value, $Res Function(_BrowseModel) then) =
      __$BrowseModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'listings') Listing data});

  @override
  $ListingCopyWith<$Res> get data;
}

/// @nodoc
class __$BrowseModelCopyWithImpl<$Res> extends _$BrowseModelCopyWithImpl<$Res>
    implements _$BrowseModelCopyWith<$Res> {
  __$BrowseModelCopyWithImpl(
      _BrowseModel _value, $Res Function(_BrowseModel) _then)
      : super(_value, (v) => _then(v as _BrowseModel));

  @override
  _BrowseModel get _value => super._value as _BrowseModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_BrowseModel(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Listing,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrowseModel with DiagnosticableTreeMixin implements _BrowseModel {
  const _$_BrowseModel(@JsonKey(name: 'listings') this.data);

  factory _$_BrowseModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrowseModelFromJson(json);

  @override
  @JsonKey(name: 'listings')
  final Listing data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BrowseModel(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BrowseModel'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BrowseModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$BrowseModelCopyWith<_BrowseModel> get copyWith =>
      __$BrowseModelCopyWithImpl<_BrowseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrowseModelToJson(this);
  }
}

abstract class _BrowseModel implements BrowseModel {
  const factory _BrowseModel(@JsonKey(name: 'listings') Listing data) =
      _$_BrowseModel;

  factory _BrowseModel.fromJson(Map<String, dynamic> json) =
      _$_BrowseModel.fromJson;

  @override
  @JsonKey(name: 'listings')
  Listing get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BrowseModelCopyWith<_BrowseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
