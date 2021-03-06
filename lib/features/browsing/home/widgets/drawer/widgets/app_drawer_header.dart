import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // close the drawer first
        context.router.pop();
        context.router.push(const UserProfileScreenRoute());
      },
      child: SizedBox(
        height: screenHeightWithoutExtras() / 3.5,
        child: DrawerHeader(
          padding: EdgeInsets.zero,
          child: Consumer(
            builder: (_, ref, __) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Row(
                  children: [
                    //region User profile image
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: CachedNetworkImage(
                        imageUrl: ref.watch(userProfileProvider).avatar,
                        placeholder: (context, url) => const Center(
                          child: SizedBox(
                            height: 28,
                            width: 28,
                            child: CircularProgressIndicator(
                              color: AppColors.purple,
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //endregion
                    width20(),
                    //region User name and email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          ref.watch(userProfileProvider).displayName,
                          style: const TextStyle(
                            color: AppColors.purple,
                            fontSize: 17,
                          ),
                        ),
                        height2(),
                        Text(
                          ref.watch(userProfileProvider).email ?? "",
                          style: const TextStyle(
                            color: AppColors.lightGray,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                    //endregion
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
