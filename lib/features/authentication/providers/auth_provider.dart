import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
import 'package:grab_grip/features/authentication/providers/auth_state.dart';
import 'package:grab_grip/features/user_profile/change_password/models/change_password_request.dart';
import 'package:grab_grip/features/user_profile/edit_profile/models/edit_profile_request.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:grab_grip/features/user_profile/shared/providers/user_profile_provider.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';
import 'package:grab_grip/utils/constants.dart';

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
    httpRequestStateProvider.setLoading();
    AppSharedPreferences().getToken().then(
      (token) async {
        if (token == null) {
          state = const AuthState.notAuthenticated();
          httpRequestStateProvider.setNoRequestInProgress();
        } else {
          await userProfileProvider.getUserProfileAndSaveIt();
          // check if user is verified (i.e. got his email verified)
          final isVerified = userProfileProvider.getVerificationStatus();
          state = AuthState.authenticated(
            isVerified: isVerified == true ? userIsVerified : userIsNotVerified,
          );
          httpRequestStateProvider.setNoRequestInProgress();
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
      }, (response) async {
        _saveTokenData(response);
        await userProfileProvider.getUserProfileAndSaveIt();
        state = const AuthState.authenticated(isVerified: false);
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
        await userProfileProvider.getUserProfileAndSaveIt();
        final isVerified = userProfileProvider.getVerificationStatus();
        state = AuthState.authenticated(isVerified: isVerified);
        httpRequestStateProvider.setSuccess(successMessage: state.toString());
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
          AppSharedPreferences().setUser(user: User.empty());
          userProfileProvider.reset();
          httpRequestStateProvider.setSuccess(actionSucceeded: logoutAction);
        },
      );
    });
  }

  Future<void> changePassword(ChangePasswordRequest requestBody) async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().changePassword(token!, requestBody).then((result) {
      result.when(
        (errorMessage) {
          httpRequestStateProvider.setError(errorMessage);
        },
        (successMessage) {
          httpRequestStateProvider.setSuccess();
        },
      );
    });
  }

  // Future<void> register(AuthModel authModel) async {
  //   httpRequestStateProvider.setLoading();
  //   await NetworkService().register(authModel).then((result) {
  //     result.when((errorMessage) {
  //       state = const AuthState.notAuthenticated();
  //       httpRequestStateProvider.setError(errorMessage);
  //     }, (response) async {
  //       _saveTokenData(response);
  //       await userProfileProvider.getUserProfileAndSaveIt();
  //       state = const AuthState.authenticated(isVerified: false);
  //       httpRequestStateProvider.setSuccess();
  //     });
  //   });
  // }
  //

  Future<void> editProfile(EditProfileRequest requestBody) async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().editProfile(token!, requestBody).then((result) {
      result.when(
            (errorMessage) {
          httpRequestStateProvider.setError(errorMessage);
        },
            (successMessage) {
          httpRequestStateProvider.setSuccess();
        },
      );
    });
  }



}
