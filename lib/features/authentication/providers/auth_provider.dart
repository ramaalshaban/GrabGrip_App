import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
import 'package:grab_grip/features/authentication/providers/auth_state.dart';
import 'package:grab_grip/features/user_profile/providers/user_profile_provider.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';

class AuthProvider extends StateNotifier<AuthState> {
  HttpRequestStateProvider httpRequestStateProvider;
  UserProfileProvider userProfileProvider;

  static const userIsVerified = true;
  static const userIsNotVerified = false;

  AuthProvider(this.httpRequestStateProvider, this.userProfileProvider)
      : super(const AuthState.notAuthenticated()) {
    _initialize();
  }

  void _initialize() {
    AppSharedPreferences().getToken().then(
      (token) async {
        if (token == null) {
          state = const AuthState.notAuthenticated();
        } else {
          // check if use is verified (i.e. got his email verified)
          final isVerified = await getUserVerificationStatus();
          state = AuthState.authenticated(
            isVerified: isVerified == true ? userIsVerified : userIsNotVerified,
          );
        }
      },
    );
  }

  AuthState get authState => state;

  void setAuthenticated({required bool isVerified}) {
    state = AuthState.authenticated(isVerified: isVerified);
  }

  void setNotAuthenticated() {
    state = const AuthState.notAuthenticated();
  }

  Future<bool> getUserVerificationStatus() async {
    final isVerified = await AppSharedPreferences().isUserVerified();
    if (isVerified == true) {
      return userIsVerified;
    } else {
      await userProfileProvider.getUserProfileAndSaveVerificationStatus();
      final isVerified = userProfileProvider.getVerificationStatus();
      return isVerified;
    }
  }

  Future<void> _saveTokenData(LoginResponse response) async {
    final token = response.accessToken;
    final tokenDuration = response.expirationDuration;
    await AppSharedPreferences().saveToken(token!);
    await AppSharedPreferences().saveTokenDuration(tokenDuration!);
  }

  Future<void> register(AuthModel authModel) async {
    httpRequestStateProvider.setLoading();
    await NetworkService().register(authModel).then((result) {
      result.when((errorMessage) {
        state = const AuthState.notAuthenticated();
        httpRequestStateProvider.setError(errorMessage);
      }, (response) {
        state = const AuthState.authenticated(isVerified: false);
        _saveTokenData(response);
        httpRequestStateProvider.setSuccess();
      });
    });
  }

  Future<void> login(AuthModel authModel) async {
    httpRequestStateProvider.setLoading();
    await NetworkService().login(authModel).then((result) {
      result.when((errorMessage) {
        state = const AuthState.notAuthenticated();
        httpRequestStateProvider.setError(errorMessage);
      }, (response) async {
        await _saveTokenData(response);
        final isVerified = await getUserVerificationStatus();
        state = AuthState.authenticated(isVerified: isVerified);
        httpRequestStateProvider.setSuccess(state.toString());
      });
    });
  }

  Future<void> logout() async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().logout(token!).then((result) {
      result.when(
        (errorMessage) {
          httpRequestStateProvider.setError(errorMessage);
        },
        (successMessage) {
          state = const AuthState.notAuthenticated();
          AppSharedPreferences().deleteTokenData();
          AppSharedPreferences().setUserVerified(verificationStatus: false);
          httpRequestStateProvider.setSuccess();
        },
      );
    });
  }
}
