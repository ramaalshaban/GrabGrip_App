// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_photo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadPhotoResponse _$UploadPhotoResponseFromJson(Map<String, dynamic> json) {
  return _UploadPhotoResponse.fromJson(json);
}

/// @nodoc
class _$UploadPhotoResponseTearOff {
  const _$UploadPhotoResponseTearOff();

  _UploadPhotoResponse call(
      String? type, String? path, String? original, String? thumbnailUrl,
      {required bool? success}) {
    return _UploadPhotoResponse(
      type,
      path,
      original,
      thumbnailUrl,
      success: success,
    );
  }

  UploadPhotoResponse fromJson(Map<String, Object> json) {
    return UploadPhotoResponse.fromJson(json);
  }
}

/// @nodoc
const $UploadPhotoResponse = _$UploadPhotoResponseTearOff();

/// @nodoc
mixin _$UploadPhotoResponse {
  String? get type => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get original => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadPhotoResponseCopyWith<UploadPhotoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPhotoResponseCopyWith<$Res> {
  factory $UploadPhotoResponseCopyWith(
          UploadPhotoResponse value, $Res Function(UploadPhotoResponse) then) =
      _$UploadPhotoResponseCopyWithImpl<$Res>;
  $Res call(
      {String? type,
      String? path,
      String? original,
      String? thumbnailUrl,
      bool? success});
}

/// @nodoc
class _$UploadPhotoResponseCopyWithImpl<$Res>
    implements $UploadPhotoResponseCopyWith<$Res> {
  _$UploadPhotoResponseCopyWithImpl(this._value, this._then);

  final UploadPhotoResponse _value;
  // ignore: unused_field
  final $Res Function(UploadPhotoResponse) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? path = freezed,
    Object? original = freezed,
    Object? thumbnailUrl = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$UploadPhotoResponseCopyWith<$Res>
    implements $UploadPhotoResponseCopyWith<$Res> {
  factory _$UploadPhotoResponseCopyWith(_UploadPhotoResponse value,
          $Res Function(_UploadPhotoResponse) then) =
      __$UploadPhotoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? type,
      String? path,
      String? original,
      String? thumbnailUrl,
      bool? success});
}

/// @nodoc
class __$UploadPhotoResponseCopyWithImpl<$Res>
    extends _$UploadPhotoResponseCopyWithImpl<$Res>
    implements _$UploadPhotoResponseCopyWith<$Res> {
  __$UploadPhotoResponseCopyWithImpl(
      _UploadPhotoResponse _value, $Res Function(_UploadPhotoResponse) _then)
      : super(_value, (v) => _then(v as _UploadPhotoResponse));

  @override
  _UploadPhotoResponse get _value => super._value as _UploadPhotoResponse;

  @override
  $Res call({
    Object? type = freezed,
    Object? path = freezed,
    Object? original = freezed,
    Object? thumbnailUrl = freezed,
    Object? success = freezed,
  }) {
    return _then(_UploadPhotoResponse(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadPhotoResponse
    with DiagnosticableTreeMixin
    implements _UploadPhotoResponse {
  const _$_UploadPhotoResponse(
      this.type, this.path, this.original, this.thumbnailUrl,
      {required this.success});

  factory _$_UploadPhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UploadPhotoResponseFromJson(json);

  @override
  final String? type;
  @override
  final String? path;
  @override
  final String? original;
  @override
  final String? thumbnailUrl;
  @override
  final bool? success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadPhotoResponse(type: $type, path: $path, original: $original, thumbnailUrl: $thumbnailUrl, success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadPhotoResponse'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('original', original))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl))
      ..add(DiagnosticsProperty('success', success));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadPhotoResponse &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.original, original) ||
                const DeepCollectionEquality()
                    .equals(other.original, original)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(original) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  _$UploadPhotoResponseCopyWith<_UploadPhotoResponse> get copyWith =>
      __$UploadPhotoResponseCopyWithImpl<_UploadPhotoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadPhotoResponseToJson(this);
  }
}

abstract class _UploadPhotoResponse implements UploadPhotoResponse {
  const factory _UploadPhotoResponse(
      String? type, String? path, String? original, String? thumbnailUrl,
      {required bool? success}) = _$_UploadPhotoResponse;

  factory _UploadPhotoResponse.fromJson(Map<String, dynamic> json) =
      _$_UploadPhotoResponse.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get path => throw _privateConstructorUsedError;
  @override
  String? get original => throw _privateConstructorUsedError;
  @override
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  bool? get success => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UploadPhotoResponseCopyWith<_UploadPhotoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
