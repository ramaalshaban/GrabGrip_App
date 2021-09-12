import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/style/colors.dart';

Widget drawer(BuildContext context) => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.purple,
            ),
            child: Text(""),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About us'),
            onTap: () => context.router.push(const AboutUsScreenRoute()),
          ),
        ],
      ),
    );
