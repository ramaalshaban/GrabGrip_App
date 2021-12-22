import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/photo/photo.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';

class ImagePreviewDialog extends ConsumerWidget {
  const ImagePreviewDialog({
    this.photo,
    this.url,
    required this.isFile,
    Key? key,
  }) : super(key: key);

  final Photo? photo;
  final String? url;
  final bool isFile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ping the server to check the internet connection when user navigates to this screen
    // if there is no internet connection then an error snack bar will be displayed
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      ref.watch(pingProvider).pingGrabGrip();
    });
    final imageProvider = isFile
        ? FileImage(File(photo!.path))
        : NetworkImage(url!) as ImageProvider;
    return Material(
      color: AppColors.white,
      child: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              //region Image
              Container(
                height: screenHeightWithoutExtras(context) -
                    (screenHeightWithoutExtras(context) * 0.03),
                width: screenWidth(context) - (screenWidth(context) * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              //endregion
              //region Close dialog button
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  margin: const EdgeInsets.only(top: 8, right: 8),
                  height: 36,
                  width: 36,
                  decoration: const BoxDecoration(
                    color: AppColors.transparentWhite,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: AppColors.purple,
                    size: 30,
                  ),
                ),
              )
              //endregion
            ],
          ),
        ),
      ),
    );
  }
}
