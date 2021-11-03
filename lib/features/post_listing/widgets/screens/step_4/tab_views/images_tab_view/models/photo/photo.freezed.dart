// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotoTearOff {
  const _$PhotoTearOff();

  _Photo call(
      {String index = "",
      String path = "",
      String name = "",
      String size = ""}) {
    return _Photo(
      index: index,
      path: path,
      name: name,
      size: size,
    );
  }
}

/// @nodoc
const $Photo = _$PhotoTearOff();

/// @nodoc
mixin _$Photo {
  String get index => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res>;
  $Res call({String index, String path, String name, String size});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  final Photo _value;
  // ignore: unused_field
  final $Res Function(Photo) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? path = freezed,
    Object? name = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) then) =
      __$PhotoCopyWithImpl<$Res>;
  @override
  $Res call({String index, String path, String name, String size});
}

/// @nodoc
class __$PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res>
    implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(_Photo _value, $Res Function(_Photo) _then)
      : super(_value, (v) => _then(v as _Photo));

  @override
  _Photo get _value => super._value as _Photo;

  @override
  $Res call({
    Object? index = freezed,
    Object? path = freezed,
    Object? name = freezed,
    Object? size = freezed,
  }) {
    return _then(_Photo(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Photo with DiagnosticableTreeMixin implements _Photo {
  const _$_Photo(
      {this.index = "", this.path = "", this.name = "", this.size = ""});

  @JsonKey(defaultValue: "")
  @override
  final String index;
  @JsonKey(defaultValue: "")
  @override
  final String path;
  @JsonKey(defaultValue: "")
  @override
  final String name;
  @JsonKey(defaultValue: "")
  @override
  final String size;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Photo(index: $index, path: $path, name: $name, size: $size)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Photo'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('size', size));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Photo &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$PhotoCopyWith<_Photo> get copyWith =>
      __$PhotoCopyWithImpl<_Photo>(this, _$identity);
}

abstract class _Photo implements Photo {
  const factory _Photo({String index, String path, String name, String size}) =
      _$_Photo;

  @override
  String get index => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoCopyWith<_Photo> get copyWith => throw _privateConstructorUsedError;
}
