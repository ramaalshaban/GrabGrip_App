import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ListingDescriptionWidget extends StatelessWidget {
  const ListingDescriptionWidget({Key? key, required this.description})
      : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: listingDetailsBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //region Label
            const Text(
              "About",
              style: AppTextStyles.listingDetailsTitleStyle,
            ),
            //endregion
            height8(),
            Html(
              data: description,
              style: {
                // "p" means style text in <p> tags
                "p": Style(
                  fontSize: FontSize.large,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}
