import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';

final publishButton = BoxDecoration(
  color: AppColors.purple,
  borderRadius: BorderRadius.circular(4),
  border: Border.all(
    width: 1.5,
    color: AppColors.purple,
  ),
);

final unPublishButton = BoxDecoration(
  color: Colors.red,
  borderRadius: BorderRadius.circular(4),
  border: Border.all(
    width: 1.5,
    color: Colors.red,
  ),
);

final pendingVerification = BoxDecoration(
  color: const Color(0xFFB71C1C),
  borderRadius: BorderRadius.circular(4),
  border: Border.all(
    width: 1.5,
    color: const Color(0xFFB71C1C),
  ),
);

final reEnableButton = BoxDecoration(
  color: AppColors.white,
  borderRadius: BorderRadius.circular(4),
  border: Border.all(
    width: 1.5,
    color: Colors.red,
  ),
);

final listingDetailsBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(8),
  border: Border.all(
    color: AppColors.veryLightPurple,
  ),
);

final standardBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(6),
  border: Border.all(
    color: AppColors.lightPurple,
  ),
);
