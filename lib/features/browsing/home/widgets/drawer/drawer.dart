import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/home/widgets/drawer/widgets/app_drawer_button.dart';
import 'package:grab_grip/features/browsing/home/widgets/drawer/widgets/app_drawer_header.dart';
import 'package:grab_grip/features/browsing/home/widgets/drawer/widgets/language_picker.dart';
import 'package:grab_grip/features/user_profile/models/user.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.white,
        padding: EdgeInsets.zero,
        child: ListView(
          children: [
            //region drawer header
            Consumer(
              builder: (_, ref, __) {
                final user = ref(userProfileProvider);
                final isVisible = user != User.empty();
                return Visibility(
                  visible: isVisible,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: isVisible ? const AppDrawerHeader() : height36(),
                );
              },
            ),
            //endregion//
            //region join/login buttons
            Consumer(
              builder: (_, ref, __) => Visibility(
                visible: ref(authProvider).when(
                  authenticated: (_) => false,
                  notAuthenticated: () => true,
                ),
                child: Column(
                  children: [
                    AppDrawerButton(
                      title: AppLocalizations.of(context)!.join_grab_grip,
                      onTabFunction: () {
                        context.router.push(RegisterScreenRoute());
                        Navigator.pop(context);
                      },
                    ),
                    lightGrayDividerThickness0_5,
                    AppDrawerButton(
                      title: AppLocalizations.of(context)!.login,
                      onTabFunction: () {
                        context.router.push(LoginScreenRoute());
                        Navigator.pop(context);
                      },
                    ),
                    lightGrayDividerThickness0_5,
                  ],
                ),
              ),
            ),
            //endregion
            AppDrawerButton(
              title: "Post a Listing",
              onTabFunction: () {
                context.router.push(const PostListingScreenRoute());
                Navigator.pop(context);
              },
            ),
            lightGrayDividerThickness0_5,
            AppDrawerButton(
              title: AppLocalizations.of(context)!.search,
              onTabFunction: () {
                context.router.push(const AboutUsScreenRoute());
                Navigator.pop(context);
              },
            ),
            lightGrayDividerThickness0_5,
            AppDrawerButton(
              title: "Change My Preferences",
              onTabFunction: () {
                context.router.replace(const SelectRentBuyScreenRoute());
                Navigator.pop(context);
              },
            ),
            lightGrayDividerThickness0_5,
            AppDrawerButton(
              title: AppLocalizations.of(context)!.insurance,
              onTabFunction: () {
                context.router.push(const AboutUsScreenRoute());
                Navigator.pop(context);
              },
            ),
            lightGrayDividerThickness0_5,
            AppDrawerButton(
              title: AppLocalizations.of(context)!.blog,
              onTabFunction: () {
                context.router.push(const AboutUsScreenRoute());
                Navigator.pop(context);
              },
            ),
            lightGrayDividerThickness0_5,
            AppDrawerButton(
              title: AppLocalizations.of(context)!.about_us,
              onTabFunction: () {
                context.router.push(const AboutUsScreenRoute());
                Navigator.pop(context);
              },
            ),
            lightGrayDividerThickness0_5,
            AppDrawerButton(
              title: AppLocalizations.of(context)!.contact_us,
              onTabFunction: () {
                context.router.push(const ContactUsScreenRoute());
                Navigator.pop(context);
              },
            ),
            lightGrayDividerThickness0_5,
            AppDrawerButton(
              title: AppLocalizations.of(context)!.terms_and_privacy,
              onTabFunction: () {
                context.router.push(const AboutUsScreenRoute());
                Navigator.pop(context);
              },
            ),
            lightGrayDividerThickness0_5,
            const LanguagePicker(),
            //region logout button
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
                        authenticated: (_) => true,
                        notAuthenticated: () => false,
                      ),
                      child: Column(
                        children: [
                          lightGrayDividerThickness0_5,
                          ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 34),
                            title: Text(
                              AppLocalizations.of(context)!.logout,
                              style: const TextStyle(
                                color: AppColors.gray,
                                fontSize: 16,
                              ),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: AppColors.gray,
                              size: 16,
                            ),
                            onTap: () {
                              watch(authProvider.notifier).logout();
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            //endregion
            height36(),
          ],
        ),
      ),
    );
  }
}
