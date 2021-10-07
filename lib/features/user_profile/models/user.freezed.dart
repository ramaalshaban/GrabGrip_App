// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      int id,
      @JsonKey(name: 'display_name') String name,
      @JsonKey(name: 'username') String userName,
      String? bio,
      String? phone,
      String avatar,
      String city,
      String country,
      @JsonKey(name: 'unread_messages') int unreadMessagesCount,
      @JsonKey(name: 'can_accept_payments') int canAcceptPayments,
      {required bool verified}) {
    return _User(
      id,
      name,
      userName,
      bio,
      phone,
      avatar,
      city,
      country,
      unreadMessagesCount,
      canAcceptPayments,
      verified: verified,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'unread_messages')
  int get unreadMessagesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_accept_payments')
  int get canAcceptPayments => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'display_name') String name,
      @JsonKey(name: 'username') String userName,
      String? bio,
      String? phone,
      String avatar,
      String city,
      String country,
      @JsonKey(name: 'unread_messages') int unreadMessagesCount,
      @JsonKey(name: 'can_accept_payments') int canAcceptPayments,
      bool verified});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? userName = freezed,
    Object? bio = freezed,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? unreadMessagesCount = freezed,
    Object? canAcceptPayments = freezed,
    Object? verified = freezed,
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
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      unreadMessagesCount: unreadMessagesCount == freezed
          ? _value.unreadMessagesCount
          : unreadMessagesCount // ignore: cast_nullable_to_non_nullable
              as int,
      canAcceptPayments: canAcceptPayments == freezed
          ? _value.canAcceptPayments
          : canAcceptPayments // ignore: cast_nullable_to_non_nullable
              as int,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'display_name') String name,
      @JsonKey(name: 'username') String userName,
      String? bio,
      String? phone,
      String avatar,
      String city,
      String country,
      @JsonKey(name: 'unread_messages') int unreadMessagesCount,
      @JsonKey(name: 'can_accept_payments') int canAcceptPayments,
      bool verified});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? userName = freezed,
    Object? bio = freezed,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? unreadMessagesCount = freezed,
    Object? canAcceptPayments = freezed,
    Object? verified = freezed,
  }) {
    return _then(_User(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      unreadMessagesCount == freezed
          ? _value.unreadMessagesCount
          : unreadMessagesCount // ignore: cast_nullable_to_non_nullable
              as int,
      canAcceptPayments == freezed
          ? _value.canAcceptPayments
          : canAcceptPayments // ignore: cast_nullable_to_non_nullable
              as int,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      this.id,
      @JsonKey(name: 'display_name') this.name,
      @JsonKey(name: 'username') this.userName,
      this.bio,
      this.phone,
      this.avatar,
      this.city,
      this.country,
      @JsonKey(name: 'unread_messages') this.unreadMessagesCount,
      @JsonKey(name: 'can_accept_payments') this.canAcceptPayments,
      {required this.verified});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'display_name')
  final String name;
  @override
  @JsonKey(name: 'username')
  final String userName;
  @override
  final String? bio;
  @override
  final String? phone;
  @override
  final String avatar;
  @override
  final String city;
  @override
  final String country;
  @override
  @JsonKey(name: 'unread_messages')
  final int unreadMessagesCount;
  @override
  @JsonKey(name: 'can_accept_payments')
  final int canAcceptPayments;
  @override
  final bool verified;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, userName: $userName, bio: $bio, phone: $phone, avatar: $avatar, city: $city, country: $country, unreadMessagesCount: $unreadMessagesCount, canAcceptPayments: $canAcceptPayments, verified: $verified)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('unreadMessagesCount', unreadMessagesCount))
      ..add(DiagnosticsProperty('canAcceptPayments', canAcceptPayments))
      ..add(DiagnosticsProperty('verified', verified));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.unreadMessagesCount, unreadMessagesCount) ||
                const DeepCollectionEquality()
                    .equals(other.unreadMessagesCount, unreadMessagesCount)) &&
            (identical(other.canAcceptPayments, canAcceptPayments) ||
                const DeepCollectionEquality()
                    .equals(other.canAcceptPayments, canAcceptPayments)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(unreadMessagesCount) ^
      const DeepCollectionEquality().hash(canAcceptPayments) ^
      const DeepCollectionEquality().hash(verified);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      int id,
      @JsonKey(name: 'display_name') String name,
      @JsonKey(name: 'username') String userName,
      String? bio,
      String? phone,
      String avatar,
      String city,
      String country,
      @JsonKey(name: 'unread_messages') int unreadMessagesCount,
      @JsonKey(name: 'can_accept_payments') int canAcceptPayments,
      {required bool verified}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'display_name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  @override
  String? get bio => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String get avatar => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'unread_messages')
  int get unreadMessagesCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'can_accept_payments')
  int get canAcceptPayments => throw _privateConstructorUsedError;
  @override
  bool get verified => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
