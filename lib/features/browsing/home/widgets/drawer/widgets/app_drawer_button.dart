import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/style/colors.dart';

class AppDrawerButton extends StatelessWidget {
  const AppDrawerButton(this.title, this.toGoToScreenRoute);

  final String title;
  final PageRouteInfo toGoToScreenRoute;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 34),
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.gray,
          fontSize: 16,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: AppColors.gray,
        size: 16,
      ),
      onTap: () {
        if (toGoToScreenRoute == const SelectRentBuyScreenRoute()) {
          context.router.replace(toGoToScreenRoute);
        } else {
          context.router.push(toGoToScreenRoute);
        }
        Navigator.pop(context);
      },
    );
  }
}
