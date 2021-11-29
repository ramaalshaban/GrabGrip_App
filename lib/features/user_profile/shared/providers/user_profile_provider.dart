import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';

class UserProfileProvider extends StateNotifier<User> {
  UserProfileProvider(this.httpRequestStateProvider) : super(User.empty());

  HttpRequestStateProvider httpRequestStateProvider;

  bool getVerificationStatus() => state.verified;

  void reset() {
    state = User.empty();
  }

  User? getUser() {
    if (state == User.empty()) {
      return null;
    } else {
      return state;
    }
  }

  bool isIdOfCurrentUser(int id) => state.id == id;

  Future<void> getUserProfileAndSaveIt() async {
    final token = await AppSharedPreferences().getToken();
    await NetworkService().getUserProfile(token ?? "").then((result) {
      result.when((errorMessage) {}, (response) async {
        state = response;
        await AppSharedPreferences().setUser(user: response);
        // clear the cache of CachedNetworkImage for the profile avatar so the latest user profile avatar gets displayed
        // this is because the avatar url dose not change even if the avatar gets changed
        await CachedNetworkImage.evictFromCache(state.avatar);
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
        httpRequestStateProvider.setSuccess(
          successMessage: "Successfully Sent",
        );
      });
    });
  }
}
