import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/style/colors.dart';

late BuildContext _passedContext;

Widget drawer(BuildContext context) {
  _passedContext = context;
  return Drawer(
    child: Container(
      color: AppColors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: _drawerHeader,
            ),
          ),
          _drawerButton(Icons.login, "Login", const LoginScreenRoute()),
          _drawerButton(Icons.search, "Search", const AboutUsScreenRoute()),
          _drawerButton(
              Icons.security, "Insurance", const AboutUsScreenRoute()),
          _drawerButton(
              Icons.free_breakfast, "Blog", const AboutUsScreenRoute()),
          _drawerButton(Icons.info, "About us", const AboutUsScreenRoute()),
          _drawerButton(
              Icons.contact_page, "Contact us", const AboutUsScreenRoute()),
          _drawerButton(Icons.home_repair_service,
              "Terms of Service & Privacy Policy", const AboutUsScreenRoute()),
        ],
      ),
    ),
  );
}

ListTile _drawerHeader = ListTile(
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
);

ListTile _drawerButton(
  IconData icon,
  String title,
  PageRouteInfo toGoToScreenRoute,
) {
  return ListTile(
    leading: Icon(
      icon,
      color: AppColors.purple,
    ),
    title: Text(
      title,
      style: TextStyle(
        color: AppColors.purple,
        fontWeight: FontWeight.bold,
      ),
    ),
    onTap: () => _passedContext.router.push(toGoToScreenRoute),
  );
}
