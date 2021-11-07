import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_step_number_model/post_listing_step_number.dart';
import 'package:grab_grip/style/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.appBarTitle}) : super(key: key);

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Consumer(
        builder: (_, ref, __) {
          final stepState = ref(postListingStepProvider);
          return Visibility(
            visible: stepState != const PostListingStepNumber.step4(),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                stepState.when(
                  step1: () => Navigator.pop(context),
                  step2: () => ref(postListingStepProvider.notifier).setStep1(),
                  step3: () => ref(postListingStepProvider.notifier).setStep2(),
                  step4: () {},
                );
              },
            ),
          );
        },
      ),
      iconTheme: const IconThemeData(
        color: AppColors.purple,
      ),
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: AppColors.white,
      elevation: 0,
      title: Text(
        appBarTitle,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}