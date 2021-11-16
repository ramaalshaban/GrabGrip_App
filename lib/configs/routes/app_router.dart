import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:grab_grip/configs/routes/guards/auth_guard.dart';
import 'package:grab_grip/features/authentication/forgot_password_screen.dart';
import 'package:grab_grip/features/authentication/login_screen.dart';
import 'package:grab_grip/features/authentication/register_screen.dart';
import 'package:grab_grip/features/browsing/about_us/about_us_screen.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_details_screen.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/browse_screen.dart';
import 'package:grab_grip/features/browsing/home/home_screen.dart';
import 'package:grab_grip/features/choosing_preferences/widgets/screens/select_rent_buy_screen.dart';
import 'package:grab_grip/features/choosing_preferences/widgets/screens/set_location_screen.dart';
import 'package:grab_grip/features/feedback/contact_us/contact_us_screen.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/post_listing_screen.dart';
import 'package:grab_grip/features/user_profile/user_profile_screen.dart';
import 'package:grab_grip/shared/verify_your_email_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: SelectRentBuyScreen,
      initial: true,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      page: SetLocationScreen,
      transitionsBuilder: TransitionsBuilders.slideTop,
      durationInMilliseconds: 400,
    ),
    CustomRoute(
      page: HomeScreen,
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 400,
    ),
    AutoRoute(page: RegisterScreen),
    AutoRoute(page: LoginScreen),
    AutoRoute(page: ForgotPasswordScreen),
    AutoRoute(page: BrowseScreen),
    AutoRoute(page: BrowseDetailsScreen),
    AutoRoute(page: PostListingScreen, guards: [AuthGuard]),
    AutoRoute(page: ContactUsScreen),
    AutoRoute(page: AboutUsScreen),
    AutoRoute(page: VerifyYourEmailScreen),
    AutoRoute(page: UserProfileScreen),
  ],
)
class $AppRouter {}
