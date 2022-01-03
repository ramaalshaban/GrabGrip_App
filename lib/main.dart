import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/configs/routes/guards/auth_guard.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';

void main() {
  runApp(ProviderScope(child: GrabGripApp()));
}

class GrabGripApp extends ConsumerStatefulWidget {
  @override
  ConsumerState<GrabGripApp> createState() => _GrabGripAppState();
}

class _GrabGripAppState extends ConsumerState<GrabGripApp> {
  late AppRouter? _appRouter;

  @override
  void initState() {
    _appRouter = AppRouter(authGuard: AuthGuard(ref: ref));
    super.initState();
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
    return MaterialApp.router(
      builder: (context, widget) {
        initAppMediaQuery(context);
        return widget!;
      },
      locale: ref.watch(localeProvider),
      title: 'Grab Grip',
      theme: _initTheme(),
      routerDelegate: _appRouter!.delegate(),
      routeInformationParser: _appRouter!.defaultRouteParser(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
