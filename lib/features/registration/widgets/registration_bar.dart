import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:auto_route/auto_route.dart';

AppBar registrationBar(BuildContext context) => AppBar(
      iconTheme: IconThemeData(
        color: AppColors.purple,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.close,
          color: AppColors.purple,
        ),
        onPressed: () => context.router.pop(),
      ),
    );
