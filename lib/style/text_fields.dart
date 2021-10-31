import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';

const registrationInputDecoration = InputDecoration(
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

const standardInputDecoration = InputDecoration(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  labelStyle: TextStyle(
    color: AppColors.purple,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 1.5,
      color: AppColors.purple,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 0.5,
      color: AppColors.lightPurple,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 0.5,
      color: Colors.red,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 0.5,
      color: Colors.red,
    ),
  ),
);

BoxDecoration fieldDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(4),
  border: Border.all(
    width: 0.5,
    color: AppColors.lightPurple,
  ),
);
