import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/photo/photo.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';

class ImagePreviewDialog extends StatelessWidget {
  const ImagePreviewDialog({required this.photo, Key? key}) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      child: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: screenHeightWithoutExtras(context) -
                    (screenHeightWithoutExtras(context) * 0.03),
                width: screenWidth(context) - (screenWidth(context) * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: FileImage(
                      File(photo.path),
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              InkWell(
                onTap: () => context.router.pop(),
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
            ],
          ),
        ),
      ),
    );
  }
}
