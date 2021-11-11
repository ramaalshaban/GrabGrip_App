import 'dart:io';

import 'package:flutter_exif_rotation/flutter_exif_rotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/photo/photo.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';
import 'package:grab_grip/utils/functions.dart';

class PhotosProvider extends StateNotifier<List<Photo>> {
  HttpRequestStateProvider httpRequestStateProvider;

  PhotosProvider(this.httpRequestStateProvider) : super([]);

  void reset() {
    state = [];
  }

  //region setters and getters
  List<Photo> get photos => state;

  set photos(List<Photo> photos) => state = photos;

  //endregion

  //region upload/delete
  Future<void> uploadPhoto({
    required File file,
    required String hash,
    required String listingTitle,
    bool? takenByCamera,
  }) async {
    httpRequestStateProvider.setInnerLoading();
    File fileToUpload;
    if (takenByCamera == true) {
      // fix the wrong rotation if any
      fileToUpload = await FlutterExifRotation.rotateImage(
        path: file.path,
      );
    } else {
      fileToUpload = file;
    }

    final token = await AppSharedPreferences().getToken();
    await NetworkService()
        .uploadPhoto(token!, hash, fileToUpload)
        .then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (response) async {
        await _addPhoto(file: fileToUpload, listingTitle: listingTitle);
        httpRequestStateProvider.setSuccess();
      });
    });
  }

  Future<void> deletePhoto({
    required String hash,
    required String photoIndex,
  }) async {
    httpRequestStateProvider.setInnerLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().deletePhoto(token!, hash, photoIndex).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (response) async {
        _removePhoto(photoIndex);
        httpRequestStateProvider.setSuccess();
      });
    });
  }

//endregion

  //region add/remove
  Future<void> _addPhoto(
      {required File file, required String listingTitle}) async {
    String photoIndex;
    if (photos.isEmpty) {
      photoIndex = "0";
    } else {
      photoIndex = (int.parse(photos.last.index) + 1).toString();
    }

    final newPhotoName = "$listingTitle - photo #$photoIndex";
    final newPhoto = await makePhotoFromFile(file, photoIndex, newPhotoName);
    final List<Photo> availablePhotos = [];
    availablePhotos.addAll(photos);
    availablePhotos.add(newPhoto);
    photos = availablePhotos.toList();
  }

  void _removePhoto(String photoIndex) {
    final List<Photo> availablePhotos = [];
    for (int i = 0; i < photos.length; i++) {
      // don't add the photo that should be removed
      if (photos[i].index == photoIndex) {
        continue;
      }
      availablePhotos.add(photos[i]);
    }
    photos = availablePhotos.toList();
  }
//endregion

}
