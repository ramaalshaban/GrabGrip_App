import 'package:grab_grip/features/feedback/contact_us/models/contact_us/contact_us_form.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';

class FeedbackProvider  {
  HttpRequestStateProvider httpRequestStateProvider;

  FeedbackProvider(this.httpRequestStateProvider);

  Future<void> sendContactUsForm(ContactUsForm contactUsForm) async {
    httpRequestStateProvider.setLoading();
    await NetworkService().sendContactUsForm(contactUsForm).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (successMessage) {
        httpRequestStateProvider.setSuccess(successMessage);
      });
    });
  }
}
