import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/style/colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            AppDrawerHeader(),
            DrawerButton(
              Icons.app_registration,
              "Join Grab Grip",
              RegisterScreenRoute(),
            ),
            DrawerButton(
              Icons.login,
              "Login",
              LoginScreenRoute(),
            ),
            DrawerButton(
              Icons.search,
              "Search",
              AboutUsScreenRoute(),
            ),
            DrawerButton(
              Icons.security,
              "Insurance",
              AboutUsScreenRoute(),
            ),
            DrawerButton(
              Icons.free_breakfast,
              "Blog",
              AboutUsScreenRoute(),
            ),
            DrawerButton(
              Icons.info,
              "About us",
              AboutUsScreenRoute(),
            ),
            DrawerButton(
              Icons.contact_page,
              "Contact us",
              AboutUsScreenRoute(),
            ),
            DrawerButton(
              Icons.home_repair_service,
              "Terms of Service & Privacy Policy",
              AboutUsScreenRoute(),
            ),
          ],
        ),
      ),
    );
  }
}

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage("assets/images/logo.png"),
          ),
          title: Text(
            "User Name",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("username@grabgirp.com"),
        ),
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  const DrawerButton(this.icon, this.title, this.toGoToScreenRoute);

  final IconData icon;
  final String title;
  final PageRouteInfo toGoToScreenRoute;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.purple,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.purple,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () => context.router.push(toGoToScreenRoute),
    );
  }
}
