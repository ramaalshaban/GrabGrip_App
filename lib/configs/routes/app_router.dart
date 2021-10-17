import 'package:auto_route/annotations.dart';
import 'package:grab_grip/features/authentication/forgot_password_screen.dart';
import 'package:grab_grip/features/authentication/login_screen.dart';
import 'package:grab_grip/features/authentication/register_screen.dart';
import 'package:grab_grip/features/browsing/about_us/about_us_screen.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_details_screen.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/browse_screen.dart';
import 'package:grab_grip/features/browsing/home/home_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: RegisterScreen),
    AutoRoute(page: LoginScreen),
    AutoRoute(page: ForgotPasswordScreen),
    AutoRoute(page: BrowseScreen),
    AutoRoute(page: BrowseDetailsScreen),
    AutoRoute(page: AboutUsScreen),
  ],
)
class $AppRouter {}
