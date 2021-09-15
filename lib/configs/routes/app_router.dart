import 'package:auto_route/annotations.dart';
import 'package:grab_grip/features/browsing/about_us/about_us_screen.dart';
import 'package:grab_grip/features/browsing/home/home_screen.dart';
import 'package:grab_grip/features/registration/forgot_password_screen.dart';
import 'package:grab_grip/features/registration/login_screen.dart';
import 'package:grab_grip/features/registration/register_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: RegisterScreen),
    AutoRoute(page: LoginScreen),
    AutoRoute(page: ForgotPasswordScreen),
    AutoRoute(page: AboutUsScreen),
  ],
)
class $AppRouter {}
