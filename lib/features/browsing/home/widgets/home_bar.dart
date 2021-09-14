import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

AppBar homeBar = AppBar(
  iconTheme: const IconThemeData(
    color: AppColors.purple,
  ),
  backgroundColor: Colors.transparent,
  elevation: 0.0,
  flexibleSpace: SafeArea(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: AppColors.purple,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_bag_outlined,
            color: AppColors.purple,
          ),
          onPressed: () {},
        ),
        width12(),
      ],
    ),
  ),
);
