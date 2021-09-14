import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class HorizontalListItem extends StatelessWidget {
  final String item;

  HorizontalListItem({required this.item}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Device.screenWidth(context) / 3,
      child: Card(
        elevation: 6.0,
        color: AppColors.white,
        shadowColor: AppColors.purple,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/logo.png"),
              SizedBoxHeight.h4(),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  "item title",
                  style: AppTextStyles.horizontal_list_item_title,
                ),
              ),
              SizedBoxHeight.h2(),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  "item subtitle",
                  style: AppTextStyles.horizontal_list_item_subtitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
