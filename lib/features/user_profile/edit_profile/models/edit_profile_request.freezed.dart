// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditProfileRequest _$EditProfileRequestFromJson(Map<String, dynamic> json) {
  return _EditProfileRequest.fromJson(json);
}

/// @nodoc
class _$EditProfileRequestTearOff {
  const _$EditProfileRequestTearOff();

  _EditProfileRequest call(@JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'username') String userName, String? bio) {
    return _EditProfileRequest(
      displayName,
      userName,
      bio,
    );
  }

  EditProfileRequest fromJson(Map<String, Object> json) {
    return EditProfileRequest.fromJson(json);
  }
}

/// @nodoc
const $EditProfileRequest = _$EditProfileRequestTearOff();

/// @nodoc
mixin _$EditProfileRequest {
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditProfileRequestCopyWith<EditProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileRequestCopyWith<$Res> {
  factory $EditProfileRequestCopyWith(
          EditProfileRequest value, $Res Function(EditProfileRequest) then) =
      _$EditProfileRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'username') String userName,
      String? bio});
}

/// @nodoc
class _$EditProfileRequestCopyWithImpl<$Res>
    implements $EditProfileRequestCopyWith<$Res> {
  _$EditProfileRequestCopyWithImpl(this._value, this._then);

  final EditProfileRequest _value;
  // ignore: unused_field
  final $Res Function(EditProfileRequest) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? userName = freezed,
    Object? bio = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EditProfileRequestCopyWith<$Res>
    implements $EditProfileRequestCopyWith<$Res> {
  factory _$EditProfileRequestCopyWith(
          _EditProfileRequest value, $Res Function(_EditProfileRequest) then) =
      __$EditProfileRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'username') String userName,
      String? bio});
}

/// @nodoc
class __$EditProfileRequestCopyWithImpl<$Res>
    extends _$EditProfileRequestCopyWithImpl<$Res>
    implements _$EditProfileRequestCopyWith<$Res> {
  __$EditProfileRequestCopyWithImpl(
      _EditProfileRequest _value, $Res Function(_EditProfileRequest) _then)
      : super(_value, (v) => _then(v as _EditProfileRequest));

  @override
  _EditProfileRequest get _value => super._value as _EditProfileRequest;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? userName = freezed,
    Object? bio = freezed,
  }) {
    return _then(_EditProfileRequest(
      displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditProfileRequest
    with DiagnosticableTreeMixin
    implements _EditProfileRequest {
  const _$_EditProfileRequest(@JsonKey(name: 'display_name') this.displayName,
      @JsonKey(name: 'username') this.userName, this.bio);

  factory _$_EditProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$$_EditProfileRequestFromJson(json);

  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'username')
  final String userName;
  @override
  final String? bio;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditProfileRequest(displayName: $displayName, userName: $userName, bio: $bio)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditProfileRequest'))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('bio', bio));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileRequest &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(bio);

  @JsonKey(ignore: true)
  @override
  _$EditProfileRequestCopyWith<_EditProfileRequest> get copyWith =>
      __$EditProfileRequestCopyWithImpl<_EditProfileRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditProfileRequestToJson(this);
  }
}

abstract class _EditProfileRequest implements EditProfileRequest {
  const factory _EditProfileRequest(
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'username') String userName,
      String? bio) = _$_EditProfileRequest;

  factory _EditProfileRequest.fromJson(Map<String, dynamic> json) =
      _$_EditProfileRequest.fromJson;

  @override
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  @override
  String? get bio => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditProfileRequestCopyWith<_EditProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
