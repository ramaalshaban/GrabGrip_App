import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

AppBar applicationBar = AppBar(
  iconTheme: IconThemeData(
    color: AppColors.purple,
  ),
  backgroundColor: Colors.transparent,
  elevation: 0.0,
  flexibleSpace: SafeArea(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: AppColors.purple,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: AppColors.purple,
          ),
          onPressed: () {},
        ),
        SizedBoxWidth.w12(),
      ],
    ),
  ),
);
