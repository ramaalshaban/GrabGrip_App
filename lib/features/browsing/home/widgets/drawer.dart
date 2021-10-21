import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/functions.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const AppDrawerHeader(),
            Consumer(
              builder: (_, watch, __) => Visibility(
                visible: watch(authProvider).when(
                  authenticated: () => false,
                  notAuthenticated: () => true,
                ),
                child: Column(
                  children: [
                    DrawerButton(
                      Icons.app_registration,
                      AppLocalizations.of(context)!.join_grab_grip,
                      RegisterScreenRoute(),
                    ),
                    DrawerButton(
                      Icons.login,
                      AppLocalizations.of(context)!.login,
                      LoginScreenRoute(),
                    ),
                  ],
                ),
              ),
            ),
            DrawerButton(
              Icons.search,
              AppLocalizations.of(context)!.search,
              const AboutUsScreenRoute(),
            ),
            DrawerButton(
              Icons.security,
              AppLocalizations.of(context)!.insurance,
              const AboutUsScreenRoute(),
            ),
            DrawerButton(
              Icons.free_breakfast,
              AppLocalizations.of(context)!.blog,
              const AboutUsScreenRoute(),
            ),
            DrawerButton(
              Icons.info,
              AppLocalizations.of(context)!.about_us,
              const AboutUsScreenRoute(),
            ),
            DrawerButton(
              Icons.contact_page,
              AppLocalizations.of(context)!.contact_us,
              const ContactUsScreenRoute(),
            ),
            DrawerButton(
              Icons.home_repair_service,
              AppLocalizations.of(context)!.terms_and_privacy,
              const AboutUsScreenRoute(),
            ),
            const LanguagePicker(),
            ProviderListener(
              provider: httpRequestStateProvider,
              onChange: (context, HttpRequestState httpRequestState) {
                httpRequestState.whenOrNull(
                  success: (_) {
                    showSnackBar(
                      context,
                      AppLocalizations.of(context)!.you_logged_out_successfully,
                    );
                    Navigator.pop(context);
                  },
                  error: (errorMessage) => showSnackBarForError(
                    context,
                    errorMessage,
                  ),
                );
              },
              child: Consumer(
                builder: (_, watch, __) {
                  final httpRequestState = watch(httpRequestStateProvider);
                  return httpRequestState.maybeWhen(
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    orElse: () => Visibility(
                      visible: watch(authProvider).when(
                        authenticated: () => true,
                        notAuthenticated: () => false,
                      ),
                      child: ListTile(
                        leading: const Icon(
                          Icons.sensor_door_outlined,
                          color: AppColors.purple,
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.logout,
                          style: const TextStyle(
                            color: AppColors.purple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          watch(authProvider.notifier).logout();
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage("assets/images/logo.png"),
          ),
          title: Text(
            "User Name",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("username@grabgirp.com"),
        ),
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  const DrawerButton(this.icon, this.title, this.toGoToScreenRoute);

  final IconData icon;
  final String title;
  final PageRouteInfo toGoToScreenRoute;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.purple,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.purple,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        context.router.push(toGoToScreenRoute);
        Navigator.pop(context);
      },
    );
  }
}

class LanguagePicker extends StatelessWidget {
  const LanguagePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.language,
        color: AppColors.purple,
      ),
      title: Text(
        AppLocalizations.of(context)!.language,
        style: const TextStyle(
          color: AppColors.purple,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () => showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(AppLocalizations.of(context)!.change_app_lang),
            actionsAlignment: MainAxisAlignment.center,
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  const english = Locale('en');
                  context.read(localeProvider.notifier).locale = english;
                  Navigator.pop(context);
                },
                child: const Text("English"),
              ),
              TextButton(
                onPressed: () {
                  const arabic = Locale('ar');
                  context.read(localeProvider.notifier).locale = arabic;
                  Navigator.pop(context);
                },
                child: const Text("العربيّة"),
              )
            ],
          );
        },
      ),
    );
  }
}
