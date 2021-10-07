import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/services/network/providers/http_request_state.dart';

class HttpRequestStateProvider extends StateNotifier<HttpRequestState> {
  HttpRequestStateProvider()
      : super(const HttpRequestState.noRequestInProgress());

  void setLoading() {
    state = const HttpRequestState.loading();
  }

  void setSuccess() {
    state = const HttpRequestState.success();
  }

  void setError(String errorMessage) {
    state = HttpRequestState.error(errorMessage);
  }
}
