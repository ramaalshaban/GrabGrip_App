import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';

class BrowseProvider extends StateNotifier<BrowseModel?> {
  HttpRequestStateProvider httpRequestStateProvider;

  BrowseProvider(this.httpRequestStateProvider) : super(null);

  Future<void> browse() async {
    httpRequestStateProvider.setLoading();
    await NetworkService().browse().then((result) {
      result.when((errorMessage) {
        state = null;
        httpRequestStateProvider.setError(errorMessage);
      }, (response) {
        state = response;
        httpRequestStateProvider.setSuccess();
      });
    });
  }
}
