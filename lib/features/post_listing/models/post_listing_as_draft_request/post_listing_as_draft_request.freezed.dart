// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_listing_as_draft_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostListingAsDraftRequest _$PostListingAsDraftRequestFromJson(
    Map<String, dynamic> json) {
  return _PostListingAsDraftRequest.fromJson(json);
}

/// @nodoc
class _$PostListingAsDraftRequestTearOff {
  const _$PostListingAsDraftRequestTearOff();

  _PostListingAsDraftRequest call(
      {@JsonKey(name: "category") int? selectedCategoryId,
      @JsonKey(name: "pricing_model") int? pricingModelId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description_new") String? description}) {
    return _PostListingAsDraftRequest(
      selectedCategoryId: selectedCategoryId,
      pricingModelId: pricingModelId,
      title: title,
      description: description,
    );
  }

  PostListingAsDraftRequest fromJson(Map<String, Object> json) {
    return PostListingAsDraftRequest.fromJson(json);
  }
}

/// @nodoc
const $PostListingAsDraftRequest = _$PostListingAsDraftRequestTearOff();

/// @nodoc
mixin _$PostListingAsDraftRequest {
  @JsonKey(name: "category")
  int? get selectedCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_model")
  int? get pricingModelId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description_new")
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostListingAsDraftRequestCopyWith<PostListingAsDraftRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListingAsDraftRequestCopyWith<$Res> {
  factory $PostListingAsDraftRequestCopyWith(PostListingAsDraftRequest value,
          $Res Function(PostListingAsDraftRequest) then) =
      _$PostListingAsDraftRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "category") int? selectedCategoryId,
      @JsonKey(name: "pricing_model") int? pricingModelId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description_new") String? description});
}

/// @nodoc
class _$PostListingAsDraftRequestCopyWithImpl<$Res>
    implements $PostListingAsDraftRequestCopyWith<$Res> {
  _$PostListingAsDraftRequestCopyWithImpl(this._value, this._then);

  final PostListingAsDraftRequest _value;
  // ignore: unused_field
  final $Res Function(PostListingAsDraftRequest) _then;

  @override
  $Res call({
    Object? selectedCategoryId = freezed,
    Object? pricingModelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCategoryId: selectedCategoryId == freezed
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingModelId: pricingModelId == freezed
          ? _value.pricingModelId
          : pricingModelId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PostListingAsDraftRequestCopyWith<$Res>
    implements $PostListingAsDraftRequestCopyWith<$Res> {
  factory _$PostListingAsDraftRequestCopyWith(_PostListingAsDraftRequest value,
          $Res Function(_PostListingAsDraftRequest) then) =
      __$PostListingAsDraftRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "category") int? selectedCategoryId,
      @JsonKey(name: "pricing_model") int? pricingModelId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description_new") String? description});
}

/// @nodoc
class __$PostListingAsDraftRequestCopyWithImpl<$Res>
    extends _$PostListingAsDraftRequestCopyWithImpl<$Res>
    implements _$PostListingAsDraftRequestCopyWith<$Res> {
  __$PostListingAsDraftRequestCopyWithImpl(_PostListingAsDraftRequest _value,
      $Res Function(_PostListingAsDraftRequest) _then)
      : super(_value, (v) => _then(v as _PostListingAsDraftRequest));

  @override
  _PostListingAsDraftRequest get _value =>
      super._value as _PostListingAsDraftRequest;

  @override
  $Res call({
    Object? selectedCategoryId = freezed,
    Object? pricingModelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_PostListingAsDraftRequest(
      selectedCategoryId: selectedCategoryId == freezed
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingModelId: pricingModelId == freezed
          ? _value.pricingModelId
          : pricingModelId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostListingAsDraftRequest
    with DiagnosticableTreeMixin
    implements _PostListingAsDraftRequest {
  const _$_PostListingAsDraftRequest(
      {@JsonKey(name: "category") this.selectedCategoryId,
      @JsonKey(name: "pricing_model") this.pricingModelId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description_new") this.description});

  factory _$_PostListingAsDraftRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PostListingAsDraftRequestFromJson(json);

  @override
  @JsonKey(name: "category")
  final int? selectedCategoryId;
  @override
  @JsonKey(name: "pricing_model")
  final int? pricingModelId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description_new")
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostListingAsDraftRequest(selectedCategoryId: $selectedCategoryId, pricingModelId: $pricingModelId, title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostListingAsDraftRequest'))
      ..add(DiagnosticsProperty('selectedCategoryId', selectedCategoryId))
      ..add(DiagnosticsProperty('pricingModelId', pricingModelId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostListingAsDraftRequest &&
            (identical(other.selectedCategoryId, selectedCategoryId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCategoryId, selectedCategoryId)) &&
            (identical(other.pricingModelId, pricingModelId) ||
                const DeepCollectionEquality()
                    .equals(other.pricingModelId, pricingModelId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedCategoryId) ^
      const DeepCollectionEquality().hash(pricingModelId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$PostListingAsDraftRequestCopyWith<_PostListingAsDraftRequest>
      get copyWith =>
          __$PostListingAsDraftRequestCopyWithImpl<_PostListingAsDraftRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostListingAsDraftRequestToJson(this);
  }
}

abstract class _PostListingAsDraftRequest implements PostListingAsDraftRequest {
  const factory _PostListingAsDraftRequest(
          {@JsonKey(name: "category") int? selectedCategoryId,
          @JsonKey(name: "pricing_model") int? pricingModelId,
          @JsonKey(name: "title") String? title,
          @JsonKey(name: "description_new") String? description}) =
      _$_PostListingAsDraftRequest;

  factory _PostListingAsDraftRequest.fromJson(Map<String, dynamic> json) =
      _$_PostListingAsDraftRequest.fromJson;

  @override
  @JsonKey(name: "category")
  int? get selectedCategoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "pricing_model")
  int? get pricingModelId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "description_new")
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostListingAsDraftRequestCopyWith<_PostListingAsDraftRequest>
      get copyWith => throw _privateConstructorUsedError;
}
