// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listing_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListingCategory _$ListingCategoryFromJson(Map<String, dynamic> json) {
  return _ListingCategory.fromJson(json);
}

/// @nodoc
class _$ListingCategoryTearOff {
  const _$ListingCategoryTearOff();

  _ListingCategory call(
      int id,
      @JsonKey(name: 'parent_id') int parentId,
      int? order,
      String name,
      @JsonKey(name: 'child') ListingCategory? parentCategory) {
    return _ListingCategory(
      id,
      parentId,
      order,
      name,
      parentCategory,
    );
  }

  ListingCategory fromJson(Map<String, Object> json) {
    return ListingCategory.fromJson(json);
  }
}

/// @nodoc
const $ListingCategory = _$ListingCategoryTearOff();

/// @nodoc
mixin _$ListingCategory {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int get parentId => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'child')
  ListingCategory? get parentCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingCategoryCopyWith<ListingCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingCategoryCopyWith<$Res> {
  factory $ListingCategoryCopyWith(
          ListingCategory value, $Res Function(ListingCategory) then) =
      _$ListingCategoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'parent_id') int parentId,
      int? order,
      String name,
      @JsonKey(name: 'child') ListingCategory? parentCategory});

  $ListingCategoryCopyWith<$Res>? get parentCategory;
}

/// @nodoc
class _$ListingCategoryCopyWithImpl<$Res>
    implements $ListingCategoryCopyWith<$Res> {
  _$ListingCategoryCopyWithImpl(this._value, this._then);

  final ListingCategory _value;
  // ignore: unused_field
  final $Res Function(ListingCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? order = freezed,
    Object? name = freezed,
    Object? parentCategory = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentCategory: parentCategory == freezed
          ? _value.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as ListingCategory?,
    ));
  }

  @override
  $ListingCategoryCopyWith<$Res>? get parentCategory {
    if (_value.parentCategory == null) {
      return null;
    }

    return $ListingCategoryCopyWith<$Res>(_value.parentCategory!, (value) {
      return _then(_value.copyWith(parentCategory: value));
    });
  }
}

/// @nodoc
abstract class _$ListingCategoryCopyWith<$Res>
    implements $ListingCategoryCopyWith<$Res> {
  factory _$ListingCategoryCopyWith(
          _ListingCategory value, $Res Function(_ListingCategory) then) =
      __$ListingCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'parent_id') int parentId,
      int? order,
      String name,
      @JsonKey(name: 'child') ListingCategory? parentCategory});

  @override
  $ListingCategoryCopyWith<$Res>? get parentCategory;
}

/// @nodoc
class __$ListingCategoryCopyWithImpl<$Res>
    extends _$ListingCategoryCopyWithImpl<$Res>
    implements _$ListingCategoryCopyWith<$Res> {
  __$ListingCategoryCopyWithImpl(
      _ListingCategory _value, $Res Function(_ListingCategory) _then)
      : super(_value, (v) => _then(v as _ListingCategory));

  @override
  _ListingCategory get _value => super._value as _ListingCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? order = freezed,
    Object? name = freezed,
    Object? parentCategory = freezed,
  }) {
    return _then(_ListingCategory(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentCategory == freezed
          ? _value.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as ListingCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListingCategory
    with DiagnosticableTreeMixin
    implements _ListingCategory {
  const _$_ListingCategory(this.id, @JsonKey(name: 'parent_id') this.parentId,
      this.order, this.name, @JsonKey(name: 'child') this.parentCategory);

  factory _$_ListingCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ListingCategoryFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'parent_id')
  final int parentId;
  @override
  final int? order;
  @override
  final String name;
  @override
  @JsonKey(name: 'child')
  final ListingCategory? parentCategory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListingCategory(id: $id, parentId: $parentId, order: $order, name: $name, parentCategory: $parentCategory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListingCategory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('parentId', parentId))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('parentCategory', parentCategory));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListingCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.parentCategory, parentCategory) ||
                const DeepCollectionEquality()
                    .equals(other.parentCategory, parentCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(parentCategory);

  @JsonKey(ignore: true)
  @override
  _$ListingCategoryCopyWith<_ListingCategory> get copyWith =>
      __$ListingCategoryCopyWithImpl<_ListingCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingCategoryToJson(this);
  }
}

abstract class _ListingCategory implements ListingCategory {
  const factory _ListingCategory(
          int id,
          @JsonKey(name: 'parent_id') int parentId,
          int? order,
          String name,
          @JsonKey(name: 'child') ListingCategory? parentCategory) =
      _$_ListingCategory;

  factory _ListingCategory.fromJson(Map<String, dynamic> json) =
      _$_ListingCategory.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'parent_id')
  int get parentId => throw _privateConstructorUsedError;
  @override
  int? get order => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'child')
  ListingCategory? get parentCategory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingCategoryCopyWith<_ListingCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
