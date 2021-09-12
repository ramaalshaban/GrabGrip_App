import 'package:flutter/material.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/style/colors.dart';

void main() {
  runApp(GrabGripApp());
}

class GrabGripApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.purple,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
