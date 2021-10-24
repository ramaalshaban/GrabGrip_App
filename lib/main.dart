import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/configs/routes/guards/auth_guard.dart';
import 'package:grab_grip/style/colors.dart';

void main() {
  runApp(ProviderScope(child: GrabGripApp()));
}

class GrabGripApp extends StatefulWidget {
  @override
  State<GrabGripApp> createState() => _GrabGripAppState();
}

class _GrabGripAppState extends State<GrabGripApp> {
  AppRouter? _appRouter;

  void initAppRouterIfNot(BuildContext context) {
    _appRouter ??= AppRouter(authGuard: AuthGuard(context: context));
  }

  ThemeData _initTheme() {
    final ThemeData themeData = ThemeData(
      fontFamily: 'NeoTech',
    );
    return themeData.copyWith(
      primaryColor: AppColors.purple,
      textSelectionTheme: themeData.textSelectionTheme.copyWith(
        cursorColor: AppColors.purple,
        selectionHandleColor: AppColors.purple,
      ),
      splashColor: AppColors.purple,
      hintColor: AppColors.purple,
    );
  }

  @override
  Widget build(BuildContext context) {
    initAppRouterIfNot(context);
    return Consumer(
      builder: (_, reference, __) {
        return MaterialApp.router(
          locale: reference(localeProvider),
          title: 'Grab Grip',
          theme: _initTheme(),
          routerDelegate: _appRouter!.delegate(),
          routeInformationParser: _appRouter!.defaultRouteParser(),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
  }
}
