import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/user_profile/models/user.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_pereferences.dart';

class UserProfileProvider extends StateNotifier<User> {
  UserProfileProvider(this.httpRequestStateProvider)
      : super(User.getEmptyModel());
  HttpRequestStateProvider httpRequestStateProvider;

  bool getVerificationStatus() => state.verified;

  Future<void> getUserProfileAndSaveVerificationStatus() async {
    final token = await AppSharedPreferences().getToken();
    await NetworkService().getUserProfile(token ?? "").then((result) {
      result.when((errorMessage) {
      }, (response) async {
        state = response;
        await AppSharedPreferences()
            .setUserVerified(verificationStatus: response.verified);
      });
    });
  }

  Future<void> resendVerificationEmail() async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().resendVerificationEmail(token ?? "").then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (successMessage) async {
        httpRequestStateProvider.setSuccess("Successfully Sent.");
      });
    });
  }
}
