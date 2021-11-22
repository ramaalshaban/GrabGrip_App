import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';

class FavoritesProvider extends StateNotifier<List<Gear>> {
  HttpRequestStateProvider httpRequestStateProvider;

  FavoritesProvider(this.httpRequestStateProvider) : super([]);

  void removeFromFavorites(int index) {
    final List<Gear> availableFavorites = [];
    availableFavorites.addAll(state);
    availableFavorites.removeAt(index);
    state = availableFavorites;
  }

  Future<void> getFavorites() async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().getFavorites(token!).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (fetchedFavorites) {
        state = fetchedFavorites;
        httpRequestStateProvider.setSuccess();
      });
    });
  }

  Future<void> toggleFavoriteStatus({
    required String hash,
    required String slug,
    required int index,
  }) async {
    httpRequestStateProvider.setInnerLoading(index: index);
    final token = await AppSharedPreferences().getToken();
    await NetworkService()
        .toggleFavoriteStatus(token!, hash, slug)
        .then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (paymentMethod) {
        removeFromFavorites(index);
        httpRequestStateProvider.setSuccess();
      });
    });
  }
}
