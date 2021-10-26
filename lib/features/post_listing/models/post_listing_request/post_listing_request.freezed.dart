// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_listing_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostListingRequest _$PostListingRequestFromJson(Map<String, dynamic> json) {
  return _PostListingRequest.fromJson(json);
}

/// @nodoc
class _$PostListingRequestTearOff {
  const _$PostListingRequestTearOff();

  _PostListingRequest call(
      {@JsonKey(name: "category") int? selectedCategoryId,
      @JsonKey(name: "pricing_model") int? pricingModelId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description_new") String? description}) {
    return _PostListingRequest(
      selectedCategoryId: selectedCategoryId,
      pricingModelId: pricingModelId,
      title: title,
      description: description,
    );
  }

  PostListingRequest fromJson(Map<String, Object> json) {
    return PostListingRequest.fromJson(json);
  }
}

/// @nodoc
const $PostListingRequest = _$PostListingRequestTearOff();

/// @nodoc
mixin _$PostListingRequest {
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
  $PostListingRequestCopyWith<PostListingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListingRequestCopyWith<$Res> {
  factory $PostListingRequestCopyWith(
          PostListingRequest value, $Res Function(PostListingRequest) then) =
      _$PostListingRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "category") int? selectedCategoryId,
      @JsonKey(name: "pricing_model") int? pricingModelId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description_new") String? description});
}

/// @nodoc
class _$PostListingRequestCopyWithImpl<$Res>
    implements $PostListingRequestCopyWith<$Res> {
  _$PostListingRequestCopyWithImpl(this._value, this._then);

  final PostListingRequest _value;
  // ignore: unused_field
  final $Res Function(PostListingRequest) _then;

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
abstract class _$PostListingRequestCopyWith<$Res>
    implements $PostListingRequestCopyWith<$Res> {
  factory _$PostListingRequestCopyWith(
          _PostListingRequest value, $Res Function(_PostListingRequest) then) =
      __$PostListingRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "category") int? selectedCategoryId,
      @JsonKey(name: "pricing_model") int? pricingModelId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description_new") String? description});
}

/// @nodoc
class __$PostListingRequestCopyWithImpl<$Res>
    extends _$PostListingRequestCopyWithImpl<$Res>
    implements _$PostListingRequestCopyWith<$Res> {
  __$PostListingRequestCopyWithImpl(
      _PostListingRequest _value, $Res Function(_PostListingRequest) _then)
      : super(_value, (v) => _then(v as _PostListingRequest));

  @override
  _PostListingRequest get _value => super._value as _PostListingRequest;

  @override
  $Res call({
    Object? selectedCategoryId = freezed,
    Object? pricingModelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_PostListingRequest(
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
class _$_PostListingRequest
    with DiagnosticableTreeMixin
    implements _PostListingRequest {
  const _$_PostListingRequest(
      {@JsonKey(name: "category") this.selectedCategoryId,
      @JsonKey(name: "pricing_model") this.pricingModelId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description_new") this.description});

  factory _$_PostListingRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PostListingRequestFromJson(json);

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
    return 'PostListingRequest(selectedCategoryId: $selectedCategoryId, pricingModelId: $pricingModelId, title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostListingRequest'))
      ..add(DiagnosticsProperty('selectedCategoryId', selectedCategoryId))
      ..add(DiagnosticsProperty('pricingModelId', pricingModelId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostListingRequest &&
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
  _$PostListingRequestCopyWith<_PostListingRequest> get copyWith =>
      __$PostListingRequestCopyWithImpl<_PostListingRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostListingRequestToJson(this);
  }
}

abstract class _PostListingRequest implements PostListingRequest {
  const factory _PostListingRequest(
          {@JsonKey(name: "category") int? selectedCategoryId,
          @JsonKey(name: "pricing_model") int? pricingModelId,
          @JsonKey(name: "title") String? title,
          @JsonKey(name: "description_new") String? description}) =
      _$_PostListingRequest;

  factory _PostListingRequest.fromJson(Map<String, dynamic> json) =
      _$_PostListingRequest.fromJson;

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
  _$PostListingRequestCopyWith<_PostListingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
