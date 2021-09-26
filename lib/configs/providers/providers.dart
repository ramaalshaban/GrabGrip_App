import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/local_provider.dart';

final localeProvider = StateNotifierProvider<LocaleProvider, Locale>((_) {
  return LocaleProvider();
});
