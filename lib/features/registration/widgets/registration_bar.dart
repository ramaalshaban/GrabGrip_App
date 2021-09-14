import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';

AppBar registrationBar(BuildContext context) => AppBar(
      iconTheme: const IconThemeData(
        color: AppColors.purple,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: const Icon(
          Icons.close,
          color: AppColors.purple,
        ),
        onPressed: () => context.router.pop(),
      ),
    );
