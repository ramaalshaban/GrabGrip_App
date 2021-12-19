// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review call(int id, String comment, int rate,
      @JsonKey(name: 'created_at') String reviewDate, User commenter) {
    return _Review(
      id,
      comment,
      rate,
      reviewDate,
      commenter,
    );
  }

  Review fromJson(Map<String, Object> json) {
    return Review.fromJson(json);
  }
}

/// @nodoc
const $Review = _$ReviewTearOff();

/// @nodoc
mixin _$Review {
  int get id => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  int get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get reviewDate => throw _privateConstructorUsedError;
  User get commenter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String comment,
      int rate,
      @JsonKey(name: 'created_at') String reviewDate,
      User commenter});

  $UserCopyWith<$Res> get commenter;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? comment = freezed,
    Object? rate = freezed,
    Object? reviewDate = freezed,
    Object? commenter = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      reviewDate: reviewDate == freezed
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as String,
      commenter: commenter == freezed
          ? _value.commenter
          : commenter // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get commenter {
    return $UserCopyWith<$Res>(_value.commenter, (value) {
      return _then(_value.copyWith(commenter: value));
    });
  }
}

/// @nodoc
abstract class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String comment,
      int rate,
      @JsonKey(name: 'created_at') String reviewDate,
      User commenter});

  @override
  $UserCopyWith<$Res> get commenter;
}

/// @nodoc
class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;

  @override
  $Res call({
    Object? id = freezed,
    Object? comment = freezed,
    Object? rate = freezed,
    Object? reviewDate = freezed,
    Object? commenter = freezed,
  }) {
    return _then(_Review(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      reviewDate == freezed
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as String,
      commenter == freezed
          ? _value.commenter
          : commenter // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review with DiagnosticableTreeMixin implements _Review {
  const _$_Review(this.id, this.comment, this.rate,
      @JsonKey(name: 'created_at') this.reviewDate, this.commenter);

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  final int id;
  @override
  final String comment;
  @override
  final int rate;
  @override
  @JsonKey(name: 'created_at')
  final String reviewDate;
  @override
  final User commenter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Review(id: $id, comment: $comment, rate: $rate, reviewDate: $reviewDate, commenter: $commenter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Review'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('rate', rate))
      ..add(DiagnosticsProperty('reviewDate', reviewDate))
      ..add(DiagnosticsProperty('commenter', commenter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Review &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.reviewDate, reviewDate) ||
                const DeepCollectionEquality()
                    .equals(other.reviewDate, reviewDate)) &&
            (identical(other.commenter, commenter) ||
                const DeepCollectionEquality()
                    .equals(other.commenter, commenter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(reviewDate) ^
      const DeepCollectionEquality().hash(commenter);

  @JsonKey(ignore: true)
  @override
  _$ReviewCopyWith<_Review> get copyWith =>
      __$ReviewCopyWithImpl<_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(this);
  }
}

abstract class _Review implements Review {
  const factory _Review(
      int id,
      String comment,
      int rate,
      @JsonKey(name: 'created_at') String reviewDate,
      User commenter) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get comment => throw _privateConstructorUsedError;
  @override
  int get rate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get reviewDate => throw _privateConstructorUsedError;
  @override
  User get commenter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewCopyWith<_Review> get copyWith => throw _privateConstructorUsedError;
}
