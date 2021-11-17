import 'dart:convert';

import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  static final AppSharedPreferences _appSharedPreferences =
      AppSharedPreferences._internal();
  late final Future<SharedPreferences> _sharedPreferences;

  factory AppSharedPreferences() {
    return _appSharedPreferences;
  }

  AppSharedPreferences._internal() {
    _sharedPreferences = SharedPreferences.getInstance();
  }

  Future<void> saveToken(String token) async {
    (await _sharedPreferences).setString(SharedPreferencesKeys.token, token);
  }

  Future<String?> getToken() async {
    return (await _sharedPreferences).getString(SharedPreferencesKeys.token);
  }

  Future<void> deleteTokenData() async {
    (await _sharedPreferences).remove(SharedPreferencesKeys.token);
    (await _sharedPreferences).remove(SharedPreferencesKeys.tokenDuration);
  }

  Future<void> saveTokenDuration(int tokenDuration) async {
    (await _sharedPreferences)
        .setInt(SharedPreferencesKeys.tokenDuration, tokenDuration);
  }

  Future<int?> getTokenDuration() async {
    return (await _sharedPreferences)
        .getInt(SharedPreferencesKeys.tokenDuration);
  }

  Future<void> saveValue(String key, String value) async {
    (await _sharedPreferences).setString(key, value);
  }

  Future<String?> getValue(String key) async {
    return (await _sharedPreferences).getString(key);
  }

  Future<void> setUser({required User user}) async {
    (await _sharedPreferences)
        .setString(SharedPreferencesKeys.user, jsonEncode(user));
  }

  Future<bool?> isUserVerified() async {
    final userString =
        (await _sharedPreferences).getString(SharedPreferencesKeys.user);
    if (userString == null) {
      return null;
    }
    final userJson = jsonDecode(userString) as  Map<String, dynamic>;
    return User.fromJson(userJson).verified;
  }
}

class SharedPreferencesKeys {
  static const token = "token";
  static const tokenDuration = "tokenDuration";
  static const user = "user";
}
