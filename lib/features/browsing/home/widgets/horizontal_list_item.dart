import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class HorizontalListItem extends StatelessWidget {
  final String item;

  const HorizontalListItem({required this.item}) : super();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context) / 3,
      child: Card(
        elevation: 6.0,
        color: AppColors.white,
        shadowColor: AppColors.purple,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/logo.png"),
              height4(),
              const Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Text(
                  "item title",
                  style: AppTextStyles.horizontalListItemTitle,
                ),
              ),
              height2(),
              const Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Text(
                  "item subtitle",
                  style: AppTextStyles.horizontalListItemSubtitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
