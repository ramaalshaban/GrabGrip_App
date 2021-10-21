import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';

class HttpRequestStateProvider extends StateNotifier<HttpRequestState> {
  HttpRequestStateProvider()
      : super(const HttpRequestState.noRequestInProgress());

  void setLoading() {
    state = const HttpRequestState.loading();
  }

  void setSuccess([String? successMessage]) {
    state = HttpRequestState.success(successMessage);
  }

  void setError(String errorMessage) {
    state = HttpRequestState.error(errorMessage);
  }
}
