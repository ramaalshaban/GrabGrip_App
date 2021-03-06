import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';

class HttpRequestStateProvider extends StateNotifier<HttpRequestState> {
  HttpRequestStateProvider()
      : super(const HttpRequestState.noRequestInProgress());

  void setNoRequestInProgress() {
    state = const HttpRequestState.noRequestInProgress();
  }

  void setLoading() {
    state = const HttpRequestState.loading();
  }

  void setInnerLoading({int? index}) {
    // innerLoading is set when we want to show loading in the inner widget while
    //    the outer widget is listening to loading state too.
    state = HttpRequestState.innerLoading(index);
  }

  void setSuccess({String? successMessage, String? actionSucceeded}) {
    state = HttpRequestState.success(successMessage, actionSucceeded);
  }

  void setError(String errorMessage) {
    state = HttpRequestState.error(errorMessage);
  }
}
