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

  _EditProfileRequest call(String name, @JsonKey(name: "name") dynamic name) {
    return _EditProfileRequest(
      name,
      name,
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
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  dynamic get name => throw _privateConstructorUsedError;

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
  $Res call({String name, @JsonKey(name: "name") dynamic name});
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
    Object? name = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  $Res call({String name, @JsonKey(name: "name") dynamic name});
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
    Object? name = freezed,
    Object? name = freezed,
  }) {
    return _then(_EditProfileRequest(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed ? _value.name : name,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditProfileRequest
    with DiagnosticableTreeMixin
    implements _EditProfileRequest {
  const _$_EditProfileRequest(this.name, @JsonKey(name: "name") this.name);

  factory _$_EditProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$$_EditProfileRequestFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "name")
  final dynamic name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EditProfileRequest(name: $name, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EditProfileRequest'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(name);

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
      String name, @JsonKey(name: "name") dynamic name) = _$_EditProfileRequest;

  factory _EditProfileRequest.fromJson(Map<String, dynamic> json) =
      _$_EditProfileRequest.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "name")
  dynamic get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditProfileRequestCopyWith<_EditProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
