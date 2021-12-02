// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pricing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PricingModel _$PricingModelFromJson(Map<String, dynamic> json) {
  return _PricingModel.fromJson(json);
}

/// @nodoc
class _$PricingModelTearOff {
  const _$PricingModelTearOff();

  _PricingModel call(
      {required int id, required String name, required String widget}) {
    return _PricingModel(
      id: id,
      name: name,
      widget: widget,
    );
  }

  PricingModel fromJson(Map<String, Object> json) {
    return PricingModel.fromJson(json);
  }
}

/// @nodoc
const $PricingModel = _$PricingModelTearOff();

/// @nodoc
mixin _$PricingModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get widget => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingModelCopyWith<PricingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingModelCopyWith<$Res> {
  factory $PricingModelCopyWith(
          PricingModel value, $Res Function(PricingModel) then) =
      _$PricingModelCopyWithImpl<$Res>;
  $Res call({int id, String name, String widget});
}

/// @nodoc
class _$PricingModelCopyWithImpl<$Res> implements $PricingModelCopyWith<$Res> {
  _$PricingModelCopyWithImpl(this._value, this._then);

  final PricingModel _value;
  // ignore: unused_field
  final $Res Function(PricingModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? widget = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      widget: widget == freezed
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PricingModelCopyWith<$Res>
    implements $PricingModelCopyWith<$Res> {
  factory _$PricingModelCopyWith(
          _PricingModel value, $Res Function(_PricingModel) then) =
      __$PricingModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String widget});
}

/// @nodoc
class __$PricingModelCopyWithImpl<$Res> extends _$PricingModelCopyWithImpl<$Res>
    implements _$PricingModelCopyWith<$Res> {
  __$PricingModelCopyWithImpl(
      _PricingModel _value, $Res Function(_PricingModel) _then)
      : super(_value, (v) => _then(v as _PricingModel));

  @override
  _PricingModel get _value => super._value as _PricingModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? widget = freezed,
  }) {
    return _then(_PricingModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      widget: widget == freezed
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PricingModel with DiagnosticableTreeMixin implements _PricingModel {
  const _$_PricingModel(
      {required this.id, required this.name, required this.widget});

  factory _$_PricingModel.fromJson(Map<String, dynamic> json) =>
      _$$_PricingModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String widget;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PricingModel(id: $id, name: $name, widget: $widget)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PricingModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('widget', widget));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PricingModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.widget, widget) ||
                const DeepCollectionEquality().equals(other.widget, widget)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(widget);

  @JsonKey(ignore: true)
  @override
  _$PricingModelCopyWith<_PricingModel> get copyWith =>
      __$PricingModelCopyWithImpl<_PricingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricingModelToJson(this);
  }
}

abstract class _PricingModel implements PricingModel {
  const factory _PricingModel(
      {required int id,
      required String name,
      required String widget}) = _$_PricingModel;

  factory _PricingModel.fromJson(Map<String, dynamic> json) =
      _$_PricingModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get widget => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PricingModelCopyWith<_PricingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
