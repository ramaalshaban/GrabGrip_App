import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/home/widgets/drawer/widgets/app_drawer_button.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
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
                  title: "Order History",
                  onTabFunction: () {},
                ),
                lightGrayDividerThickness0_5,
                AppDrawerButton(
                  title: "Favorites",
                  onTabFunction: () {},
                ),
                lightGrayDividerThickness0_5,
                AppDrawerButton(
                  title: "Listings",
                  onTabFunction: () {},
                ),
                lightGrayDividerThickness0_5,
                AppDrawerButton(
                  title: "Orders",
                  onTabFunction: () {},
                ),
                lightGrayDividerThickness0_5,
                AppDrawerButton(
                  title: "Payments",
                  onTabFunction: () {},
                ),
                lightGrayDividerThickness0_5,
                Consumer(
                  builder: (_, ref, __) {
                    return AppDrawerButton(
                      title: AppLocalizations.of(context)!.logout,
                      onTabFunction: () {
                        ref(authProvider.notifier).logout();
                      },
                    );
                  },
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
