import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/style/colors.dart';

void main() {
  runApp(ProviderScope(child: GrabGripApp()));
}

class GrabGripApp extends ConsumerWidget {
  final _appRouter = AppRouter();
  final _themeData = ThemeData(
    primaryColor: AppColors.purple,
    fontFamily: 'NeoTech',
  );

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return MaterialApp.router(
      locale: watch(localeProvider),
      title: 'Grab Grip',
      theme: _themeData,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
