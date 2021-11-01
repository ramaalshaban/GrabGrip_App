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
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'username') String userName,
      String email,
      String? bio,
      String? phone,
      String avatar,
      String lat,
      String lng,
      String city,
      @JsonKey(name: 'country') String countryCode,
      @JsonKey(name: 'country_name') String countryName,
      @JsonKey(name: 'unread_messages') int unreadMessagesCount,
      @JsonKey(name: 'can_accept_payments') int canAcceptPayments,
      {required bool verified}) {
    return _User(
      id,
      displayName,
      userName,
      email,
      bio,
      phone,
      avatar,
      lat,
      lng,
      city,
      countryCode,
      countryName,
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
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_name')
  String get countryName => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'username') String userName,
      String email,
      String? bio,
      String? phone,
      String avatar,
      String lat,
      String lng,
      String city,
      @JsonKey(name: 'country') String countryCode,
      @JsonKey(name: 'country_name') String countryName,
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
    Object? displayName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? city = freezed,
    Object? countryCode = freezed,
    Object? countryName = freezed,
    Object? unreadMessagesCount = freezed,
    Object? canAcceptPayments = freezed,
    Object? verified = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'username') String userName,
      String email,
      String? bio,
      String? phone,
      String avatar,
      String lat,
      String lng,
      String city,
      @JsonKey(name: 'country') String countryCode,
      @JsonKey(name: 'country_name') String countryName,
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
    Object? displayName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? phone = freezed,
    Object? avatar = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? city = freezed,
    Object? countryCode = freezed,
    Object? countryName = freezed,
    Object? unreadMessagesCount = freezed,
    Object? canAcceptPayments = freezed,
    Object? verified = freezed,
  }) {
    return _then(_User(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'display_name') this.displayName,
      @JsonKey(name: 'username') this.userName,
      this.email,
      this.bio,
      this.phone,
      this.avatar,
      this.lat,
      this.lng,
      this.city,
      @JsonKey(name: 'country') this.countryCode,
      @JsonKey(name: 'country_name') this.countryName,
      @JsonKey(name: 'unread_messages') this.unreadMessagesCount,
      @JsonKey(name: 'can_accept_payments') this.canAcceptPayments,
      {required this.verified});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'username')
  final String userName;
  @override
  final String email;
  @override
  final String? bio;
  @override
  final String? phone;
  @override
  final String avatar;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final String city;
  @override
  @JsonKey(name: 'country')
  final String countryCode;
  @override
  @JsonKey(name: 'country_name')
  final String countryName;
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
    return 'User(id: $id, displayName: $displayName, userName: $userName, email: $email, bio: $bio, phone: $phone, avatar: $avatar, lat: $lat, lng: $lng, city: $city, countryCode: $countryCode, countryName: $countryName, unreadMessagesCount: $unreadMessagesCount, canAcceptPayments: $canAcceptPayments, verified: $verified)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('countryCode', countryCode))
      ..add(DiagnosticsProperty('countryName', countryName))
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
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)) &&
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
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
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
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'username') String userName,
      String email,
      String? bio,
      String? phone,
      String avatar,
      String lat,
      String lng,
      String city,
      @JsonKey(name: 'country') String countryCode,
      @JsonKey(name: 'country_name') String countryName,
      @JsonKey(name: 'unread_messages') int unreadMessagesCount,
      @JsonKey(name: 'can_accept_payments') int canAcceptPayments,
      {required bool verified}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String? get bio => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String get avatar => throw _privateConstructorUsedError;
  @override
  String get lat => throw _privateConstructorUsedError;
  @override
  String get lng => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'country')
  String get countryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'country_name')
  String get countryName => throw _privateConstructorUsedError;
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
