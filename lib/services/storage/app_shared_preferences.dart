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

  Future<void> setUserVerified({required bool verificationStatus}) async {
    (await _sharedPreferences)
        .setBool(SharedPreferencesKeys.isUserVerified, verificationStatus);
  }

  Future<bool?> isUserVerified() async {
    return (await _sharedPreferences)
        .getBool(SharedPreferencesKeys.isUserVerified);
  }
}

class SharedPreferencesKeys {
  static const token = "token";
  static const tokenDuration = "tokenDuration";
  static const isUserVerified = "isUserVerified";
}
