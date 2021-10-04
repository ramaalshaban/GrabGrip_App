import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_profile.freezed.dart';

part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile(int id, String name, String avatar,
      {required bool verified}) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
