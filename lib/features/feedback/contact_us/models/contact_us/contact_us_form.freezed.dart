// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_us_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactUsForm _$ContactUsFormFromJson(Map<String, dynamic> json) {
  return _ContactUsForm.fromJson(json);
}

/// @nodoc
class _$ContactUsFormTearOff {
  const _$ContactUsFormTearOff();

  _ContactUsForm call(String name, @JsonKey(name: "email_address") String email,
      @JsonKey(name: "comment") String comments) {
    return _ContactUsForm(
      name,
      email,
      comments,
    );
  }

  ContactUsForm fromJson(Map<String, Object> json) {
    return ContactUsForm.fromJson(json);
  }
}

/// @nodoc
const $ContactUsForm = _$ContactUsFormTearOff();

/// @nodoc
mixin _$ContactUsForm {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email_address")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactUsFormCopyWith<ContactUsForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsFormCopyWith<$Res> {
  factory $ContactUsFormCopyWith(
          ContactUsForm value, $Res Function(ContactUsForm) then) =
      _$ContactUsFormCopyWithImpl<$Res>;
  $Res call(
      {String name,
      @JsonKey(name: "email_address") String email,
      @JsonKey(name: "comment") String comments});
}

/// @nodoc
class _$ContactUsFormCopyWithImpl<$Res>
    implements $ContactUsFormCopyWith<$Res> {
  _$ContactUsFormCopyWithImpl(this._value, this._then);

  final ContactUsForm _value;
  // ignore: unused_field
  final $Res Function(ContactUsForm) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ContactUsFormCopyWith<$Res>
    implements $ContactUsFormCopyWith<$Res> {
  factory _$ContactUsFormCopyWith(
          _ContactUsForm value, $Res Function(_ContactUsForm) then) =
      __$ContactUsFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      @JsonKey(name: "email_address") String email,
      @JsonKey(name: "comment") String comments});
}

/// @nodoc
class __$ContactUsFormCopyWithImpl<$Res>
    extends _$ContactUsFormCopyWithImpl<$Res>
    implements _$ContactUsFormCopyWith<$Res> {
  __$ContactUsFormCopyWithImpl(
      _ContactUsForm _value, $Res Function(_ContactUsForm) _then)
      : super(_value, (v) => _then(v as _ContactUsForm));

  @override
  _ContactUsForm get _value => super._value as _ContactUsForm;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? comments = freezed,
  }) {
    return _then(_ContactUsForm(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactUsForm with DiagnosticableTreeMixin implements _ContactUsForm {
  const _$_ContactUsForm(this.name, @JsonKey(name: "email_address") this.email,
      @JsonKey(name: "comment") this.comments);

  factory _$_ContactUsForm.fromJson(Map<String, dynamic> json) =>
      _$$_ContactUsFormFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "email_address")
  final String email;
  @override
  @JsonKey(name: "comment")
  final String comments;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactUsForm(name: $name, email: $email, comments: $comments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactUsForm'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('comments', comments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactUsForm &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(comments);

  @JsonKey(ignore: true)
  @override
  _$ContactUsFormCopyWith<_ContactUsForm> get copyWith =>
      __$ContactUsFormCopyWithImpl<_ContactUsForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactUsFormToJson(this);
  }
}

abstract class _ContactUsForm implements ContactUsForm {
  const factory _ContactUsForm(
      String name,
      @JsonKey(name: "email_address") String email,
      @JsonKey(name: "comment") String comments) = _$_ContactUsForm;

  factory _ContactUsForm.fromJson(Map<String, dynamic> json) =
      _$_ContactUsForm.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "email_address")
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "comment")
  String get comments => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContactUsFormCopyWith<_ContactUsForm> get copyWith =>
      throw _privateConstructorUsedError;
}
