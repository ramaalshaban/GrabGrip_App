import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/photo/photo.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/widgets/image_preview_dialog.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PhotoItem extends StatelessWidget {
  const PhotoItem({required this.photo, Key? key}) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
        context: context,
        builder: (context) => ImagePreviewDialog(
          photo: photo,
        ),
      ),
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
                  onTap: () => ref(postListingProvider.notifier)
                      .deletePhoto(photo.index),
                  child: Container(
                    margin: const EdgeInsets.only(top: 4, right: 4),
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 18,
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
