import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocaleProvider extends StateNotifier<Locale> {
  LocaleProvider() : super(Locale(Platform.localeName.substring(0, 2)));

  Locale get locale => state;

  set locale(Locale newLocale) {
    state = newLocale;
  }
}
