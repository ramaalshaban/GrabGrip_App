// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'identifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Identifier _$IdentifierFromJson(Map<String, dynamic> json) {
  return _Identifier.fromJson(json);
}

/// @nodoc
class _$IdentifierTearOff {
  const _$IdentifierTearOff();

  _Identifier call() {
    return const _Identifier();
  }

  Identifier fromJson(Map<String, Object> json) {
    return Identifier.fromJson(json);
  }
}

/// @nodoc
const $Identifier = _$IdentifierTearOff();

/// @nodoc
mixin _$Identifier {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifierCopyWith<$Res> {
  factory $IdentifierCopyWith(
          Identifier value, $Res Function(Identifier) then) =
      _$IdentifierCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdentifierCopyWithImpl<$Res> implements $IdentifierCopyWith<$Res> {
  _$IdentifierCopyWithImpl(this._value, this._then);

  final Identifier _value;
  // ignore: unused_field
  final $Res Function(Identifier) _then;
}

/// @nodoc
abstract class _$IdentifierCopyWith<$Res> {
  factory _$IdentifierCopyWith(
          _Identifier value, $Res Function(_Identifier) then) =
      __$IdentifierCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdentifierCopyWithImpl<$Res> extends _$IdentifierCopyWithImpl<$Res>
    implements _$IdentifierCopyWith<$Res> {
  __$IdentifierCopyWithImpl(
      _Identifier _value, $Res Function(_Identifier) _then)
      : super(_value, (v) => _then(v as _Identifier));

  @override
  _Identifier get _value => super._value as _Identifier;
}

/// @nodoc
@JsonSerializable()
class _$_Identifier with DiagnosticableTreeMixin implements _Identifier {
  const _$_Identifier();

  factory _$_Identifier.fromJson(Map<String, dynamic> json) =>
      _$$_IdentifierFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Identifier()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Identifier'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Identifier);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdentifierToJson(this);
  }
}

abstract class _Identifier implements Identifier {
  const factory _Identifier() = _$_Identifier;

  factory _Identifier.fromJson(Map<String, dynamic> json) =
      _$_Identifier.fromJson;
}
