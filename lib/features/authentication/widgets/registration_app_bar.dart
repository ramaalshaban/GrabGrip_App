import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';

class RegistrationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const RegistrationAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
  }
}
