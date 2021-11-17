import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/user_profile/payments/models/payment_method/payment_method.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';

class PaymentMethodsProvider extends StateNotifier<List<PaymentMethod>> {
  HttpRequestStateProvider httpRequestStateProvider;

  PaymentMethodsProvider(this.httpRequestStateProvider) : super([]);

  List<PaymentMethod> get paymentMethods => state;

  PaymentMethod getPaymentMethodById(int id) =>
      state.firstWhere((paymentMethod) => paymentMethod.id == id);

  Future<void> getPaymentMethods() async {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      state = [];
    });
    final token = await AppSharedPreferences().getToken();
    await NetworkService().getPaymentMethods(token!).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (fetchedPaymentMethods) {
        state = fetchedPaymentMethods;
      });
    });
  }

  Future<void> linkPaymentMethod({required String key}) async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().linkPaymentMethod(token!, key).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (paymentMethod) {
        state = paymentMethod;
        httpRequestStateProvider.setSuccess(
          successMessage: "Payment method has been linked successfully",
        );
      });
    });
  }

  Future<void> unlinkPaymentMethod({required String id}) async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().unlinkPaymentMethod(token!, id).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (paymentMethod) {
        state = paymentMethod;
        httpRequestStateProvider.setSuccess(
          successMessage: "Payment method has been unlinked successfully",
        );
      });
    });
  }
}
