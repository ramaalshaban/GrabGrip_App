// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reviews_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewsResponse _$ReviewsResponseFromJson(Map<String, dynamic> json) {
  return _ReviewsResponse.fromJson(json);
}

/// @nodoc
class _$ReviewsResponseTearOff {
  const _$ReviewsResponseTearOff();

  _ReviewsResponse call(@JsonKey(name: 'comments') ReviewsPage reviewsPage) {
    return _ReviewsResponse(
      reviewsPage,
    );
  }

  ReviewsResponse fromJson(Map<String, Object> json) {
    return ReviewsResponse.fromJson(json);
  }
}

/// @nodoc
const $ReviewsResponse = _$ReviewsResponseTearOff();

/// @nodoc
mixin _$ReviewsResponse {
  @JsonKey(name: 'comments')
  ReviewsPage get reviewsPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsResponseCopyWith<ReviewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsResponseCopyWith<$Res> {
  factory $ReviewsResponseCopyWith(
          ReviewsResponse value, $Res Function(ReviewsResponse) then) =
      _$ReviewsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'comments') ReviewsPage reviewsPage});

  $ReviewsPageCopyWith<$Res> get reviewsPage;
}

/// @nodoc
class _$ReviewsResponseCopyWithImpl<$Res>
    implements $ReviewsResponseCopyWith<$Res> {
  _$ReviewsResponseCopyWithImpl(this._value, this._then);

  final ReviewsResponse _value;
  // ignore: unused_field
  final $Res Function(ReviewsResponse) _then;

  @override
  $Res call({
    Object? reviewsPage = freezed,
  }) {
    return _then(_value.copyWith(
      reviewsPage: reviewsPage == freezed
          ? _value.reviewsPage
          : reviewsPage // ignore: cast_nullable_to_non_nullable
              as ReviewsPage,
    ));
  }

  @override
  $ReviewsPageCopyWith<$Res> get reviewsPage {
    return $ReviewsPageCopyWith<$Res>(_value.reviewsPage, (value) {
      return _then(_value.copyWith(reviewsPage: value));
    });
  }
}

/// @nodoc
abstract class _$ReviewsResponseCopyWith<$Res>
    implements $ReviewsResponseCopyWith<$Res> {
  factory _$ReviewsResponseCopyWith(
          _ReviewsResponse value, $Res Function(_ReviewsResponse) then) =
      __$ReviewsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'comments') ReviewsPage reviewsPage});

  @override
  $ReviewsPageCopyWith<$Res> get reviewsPage;
}

/// @nodoc
class __$ReviewsResponseCopyWithImpl<$Res>
    extends _$ReviewsResponseCopyWithImpl<$Res>
    implements _$ReviewsResponseCopyWith<$Res> {
  __$ReviewsResponseCopyWithImpl(
      _ReviewsResponse _value, $Res Function(_ReviewsResponse) _then)
      : super(_value, (v) => _then(v as _ReviewsResponse));

  @override
  _ReviewsResponse get _value => super._value as _ReviewsResponse;

  @override
  $Res call({
    Object? reviewsPage = freezed,
  }) {
    return _then(_ReviewsResponse(
      reviewsPage == freezed
          ? _value.reviewsPage
          : reviewsPage // ignore: cast_nullable_to_non_nullable
              as ReviewsPage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewsResponse
    with DiagnosticableTreeMixin
    implements _ReviewsResponse {
  const _$_ReviewsResponse(@JsonKey(name: 'comments') this.reviewsPage);

  factory _$_ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsResponseFromJson(json);

  @override
  @JsonKey(name: 'comments')
  final ReviewsPage reviewsPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewsResponse(reviewsPage: $reviewsPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewsResponse'))
      ..add(DiagnosticsProperty('reviewsPage', reviewsPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsResponse &&
            (identical(other.reviewsPage, reviewsPage) ||
                const DeepCollectionEquality()
                    .equals(other.reviewsPage, reviewsPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviewsPage);

  @JsonKey(ignore: true)
  @override
  _$ReviewsResponseCopyWith<_ReviewsResponse> get copyWith =>
      __$ReviewsResponseCopyWithImpl<_ReviewsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsResponseToJson(this);
  }
}

abstract class _ReviewsResponse implements ReviewsResponse {
  const factory _ReviewsResponse(
      @JsonKey(name: 'comments') ReviewsPage reviewsPage) = _$_ReviewsResponse;

  factory _ReviewsResponse.fromJson(Map<String, dynamic> json) =
      _$_ReviewsResponse.fromJson;

  @override
  @JsonKey(name: 'comments')
  ReviewsPage get reviewsPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewsResponseCopyWith<_ReviewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
