import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/locale/locale_provider.dart';
import 'package:grab_grip/features/authentication/providers/auth_provider.dart';
import 'package:grab_grip/features/authentication/providers/auth_state.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/services/network/providers/http_request_state.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';

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

final browseDataProvider =
    StateNotifierProvider<BrowseProvider, BrowseModel?>((reference) {
  final provider = reference.watch(httpRequestStateProvider.notifier);
  return BrowseProvider(provider);
});
