import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/http_request/http_request_state.dart';

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

  void reset() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // changing the state was put inside this block
      // to avoid this exception : setState() or markNeedsBuild() called during build.
      state = const HttpRequestState.noRequestInProgress();
    });
  }
}
