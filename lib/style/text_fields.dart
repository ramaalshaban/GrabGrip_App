import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';

class AppTextFields {
  static const registration_input_decoration = InputDecoration(
    hintStyle: TextStyle(
      color: AppColors.purple,
    ),
    focusColor: AppColors.purple,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.purple,
      ),
    ),
  );
}
