import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/auth/auth_provider.dart';
import 'package:grab_grip/configs/providers/auth/auth_state.dart';
import 'package:grab_grip/configs/providers/http_request/http_request_state.dart';
import 'package:grab_grip/configs/providers/http_request/http_request_state_provider.dart';
import 'package:grab_grip/configs/providers/locale/locale_provider.dart';

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
