import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';

Widget drawer = Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: const <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: AppColors.purple,
        ),
        child: Text(""),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text('Messages'),
      ),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text('Profile'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
      ),
    ],
  ),
);
