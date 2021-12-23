import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/widgets/photo_item.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/widgets/photos_skeleton_gird_loader.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/shared/widgets/are_you_sure_dialog.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagesTabView extends ConsumerWidget {
  const ImagesTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //region Listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider,
        (_, httpRequestState) {
      httpRequestState.whenOrNull(
        error: (errorMessage) => showSnackBarForError(context, errorMessage),
      );
    });
    //endregion
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Consumer(
        builder: (_, ref, __) {
          final photos = ref.watch(photosProvider);
          final httpStatus = ref.watch(httpRequestStateProvider);
          return httpStatus.maybeWhen(
            innerLoading: (_) => const PhotosSkeletonGridLoader(),
            orElse: () => photos.isNotEmpty
                ? GridView.count(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    children: List.generate(
                      photos.length,
                      (index) => PhotoItem(photo: photos[index]),
                    ),
                  )
                : const Center(
                    child: Text(
                      "Add photos for your listing",
                      style: TextStyle(
                        color: AppColors.purple,
                      ),
                    ),
                  ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final numOfCurrentPhotos =
              ref.watch(photosProvider.notifier).photos.length;
          if (numOfCurrentPhotos == postListingPhotosLimit) {
            showSnackBar(
              context,
              "Sorry, you can only add $postListingPhotosLimit photos",
              Colors.amber[800],
            );
          } else {
            showCameraGalleryDialog(context, ref);
          }
        },
        backgroundColor: AppColors.purple,
        child: const Icon(
          Icons.add_a_photo_outlined,
          color: AppColors.green,
          size: 28,
        ),
      ),
    );
  }

  void showCameraGalleryDialog(BuildContext context, WidgetRef ref) {
    final ImagePicker _picker = ImagePicker();
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        actions: <Widget>[
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //region Camera button
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                      // check if the storage permissions are granted or not
                      // storage permissions are required for the flutter_exif_rotation package
                      Permission.storage.request().then((status) {
                        if (status == PermissionStatus.granted) {
                          _picker.pickImage(source: ImageSource.camera).then(
                            (capturedImage) {
                              if (capturedImage != null) {
                                final file = File(capturedImage.path);
                                ref
                                    .watch(postListingProvider.notifier)
                                    .uploadPhoto(file, takenByCamera: true);
                              } else {
                                handlePickedImageIsNull(
                                  context,
                                  ref,
                                  _picker,
                                );
                              }
                            },
                          );
                        } else if (status ==
                            PermissionStatus.permanentlyDenied) {
                          // the execution will enter this block if the user opted to never again see the permission request dialog for this
                          // app. The only way to change the permission's status now is to let the
                          // user manually enable it in the system settings.
                          showDialog(
                            context: context,
                            builder: (_) => AreYouSureDialog(
                              contentText:
                                  "Storage permission is required for processing the photos taken by camera.\n"
                                  "Allow the storage permission from the app settings please",
                              continueAction: () {
                                Navigator.pop(context);
                                openAppSettings();
                              },
                              cancelAction: () => Navigator.pop(context),
                              continueActionText: "Open app settings",
                              cancelActionText: "Cancel",
                            ),
                          );
                        }
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.camera_alt_rounded,
                          color: AppColors.purple,
                          size: 38,
                        ),
                        Text(
                          "Camera",
                          style: TextStyle(
                            color: AppColors.purple,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //endregion
                const VerticalDivider(
                  color: AppColors.lightPurple,
                  thickness: 1,
                ),
                //region Gallery button
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                      _picker.pickImage(source: ImageSource.gallery).then(
                        (pickedImage) {
                          if (pickedImage != null) {
                            final file = File(pickedImage.path);
                            ref
                                .watch(postListingProvider.notifier)
                                .uploadPhoto(file);
                          } else {
                            handlePickedImageIsNull(context, ref, _picker);
                          }
                        },
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.photo_library_rounded,
                          color: AppColors.purple,
                          size: 38,
                        ),
                        Text(
                          "Gallery",
                          style: TextStyle(
                            color: AppColors.purple,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //endregion
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> handlePickedImageIsNull(
    BuildContext context,
    WidgetRef ref,
    ImagePicker picker,
  ) async {
    // read here please to understand the goal of this method: https://pub.dev/packages/image_picker#handling-mainactivity-destruction-on-android
    await picker.retrieveLostData().then(
      (response) {
        if (response.isEmpty) {
          return;
        }
        if (response.file != null) {
          final file = File(response.file!.path);
          ref.watch(postListingProvider.notifier).uploadPhoto(file);
        } else {
          showSnackBarForError(
            context,
            "Something went wrong. Pick/take the photo again please",
          );
        }
      },
    );
  }
}
