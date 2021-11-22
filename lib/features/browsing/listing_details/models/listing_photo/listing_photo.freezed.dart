// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listing_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListingPhoto _$ListingPhotoFromJson(Map<String, dynamic> json) {
  return _ListingPhoto.fromJson(json);
}

/// @nodoc
class _$ListingPhotoTearOff {
  const _$ListingPhotoTearOff();

  _ListingPhoto call(@JsonKey(name: 'photo') String photoUrl,
      @JsonKey(name: 'file') String originalPhotoUrl) {
    return _ListingPhoto(
      photoUrl,
      originalPhotoUrl,
    );
  }

  ListingPhoto fromJson(Map<String, Object> json) {
    return ListingPhoto.fromJson(json);
  }
}

/// @nodoc
const $ListingPhoto = _$ListingPhotoTearOff();

/// @nodoc
mixin _$ListingPhoto {
  @JsonKey(name: 'photo')
  String get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'file')
  String get originalPhotoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingPhotoCopyWith<ListingPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingPhotoCopyWith<$Res> {
  factory $ListingPhotoCopyWith(
          ListingPhoto value, $Res Function(ListingPhoto) then) =
      _$ListingPhotoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'photo') String photoUrl,
      @JsonKey(name: 'file') String originalPhotoUrl});
}

/// @nodoc
class _$ListingPhotoCopyWithImpl<$Res> implements $ListingPhotoCopyWith<$Res> {
  _$ListingPhotoCopyWithImpl(this._value, this._then);

  final ListingPhoto _value;
  // ignore: unused_field
  final $Res Function(ListingPhoto) _then;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? originalPhotoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      originalPhotoUrl: originalPhotoUrl == freezed
          ? _value.originalPhotoUrl
          : originalPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ListingPhotoCopyWith<$Res>
    implements $ListingPhotoCopyWith<$Res> {
  factory _$ListingPhotoCopyWith(
          _ListingPhoto value, $Res Function(_ListingPhoto) then) =
      __$ListingPhotoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'photo') String photoUrl,
      @JsonKey(name: 'file') String originalPhotoUrl});
}

/// @nodoc
class __$ListingPhotoCopyWithImpl<$Res> extends _$ListingPhotoCopyWithImpl<$Res>
    implements _$ListingPhotoCopyWith<$Res> {
  __$ListingPhotoCopyWithImpl(
      _ListingPhoto _value, $Res Function(_ListingPhoto) _then)
      : super(_value, (v) => _then(v as _ListingPhoto));

  @override
  _ListingPhoto get _value => super._value as _ListingPhoto;

  @override
  $Res call({
    Object? photoUrl = freezed,
    Object? originalPhotoUrl = freezed,
  }) {
    return _then(_ListingPhoto(
      photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      originalPhotoUrl == freezed
          ? _value.originalPhotoUrl
          : originalPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListingPhoto with DiagnosticableTreeMixin implements _ListingPhoto {
  const _$_ListingPhoto(@JsonKey(name: 'photo') this.photoUrl,
      @JsonKey(name: 'file') this.originalPhotoUrl);

  factory _$_ListingPhoto.fromJson(Map<String, dynamic> json) =>
      _$$_ListingPhotoFromJson(json);

  @override
  @JsonKey(name: 'photo')
  final String photoUrl;
  @override
  @JsonKey(name: 'file')
  final String originalPhotoUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListingPhoto(photoUrl: $photoUrl, originalPhotoUrl: $originalPhotoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListingPhoto'))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('originalPhotoUrl', originalPhotoUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListingPhoto &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.originalPhotoUrl, originalPhotoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.originalPhotoUrl, originalPhotoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(originalPhotoUrl);

  @JsonKey(ignore: true)
  @override
  _$ListingPhotoCopyWith<_ListingPhoto> get copyWith =>
      __$ListingPhotoCopyWithImpl<_ListingPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingPhotoToJson(this);
  }
}

abstract class _ListingPhoto implements ListingPhoto {
  const factory _ListingPhoto(@JsonKey(name: 'photo') String photoUrl,
      @JsonKey(name: 'file') String originalPhotoUrl) = _$_ListingPhoto;

  factory _ListingPhoto.fromJson(Map<String, dynamic> json) =
      _$_ListingPhoto.fromJson;

  @override
  @JsonKey(name: 'photo')
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'file')
  String get originalPhotoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingPhotoCopyWith<_ListingPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}
