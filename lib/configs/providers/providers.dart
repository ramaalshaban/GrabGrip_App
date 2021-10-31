import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/locale/locale_provider.dart';
import 'package:grab_grip/features/authentication/providers/auth_provider.dart';
import 'package:grab_grip/features/authentication/providers/auth_state.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/view_mode/view_mode.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/features/browsing/browse/providers/view_mode_provider.dart';
import 'package:grab_grip/features/browsing/filter/models/filter_sort_model/filter_sort_model.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/features/feedback/contact_us/providers/feedback_provider.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_model/post_listing_model.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_step_number_model/post_listing_step_number.dart';
import 'package:grab_grip/features/post_listing/providers/post_listing_provider.dart';
import 'package:grab_grip/features/post_listing/providers/post_listing_step_number_provider.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/shared/location_picker/location_picker_state/location_picker_state.dart';
import 'package:grab_grip/shared/location_picker/providers/location_picker_state_provider.dart';

final localeProvider = StateNotifierProvider<LocaleProvider, Locale>((_) {
  return LocaleProvider();
});

final httpRequestStateProvider =
    StateNotifierProvider<HttpRequestStateProvider, HttpRequestState>((_) {
  return HttpRequestStateProvider();
});

final authProvider =
    StateNotifierProvider<AuthProvider, AuthState>((reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return AuthProvider(provider);
});

final filterAndSortProvider =
    StateNotifierProvider<FilterSortProvider, FilterSortModel>((reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return FilterSortProvider(provider);
});

final gearsViewMode = StateNotifierProvider<ViewModeProvider, ViewMode>(
  (_) => ViewModeProvider(),
);

final browseDataProvider =
    StateNotifierProvider<BrowseProvider, BrowseModel>((reference) {
  final filterSortProvider = reference.watch(filterAndSortProvider.notifier);
  return BrowseProvider(filterSortProvider);
});

final feedbackProvider = Provider((reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return FeedbackProvider(provider);
});

final postListingProvider =
    StateNotifierProvider<PostListingProvider, PostListingModel>((reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return PostListingProvider(provider);
});

final postListingStepProvider =
    StateNotifierProvider<PostListingStepNumberProvider, PostListingStepNumber>(
        (_) {
  return PostListingStepNumberProvider();
});

final locationPickerStateProvider =
    StateNotifierProvider<LocationPickerStateProvider, LocationPickerState>(
        (reference) {
          final provider = reference.watch(filterAndSortProvider.notifier);
          final postAListingProvider = reference.watch(postListingProvider.notifier);
  return LocationPickerStateProvider(provider,postAListingProvider);
});
