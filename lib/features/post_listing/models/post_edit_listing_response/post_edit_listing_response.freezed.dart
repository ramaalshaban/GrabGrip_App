// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_edit_listing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostEditListingResponse _$PostEditListingResponseFromJson(
    Map<String, dynamic> json) {
  return _PostEditListingResponse.fromJson(json);
}

/// @nodoc
class _$PostEditListingResponseTearOff {
  const _$PostEditListingResponseTearOff();

  _PostEditListingResponse call(Gear listing) {
    return _PostEditListingResponse(
      listing,
    );
  }

  PostEditListingResponse fromJson(Map<String, Object> json) {
    return PostEditListingResponse.fromJson(json);
  }
}

/// @nodoc
const $PostEditListingResponse = _$PostEditListingResponseTearOff();

/// @nodoc
mixin _$PostEditListingResponse {
  Gear get listing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostEditListingResponseCopyWith<PostEditListingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEditListingResponseCopyWith<$Res> {
  factory $PostEditListingResponseCopyWith(PostEditListingResponse value,
          $Res Function(PostEditListingResponse) then) =
      _$PostEditListingResponseCopyWithImpl<$Res>;
  $Res call({Gear listing});

  $GearCopyWith<$Res> get listing;
}

/// @nodoc
class _$PostEditListingResponseCopyWithImpl<$Res>
    implements $PostEditListingResponseCopyWith<$Res> {
  _$PostEditListingResponseCopyWithImpl(this._value, this._then);

  final PostEditListingResponse _value;
  // ignore: unused_field
  final $Res Function(PostEditListingResponse) _then;

  @override
  $Res call({
    Object? listing = freezed,
  }) {
    return _then(_value.copyWith(
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Gear,
    ));
  }

  @override
  $GearCopyWith<$Res> get listing {
    return $GearCopyWith<$Res>(_value.listing, (value) {
      return _then(_value.copyWith(listing: value));
    });
  }
}

/// @nodoc
abstract class _$PostEditListingResponseCopyWith<$Res>
    implements $PostEditListingResponseCopyWith<$Res> {
  factory _$PostEditListingResponseCopyWith(_PostEditListingResponse value,
          $Res Function(_PostEditListingResponse) then) =
      __$PostEditListingResponseCopyWithImpl<$Res>;
  @override
  $Res call({Gear listing});

  @override
  $GearCopyWith<$Res> get listing;
}

/// @nodoc
class __$PostEditListingResponseCopyWithImpl<$Res>
    extends _$PostEditListingResponseCopyWithImpl<$Res>
    implements _$PostEditListingResponseCopyWith<$Res> {
  __$PostEditListingResponseCopyWithImpl(_PostEditListingResponse _value,
      $Res Function(_PostEditListingResponse) _then)
      : super(_value, (v) => _then(v as _PostEditListingResponse));

  @override
  _PostEditListingResponse get _value =>
      super._value as _PostEditListingResponse;

  @override
  $Res call({
    Object? listing = freezed,
  }) {
    return _then(_PostEditListingResponse(
      listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Gear,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostEditListingResponse
    with DiagnosticableTreeMixin
    implements _PostEditListingResponse {
  const _$_PostEditListingResponse(this.listing);

  factory _$_PostEditListingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostEditListingResponseFromJson(json);

  @override
  final Gear listing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEditListingResponse(listing: $listing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEditListingResponse'))
      ..add(DiagnosticsProperty('listing', listing));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostEditListingResponse &&
            (identical(other.listing, listing) ||
                const DeepCollectionEquality().equals(other.listing, listing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listing);

  @JsonKey(ignore: true)
  @override
  _$PostEditListingResponseCopyWith<_PostEditListingResponse> get copyWith =>
      __$PostEditListingResponseCopyWithImpl<_PostEditListingResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostEditListingResponseToJson(this);
  }
}

abstract class _PostEditListingResponse implements PostEditListingResponse {
  const factory _PostEditListingResponse(Gear listing) =
      _$_PostEditListingResponse;

  factory _PostEditListingResponse.fromJson(Map<String, dynamic> json) =
      _$_PostEditListingResponse.fromJson;

  @override
  Gear get listing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostEditListingResponseCopyWith<_PostEditListingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
