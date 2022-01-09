import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/feedback/contact_us/models/contact_us/contact_us_form.dart';
import 'package:grab_grip/features/feedback/report_listing/models/report_reason/report_reason.dart';
import 'package:grab_grip/features/feedback/report_listing/models/report_request/report_listing_request.dart';
import 'package:grab_grip/features/feedback/shared/models/feedback_state.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';
import 'package:grab_grip/utils/constants.dart';

class FeedbackProvider extends StateNotifier<FeedbackState> {
  HttpRequestStateProvider httpRequestStateProvider;

  FeedbackProvider(this.httpRequestStateProvider)
      : super(const FeedbackState());

  void _reset() {
    state = const FeedbackState();
  }

  //region getters & setters

  set reason(String? reason) => state = state.copyWith(reason: reason);

  String? get reason => state.reason;

  set notes(String notes) => state = state.copyWith(notes: notes);

  String get notes => state.notes;

  List<String> get reportReasons => state.reportReasons;

  set reportReasons(List<String> reportReasons) =>
      state = state.copyWith(reportReasons: reportReasons);

  //endregion

  //region Contact us
  Future<void> sendContactUsForm(ContactUsForm contactUsForm) async {
    httpRequestStateProvider.setLoading();
    await NetworkService().sendContactUsForm(contactUsForm).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (successMessage) {
        httpRequestStateProvider.setSuccess(successMessage: successMessage);
      });
    });
  }

  //endregion

  //region Report listing
  static List<String> reasons(BuildContext context) => [
        AppLocalizations.of(context)!.inappropriate_report_reason,
        AppLocalizations.of(context)!.duplicate_report_reason,
        AppLocalizations.of(context)!.spam_report_reason,
      ];

  Future<void> getReasons(String hash) async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().getReportReasons(token!, hash).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
        reportReasons = [];
      }, (response) {
        httpRequestStateProvider.setSuccess();
        reportReasons = _mapReasonsResponse(response.reportReasons);
      });
    });
  }

  Future<void> reportListing(
    String hash,
  ) async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    final requestBody = ReportListingRequest(reason ?? "Inappropriate", notes);
    await NetworkService()
        .reportListing(token!, hash, requestBody)
        .then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (successMessage) {
        _reset();
        httpRequestStateProvider.setSuccess(
          successMessage: successMessage,
          actionSucceeded: reportListingAction,
        );
      });
    });
  }

  List<String> _mapReasonsResponse(List<ReportReason> reportReasons) =>
      reportReasons.map((reason) => reason.value).toList();

//endregion
}
