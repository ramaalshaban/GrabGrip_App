import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/widgets/photo_item.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:image_picker/image_picker.dart';

class ImagesTabView extends StatelessWidget {
  const ImagesTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ProviderListener(
        provider: httpRequestStateProvider,
        onChange: (context, HttpRequestState httpRequestState) {
          httpRequestState.whenOrNull(
            error: (errorMessage) =>
                showSnackBarForError(context, errorMessage),
          );
        },
        child: Consumer(
          builder: (_, ref, __) {
            final photos = ref(postListingProvider).photos;
            final httpStatus = ref(httpRequestStateProvider);
            return httpStatus.maybeWhen(
              innerLoading: () => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.purple,
                ),
              ),
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
      ),
      floatingActionButton: Consumer(
        builder: (_, ref, __) {
          return FloatingActionButton(
            onPressed: () {
              final numOfCurrentPhotos =
                  ref(postListingProvider.notifier).photos.length;
              if (numOfCurrentPhotos == postListingPhotosLimit) {
                showSnackBar(
                  context,
                  "Sorry, you can only add $postListingPhotosLimit photos",
                  Colors.amber[800],
                );
              } else {
                showCameraGalleryDialog(context);
              }
            },
            backgroundColor: AppColors.purple,
            child: const Icon(
              Icons.add_a_photo_outlined,
              color: AppColors.green,
              size: 28,
            ),
          );
        },
      ),
    );
  }

  void showCameraGalleryDialog(BuildContext context) {
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
                  child: Consumer(
                    builder: (_, ref, __) {
                      return InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                          _picker.pickImage(source: ImageSource.camera).then(
                            (pickedImage) {
                              if (pickedImage != null) {
                                ref(postListingProvider.notifier)
                                    .uploadPhoto(pickedImage);
                              } else {
                                handlePickedImageIsNull(context, _picker);
                              }
                            },
                          );
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
                      );
                    },
                  ),
                ),
                //endregion
                const VerticalDivider(
                  color: AppColors.lightPurple,
                  thickness: 1,
                ),
                //region Gallery button
                Expanded(
                  child: Consumer(
                    builder: (_, ref, __) {
                      return InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                          _picker.pickImage(source: ImageSource.gallery).then(
                            (pickedImage) {
                              if (pickedImage != null) {
                                ref(postListingProvider.notifier)
                                    .uploadPhoto(pickedImage);
                              } else {
                                handlePickedImageIsNull(context, _picker);
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
                      );
                    },
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
    ImagePicker picker,
  ) async {
    await picker.retrieveLostData().then(
      (response) {
        if (response.isEmpty) {
          return;
        }
        if (response.file != null) {
          context
              .read(postListingProvider.notifier)
              .uploadPhoto(response.file!);
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
