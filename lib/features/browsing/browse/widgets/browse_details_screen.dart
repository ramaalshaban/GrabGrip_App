import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class BrowseDetailsScreen extends StatelessWidget {
  final Gear gear;

  const BrowseDetailsScreen({Key? key, required this.gear}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: CachedNetworkImage(
                imageUrl: gear.thumbnail,
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
                  Icons.error,
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
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    height12(),
                    Text(gear.title),
                    height12(),
                    Text(gear.description),
                    height12(),
                    Text(gear.currency),
                    height12(),
                    Text(gear.formattedPrice),
                    height12(),
                    Text(
                      gear.stockQuantity.toString(),
                    ),
                    height12(),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        gear.owner.avatar,
                      ),
                    ),
                    Text(gear.owner.userName),
                    height12(),
                    Text(gear.city ?? ""),
                    height12(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
