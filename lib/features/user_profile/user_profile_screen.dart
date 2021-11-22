import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/home/widgets/drawer/widgets/app_drawer_button.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final coloredHeaderHeight = screenHeightWithoutSafeAreaPadding(context) / 5;
    const avatarWidthHeight = 82.0;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //region Colored header
            SizedBox(
              width: screenWidth(context),
              height: screenHeightWithoutSafeAreaPadding(context) / 2.5,
              child: Consumer(
                builder: (_, ref, __) {
                  return Stack(
                    children: [
                      Container(
                        width: screenWidth(context),
                        height: coloredHeaderHeight,
                        color: AppColors.green,
                      ),
                      Positioned(
                        top: coloredHeaderHeight - (avatarWidthHeight / 2),
                        left: (screenWidth(context) / 2) -
                            (avatarWidthHeight / 2),
                        child: Column(
                          children: [
                            //region User profile image
                            SizedBox(
                              width: avatarWidthHeight,
                              height: avatarWidthHeight,
                              child: CachedNetworkImage(
                                imageUrl: ref(userProfileProvider).avatar,
                                placeholder: (context, url) => const Center(
                                  child: SizedBox(
                                    height: 28,
                                    width: 28,
                                    child: CircularProgressIndicator(
                                      color: AppColors.purple,
                                    ),
                                  ),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                  Icons.error,
                                  color: Colors.red,
                                ),
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: AppColors.white,
                                      width: 6,
                                    ),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //endregion
                            height6(),
                            //region User name and email
                            Text(
                              ref(userProfileProvider).displayName,
                              style: const TextStyle(
                                color: AppColors.purple,
                                fontSize: 17,
                              ),
                            ),
                            height2(),
                            Text(
                              ref(userProfileProvider).email ?? "",
                              style: const TextStyle(
                                color: AppColors.lightGray,
                                fontSize: 9,
                              ),
                            ),
                            //endregion
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            //endregion
            //region Buttons
            Column(
              children: [
                AppDrawerButton(
                  title: "Edit Profile",
                  onTabFunction: () {},
                ),
                lightGrayDividerThickness0_5,
                AppDrawerButton(
                  title: "Change Password",
                  onTabFunction: () {},
                ),
                lightGrayDividerThickness0_5,
                AppDrawerButton(
                  title: "My Orders History",
                  onTabFunction: () {
                    context.router.push(const MyOrdersScreenRoute());
                  },
                ),
                lightGrayDividerThickness0_5,
                AppDrawerButton(
                  title: "Favorites",
                  onTabFunction: () {
                    context.router.push(const FavoritesScreenRoute());
                  },
                ),
                lightGrayDividerThickness0_5,
                AppDrawerButton(
                  title: "Listings",
                  onTabFunction: () {
                    context.router.push(const ListingsScreenRoute());
                  },
                ),
                lightGrayDividerThickness0_5,
                AppDrawerButton(
                  title: "Incoming Orders",
                  onTabFunction: () {
                    context.router.push(const IncomingOrdersScreenRoute());
                  },
                ),
                lightGrayDividerThickness0_5,
                AppDrawerButton(
                  title: "Payments",
                  onTabFunction: () {
                    context.router.push(const PaymentsScreenRoute());
                  },
                ),
                lightGrayDividerThickness0_5,
                ProviderListener(
                  provider: httpRequestStateProvider,
                  onChange: (context, HttpRequestState httpRequestState) {
                    httpRequestState.whenOrNull(
                      success: (_, actionSucceeded) {
                        // check for the succeeded action so if there are more than
                        // one provider listener listening to the same state, they don't run together
                        if (actionSucceeded == logoutAction) {
                          showSnackBar(
                            context,
                            AppLocalizations.of(context)!
                                .you_logged_out_successfully,
                          );
                          Navigator.pop(context);
                        }
                      },
                      error: (errorMessage) => showSnackBarForError(
                        context,
                        errorMessage,
                      ),
                    );
                  },
                  child: Consumer(
                    builder: (_, ref, __) {
                      final httpRequestState = ref(httpRequestStateProvider);
                      return httpRequestState.maybeWhen(
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        orElse: () => AppDrawerButton(
                          title: AppLocalizations.of(context)!.logout,
                          onTabFunction: () {
                            ref(authProvider.notifier).logout();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            //endregion
            height36(),
          ],
        ),
      ),
    );
  }
}
