import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      int id,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'username') String userName,
      String? bio,
      String? phone,
      String avatar,
      String city,
      String country,
      @JsonKey(name: 'unread_messages') int unreadMessagesCount,
      @JsonKey(name: 'can_accept_payments') int canAcceptPayments,
      {required bool verified}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
