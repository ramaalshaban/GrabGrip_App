import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';

class PingProvider {
  HttpRequestStateProvider httpRequestStateProvider;

  PingProvider(this.httpRequestStateProvider);

  Future<void> pingGrabGrip() async {
    httpRequestStateProvider.setLoading();
    await NetworkService().pingGrabGrip().then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (successMessage) {
        httpRequestStateProvider.setSuccess();
      });
    });
  }
}
