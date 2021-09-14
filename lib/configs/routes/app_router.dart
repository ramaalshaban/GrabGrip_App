import 'package:auto_route/annotations.dart';
import 'package:grab_grip/features/browsing/about_us/about_us_screen.dart';
import 'package:grab_grip/features/browsing/home/home_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: AboutUsScreen),
  ],
)
class $AppRouter {}
