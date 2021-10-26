// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_listing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostListingResponse _$PostListingResponseFromJson(Map<String, dynamic> json) {
  return _PostListingResponse.fromJson(json);
}

/// @nodoc
class _$PostListingResponseTearOff {
  const _$PostListingResponseTearOff();

  _PostListingResponse call(@JsonKey(name: "listing") TempGear postedListing) {
    return _PostListingResponse(
      postedListing,
    );
  }

  PostListingResponse fromJson(Map<String, Object> json) {
    return PostListingResponse.fromJson(json);
  }
}

/// @nodoc
const $PostListingResponse = _$PostListingResponseTearOff();

/// @nodoc
mixin _$PostListingResponse {
  @JsonKey(name: "listing")
  TempGear get postedListing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostListingResponseCopyWith<PostListingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListingResponseCopyWith<$Res> {
  factory $PostListingResponseCopyWith(
          PostListingResponse value, $Res Function(PostListingResponse) then) =
      _$PostListingResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "listing") TempGear postedListing});

  $TempGearCopyWith<$Res> get postedListing;
}

/// @nodoc
class _$PostListingResponseCopyWithImpl<$Res>
    implements $PostListingResponseCopyWith<$Res> {
  _$PostListingResponseCopyWithImpl(this._value, this._then);

  final PostListingResponse _value;
  // ignore: unused_field
  final $Res Function(PostListingResponse) _then;

  @override
  $Res call({
    Object? postedListing = freezed,
  }) {
    return _then(_value.copyWith(
      postedListing: postedListing == freezed
          ? _value.postedListing
          : postedListing // ignore: cast_nullable_to_non_nullable
              as TempGear,
    ));
  }

  @override
  $TempGearCopyWith<$Res> get postedListing {
    return $TempGearCopyWith<$Res>(_value.postedListing, (value) {
      return _then(_value.copyWith(postedListing: value));
    });
  }
}

/// @nodoc
abstract class _$PostListingResponseCopyWith<$Res>
    implements $PostListingResponseCopyWith<$Res> {
  factory _$PostListingResponseCopyWith(_PostListingResponse value,
          $Res Function(_PostListingResponse) then) =
      __$PostListingResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "listing") TempGear postedListing});

  @override
  $TempGearCopyWith<$Res> get postedListing;
}

/// @nodoc
class __$PostListingResponseCopyWithImpl<$Res>
    extends _$PostListingResponseCopyWithImpl<$Res>
    implements _$PostListingResponseCopyWith<$Res> {
  __$PostListingResponseCopyWithImpl(
      _PostListingResponse _value, $Res Function(_PostListingResponse) _then)
      : super(_value, (v) => _then(v as _PostListingResponse));

  @override
  _PostListingResponse get _value => super._value as _PostListingResponse;

  @override
  $Res call({
    Object? postedListing = freezed,
  }) {
    return _then(_PostListingResponse(
      postedListing == freezed
          ? _value.postedListing
          : postedListing // ignore: cast_nullable_to_non_nullable
              as TempGear,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostListingResponse
    with DiagnosticableTreeMixin
    implements _PostListingResponse {
  const _$_PostListingResponse(@JsonKey(name: "listing") this.postedListing);

  factory _$_PostListingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostListingResponseFromJson(json);

  @override
  @JsonKey(name: "listing")
  final TempGear postedListing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostListingResponse(postedListing: $postedListing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostListingResponse'))
      ..add(DiagnosticsProperty('postedListing', postedListing));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostListingResponse &&
            (identical(other.postedListing, postedListing) ||
                const DeepCollectionEquality()
                    .equals(other.postedListing, postedListing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postedListing);

  @JsonKey(ignore: true)
  @override
  _$PostListingResponseCopyWith<_PostListingResponse> get copyWith =>
      __$PostListingResponseCopyWithImpl<_PostListingResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostListingResponseToJson(this);
  }
}

abstract class _PostListingResponse implements PostListingResponse {
  const factory _PostListingResponse(
          @JsonKey(name: "listing") TempGear postedListing) =
      _$_PostListingResponse;

  factory _PostListingResponse.fromJson(Map<String, dynamic> json) =
      _$_PostListingResponse.fromJson;

  @override
  @JsonKey(name: "listing")
  TempGear get postedListing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostListingResponseCopyWith<_PostListingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
