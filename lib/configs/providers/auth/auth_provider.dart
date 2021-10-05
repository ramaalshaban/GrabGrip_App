import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/auth/auth_state.dart';
import 'package:grab_grip/configs/providers/http_request/http_request_state_provider.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/storage/app_shared_pereferences.dart';

class AuthProvider extends StateNotifier<AuthState> {
  HttpRequestStateProvider httpRequestStateProvider;

  AuthProvider(this.httpRequestStateProvider)
      : super(const AuthState.notAuthenticated()) {
    _initialize();
  }

  void _initialize() {
    AppSharedPreferences().getToken().then((token) {
      if (token == null) {
        state = const AuthState.notAuthenticated();
      } else {
        state = const AuthState.authenticated();
      }
    });
  }

  void _saveTokenData(LoginResponse response) {
    final token = response.accessToken;
    final tokenDuration = response.expirationDuration;
    AppSharedPreferences().saveToken(token!);
    AppSharedPreferences().saveTokenDuration(tokenDuration!);
  }

  Future<void> register(AuthModel authModel) async {
    httpRequestStateProvider.setLoading();
    await NetworkService().register(authModel).then((result) {
      result.when((errorMessage) {
        state = const AuthState.notAuthenticated();
        httpRequestStateProvider.setError(errorMessage);
      }, (response) {
        state = const AuthState.authenticated();
        httpRequestStateProvider.setSuccess();
        _saveTokenData(response);
      });
    });
  }

  Future<void> login(AuthModel authModel) async {
    httpRequestStateProvider.setLoading();
    await NetworkService().login(authModel).then((result) {
      result.when((errorMessage) {
        state = const AuthState.notAuthenticated();
        httpRequestStateProvider.setError(errorMessage);
      }, (response) {
        state = const AuthState.authenticated();
        httpRequestStateProvider.setSuccess();
        _saveTokenData(response);
      });
    });
  }

  Future<void> logout() async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().logout(token!).then((result) {
      result.when(
        (errorMessage) {
          state = const AuthState.authenticated();
          httpRequestStateProvider.setError(errorMessage);
        },
        (successMessage) {
          state = const AuthState.notAuthenticated();
          httpRequestStateProvider.setSuccess();
          AppSharedPreferences().deleteTokenData();
        },
      );
    });
  }
}
