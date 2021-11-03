import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/photo/photo.dart';
import 'package:grab_grip/style/colors.dart';

class ImagePreviewDialog extends StatelessWidget {
  const ImagePreviewDialog({required this.photo, Key? key}) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: FileImage(
                  File(photo.path),
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: const EdgeInsets.only(top: 8, right: 8),
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                color: AppColors.transparentWhite,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Icon(
                Icons.close,
                color: AppColors.purple,
              ),
            ),
          )
        ],
      ),
    );
  }
}
