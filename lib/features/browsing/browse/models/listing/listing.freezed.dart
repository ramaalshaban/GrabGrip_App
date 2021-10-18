// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Listing _$ListingFromJson(Map<String, dynamic> json) {
  return _Listing.fromJson(json);
}

/// @nodoc
class _$ListingTearOff {
  const _$ListingTearOff();

  _Listing call(
      @JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int gearsCount,
      @JsonKey(name: 'data') List<Gear> gears) {
    return _Listing(
      pageNumber,
      lastPageNumber,
      gearsCount,
      gears,
    );
  }

  Listing fromJson(Map<String, Object> json) {
    return Listing.fromJson(json);
  }
}

/// @nodoc
const $Listing = _$ListingTearOff();

/// @nodoc
mixin _$Listing {
  @JsonKey(name: 'current_page')
  int get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get gearsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Gear> get gears => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingCopyWith<Listing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingCopyWith<$Res> {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) then) =
      _$ListingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int gearsCount,
      @JsonKey(name: 'data') List<Gear> gears});
}

/// @nodoc
class _$ListingCopyWithImpl<$Res> implements $ListingCopyWith<$Res> {
  _$ListingCopyWithImpl(this._value, this._then);

  final Listing _value;
  // ignore: unused_field
  final $Res Function(Listing) _then;

  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? lastPageNumber = freezed,
    Object? gearsCount = freezed,
    Object? gears = freezed,
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
      gears: gears == freezed
          ? _value.gears
          : gears // ignore: cast_nullable_to_non_nullable
              as List<Gear>,
    ));
  }
}

/// @nodoc
abstract class _$ListingCopyWith<$Res> implements $ListingCopyWith<$Res> {
  factory _$ListingCopyWith(_Listing value, $Res Function(_Listing) then) =
      __$ListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int gearsCount,
      @JsonKey(name: 'data') List<Gear> gears});
}

/// @nodoc
class __$ListingCopyWithImpl<$Res> extends _$ListingCopyWithImpl<$Res>
    implements _$ListingCopyWith<$Res> {
  __$ListingCopyWithImpl(_Listing _value, $Res Function(_Listing) _then)
      : super(_value, (v) => _then(v as _Listing));

  @override
  _Listing get _value => super._value as _Listing;

  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? lastPageNumber = freezed,
    Object? gearsCount = freezed,
    Object? gears = freezed,
  }) {
    return _then(_Listing(
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
      gears == freezed
          ? _value.gears
          : gears // ignore: cast_nullable_to_non_nullable
              as List<Gear>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Listing with DiagnosticableTreeMixin implements _Listing {
  const _$_Listing(
      @JsonKey(name: 'current_page') this.pageNumber,
      @JsonKey(name: 'last_page') this.lastPageNumber,
      @JsonKey(name: 'total') this.gearsCount,
      @JsonKey(name: 'data') this.gears);

  factory _$_Listing.fromJson(Map<String, dynamic> json) =>
      _$$_ListingFromJson(json);

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
  final List<Gear> gears;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Listing(pageNumber: $pageNumber, lastPageNumber: $lastPageNumber, gearsCount: $gearsCount, gears: $gears)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Listing'))
      ..add(DiagnosticsProperty('pageNumber', pageNumber))
      ..add(DiagnosticsProperty('lastPageNumber', lastPageNumber))
      ..add(DiagnosticsProperty('gearsCount', gearsCount))
      ..add(DiagnosticsProperty('gears', gears));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Listing &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.lastPageNumber, lastPageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.lastPageNumber, lastPageNumber)) &&
            (identical(other.gearsCount, gearsCount) ||
                const DeepCollectionEquality()
                    .equals(other.gearsCount, gearsCount)) &&
            (identical(other.gears, gears) ||
                const DeepCollectionEquality().equals(other.gears, gears)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(lastPageNumber) ^
      const DeepCollectionEquality().hash(gearsCount) ^
      const DeepCollectionEquality().hash(gears);

  @JsonKey(ignore: true)
  @override
  _$ListingCopyWith<_Listing> get copyWith =>
      __$ListingCopyWithImpl<_Listing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingToJson(this);
  }
}

abstract class _Listing implements Listing {
  const factory _Listing(
      @JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int gearsCount,
      @JsonKey(name: 'data') List<Gear> gears) = _$_Listing;

  factory _Listing.fromJson(Map<String, dynamic> json) = _$_Listing.fromJson;

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
  List<Gear> get gears => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingCopyWith<_Listing> get copyWith =>
      throw _privateConstructorUsedError;
}
