// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listing_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListingDetailsStateTearOff {
  const _$ListingDetailsStateTearOff();

  _ListingDetailsState call(
      [Map<String, String> categories = const {},
      Map<String, String> pricingModels = const {}]) {
    return _ListingDetailsState(
      categories,
      pricingModels,
    );
  }
}

/// @nodoc
const $ListingDetailsState = _$ListingDetailsStateTearOff();

/// @nodoc
mixin _$ListingDetailsState {
  Map<String, String> get categories => throw _privateConstructorUsedError;
  Map<String, String> get pricingModels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListingDetailsStateCopyWith<ListingDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingDetailsStateCopyWith<$Res> {
  factory $ListingDetailsStateCopyWith(
          ListingDetailsState value, $Res Function(ListingDetailsState) then) =
      _$ListingDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {Map<String, String> categories, Map<String, String> pricingModels});
}

/// @nodoc
class _$ListingDetailsStateCopyWithImpl<$Res>
    implements $ListingDetailsStateCopyWith<$Res> {
  _$ListingDetailsStateCopyWithImpl(this._value, this._then);

  final ListingDetailsState _value;
  // ignore: unused_field
  final $Res Function(ListingDetailsState) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? pricingModels = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      pricingModels: pricingModels == freezed
          ? _value.pricingModels
          : pricingModels // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$ListingDetailsStateCopyWith<$Res>
    implements $ListingDetailsStateCopyWith<$Res> {
  factory _$ListingDetailsStateCopyWith(_ListingDetailsState value,
          $Res Function(_ListingDetailsState) then) =
      __$ListingDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, String> categories, Map<String, String> pricingModels});
}

/// @nodoc
class __$ListingDetailsStateCopyWithImpl<$Res>
    extends _$ListingDetailsStateCopyWithImpl<$Res>
    implements _$ListingDetailsStateCopyWith<$Res> {
  __$ListingDetailsStateCopyWithImpl(
      _ListingDetailsState _value, $Res Function(_ListingDetailsState) _then)
      : super(_value, (v) => _then(v as _ListingDetailsState));

  @override
  _ListingDetailsState get _value => super._value as _ListingDetailsState;

  @override
  $Res call({
    Object? categories = freezed,
    Object? pricingModels = freezed,
  }) {
    return _then(_ListingDetailsState(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      pricingModels == freezed
          ? _value.pricingModels
          : pricingModels // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_ListingDetailsState
    with DiagnosticableTreeMixin
    implements _ListingDetailsState {
  const _$_ListingDetailsState(
      [this.categories = const {}, this.pricingModels = const {}]);

  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> categories;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> pricingModels;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListingDetailsState(categories: $categories, pricingModels: $pricingModels)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListingDetailsState'))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('pricingModels', pricingModels));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListingDetailsState &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.pricingModels, pricingModels) ||
                const DeepCollectionEquality()
                    .equals(other.pricingModels, pricingModels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(pricingModels);

  @JsonKey(ignore: true)
  @override
  _$ListingDetailsStateCopyWith<_ListingDetailsState> get copyWith =>
      __$ListingDetailsStateCopyWithImpl<_ListingDetailsState>(
          this, _$identity);
}

abstract class _ListingDetailsState implements ListingDetailsState {
  const factory _ListingDetailsState(
      [Map<String, String> categories,
      Map<String, String> pricingModels]) = _$_ListingDetailsState;

  @override
  Map<String, String> get categories => throw _privateConstructorUsedError;
  @override
  Map<String, String> get pricingModels => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingDetailsStateCopyWith<_ListingDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
