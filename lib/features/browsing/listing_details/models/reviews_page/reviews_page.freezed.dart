// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reviews_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewsPage _$ReviewsPageFromJson(Map<String, dynamic> json) {
  return _ReviewsPage.fromJson(json);
}

/// @nodoc
class _$ReviewsPageTearOff {
  const _$ReviewsPageTearOff();

  _ReviewsPage call(
      @JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int reviewsCount,
      @JsonKey(name: 'data') List<Review> reviews) {
    return _ReviewsPage(
      pageNumber,
      lastPageNumber,
      reviewsCount,
      reviews,
    );
  }

  ReviewsPage fromJson(Map<String, Object> json) {
    return ReviewsPage.fromJson(json);
  }
}

/// @nodoc
const $ReviewsPage = _$ReviewsPageTearOff();

/// @nodoc
mixin _$ReviewsPage {
  @JsonKey(name: 'current_page')
  int get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Review> get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsPageCopyWith<ReviewsPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsPageCopyWith<$Res> {
  factory $ReviewsPageCopyWith(
          ReviewsPage value, $Res Function(ReviewsPage) then) =
      _$ReviewsPageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int reviewsCount,
      @JsonKey(name: 'data') List<Review> reviews});
}

/// @nodoc
class _$ReviewsPageCopyWithImpl<$Res> implements $ReviewsPageCopyWith<$Res> {
  _$ReviewsPageCopyWithImpl(this._value, this._then);

  final ReviewsPage _value;
  // ignore: unused_field
  final $Res Function(ReviewsPage) _then;

  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? lastPageNumber = freezed,
    Object? reviewsCount = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      pageNumber: pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageNumber: lastPageNumber == freezed
          ? _value.lastPageNumber
          : lastPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsCount: reviewsCount == freezed
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc
abstract class _$ReviewsPageCopyWith<$Res>
    implements $ReviewsPageCopyWith<$Res> {
  factory _$ReviewsPageCopyWith(
          _ReviewsPage value, $Res Function(_ReviewsPage) then) =
      __$ReviewsPageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int reviewsCount,
      @JsonKey(name: 'data') List<Review> reviews});
}

/// @nodoc
class __$ReviewsPageCopyWithImpl<$Res> extends _$ReviewsPageCopyWithImpl<$Res>
    implements _$ReviewsPageCopyWith<$Res> {
  __$ReviewsPageCopyWithImpl(
      _ReviewsPage _value, $Res Function(_ReviewsPage) _then)
      : super(_value, (v) => _then(v as _ReviewsPage));

  @override
  _ReviewsPage get _value => super._value as _ReviewsPage;

  @override
  $Res call({
    Object? pageNumber = freezed,
    Object? lastPageNumber = freezed,
    Object? reviewsCount = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_ReviewsPage(
      pageNumber == freezed
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageNumber == freezed
          ? _value.lastPageNumber
          : lastPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsCount == freezed
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewsPage with DiagnosticableTreeMixin implements _ReviewsPage {
  const _$_ReviewsPage(
      @JsonKey(name: 'current_page') this.pageNumber,
      @JsonKey(name: 'last_page') this.lastPageNumber,
      @JsonKey(name: 'total') this.reviewsCount,
      @JsonKey(name: 'data') this.reviews);

  factory _$_ReviewsPage.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsPageFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int pageNumber;
  @override
  @JsonKey(name: 'last_page')
  final int lastPageNumber;
  @override
  @JsonKey(name: 'total')
  final int reviewsCount;
  @override
  @JsonKey(name: 'data')
  final List<Review> reviews;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReviewsPage(pageNumber: $pageNumber, lastPageNumber: $lastPageNumber, reviewsCount: $reviewsCount, reviews: $reviews)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReviewsPage'))
      ..add(DiagnosticsProperty('pageNumber', pageNumber))
      ..add(DiagnosticsProperty('lastPageNumber', lastPageNumber))
      ..add(DiagnosticsProperty('reviewsCount', reviewsCount))
      ..add(DiagnosticsProperty('reviews', reviews));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsPage &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.lastPageNumber, lastPageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.lastPageNumber, lastPageNumber)) &&
            (identical(other.reviewsCount, reviewsCount) ||
                const DeepCollectionEquality()
                    .equals(other.reviewsCount, reviewsCount)) &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality().equals(other.reviews, reviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(lastPageNumber) ^
      const DeepCollectionEquality().hash(reviewsCount) ^
      const DeepCollectionEquality().hash(reviews);

  @JsonKey(ignore: true)
  @override
  _$ReviewsPageCopyWith<_ReviewsPage> get copyWith =>
      __$ReviewsPageCopyWithImpl<_ReviewsPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsPageToJson(this);
  }
}

abstract class _ReviewsPage implements ReviewsPage {
  const factory _ReviewsPage(
      @JsonKey(name: 'current_page') int pageNumber,
      @JsonKey(name: 'last_page') int lastPageNumber,
      @JsonKey(name: 'total') int reviewsCount,
      @JsonKey(name: 'data') List<Review> reviews) = _$_ReviewsPage;

  factory _ReviewsPage.fromJson(Map<String, dynamic> json) =
      _$_ReviewsPage.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get pageNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_page')
  int get lastPageNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total')
  int get reviewsCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'data')
  List<Review> get reviews => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewsPageCopyWith<_ReviewsPage> get copyWith =>
      throw _privateConstructorUsedError;
}
