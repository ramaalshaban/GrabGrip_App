import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/photo/photo.dart';
import 'package:grab_grip/shared/image_preview_dialog.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PhotoItem extends StatelessWidget {
  const PhotoItem({required this.photo, Key? key}) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router
            .pushWidget(ImagePreviewDialog(photo: photo, isFile: true))
            .then((_) {
          // prevent the previously focused text field from receiving the focus again after closing the image preview dialog
          FocusScope.of(context).requestFocus(FocusNode());
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4.0,
        shadowColor: Colors.grey[300],
        color: Colors.white,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      image: DecorationImage(
                        image: FileImage(
                          File(photo.path),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                height8(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(6, 2, 6, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          photo.name,
                          maxLines: 1,
                          style: AppTextStyles.title,
                        ),
                        height2(),
                        Text(
                          photo.size,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.subtitle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Consumer(
              builder: (_, ref, __) {
                return InkWell(
                  onTap: () => ref
                      .watch(postListingProvider.notifier)
                      .deletePhoto(photo.index),
                  child: Container(
                    margin: const EdgeInsets.only(top: 4, right: 4),
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 20,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
