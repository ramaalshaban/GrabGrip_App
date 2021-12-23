import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_photo/listing_photo.dart';
import 'package:grab_grip/shared/image_preview_dialog.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({Key? key, required this.photos}) : super(key: key);
  final List<ListingPhoto> photos;

  @override
  Widget build(BuildContext context) {
    return photos.isNotEmpty
        ?
        //region Slider
        CarouselSlider.builder(
            options: CarouselOptions(
              autoPlayInterval: const Duration(seconds: 2),
              enableInfiniteScroll: false,
              viewportFraction: 1,
              height: screenHeightWithoutExtras(context) / 1.7,
              autoPlay: true,
            ),
            itemCount: photos.length,
            itemBuilder: (context, itemIndex, pageViewIndex) => InkWell(
              onTap: () {
                context.router
                    .pushWidget(
                  ImagePreviewDialog(
                    url: photos[itemIndex].originalPhotoUrl,
                    isFile: false,
                  ),
                ).then((_) {
                  // prevent the previously focused text field from receiving the focus again after closing the image preview dialog
                  FocusScope.of(context).requestFocus(FocusNode());
                });
              },
              child: CachedNetworkImage(
                imageUrl: photos[itemIndex].photoUrl,
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
                  Icons.error_outline_rounded,
                  color: Colors.red,
                ),
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          )
        //endregion
        :
        //region No photos placeholder widget
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("http://grabgrips.com/images/no_image.png"),
                fit: BoxFit.cover,
              ),
            ),
          );
    //endregion
  }
}
