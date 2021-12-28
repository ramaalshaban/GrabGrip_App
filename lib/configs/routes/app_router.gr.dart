// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter/material.dart' as _i22;

import '../../features/authentication/forgot_password_screen.dart' as _i6;
import '../../features/authentication/login_screen.dart' as _i5;
import '../../features/authentication/register_screen.dart' as _i4;
import '../../features/browsing/about_us/about_us_screen.dart' as _i11;
import '../../features/browsing/browse/models/gear/gear.dart' as _i24;
import '../../features/browsing/browse/widgets/browse_screen/browse_screen.dart'
    as _i7;
import '../../features/browsing/home/home_screen.dart' as _i3;
import '../../features/browsing/listing_details/widgets/listing_details_screen.dart'
    as _i8;
import '../../features/choosing_preferences/widgets/screens/select_rent_buy_screen.dart'
    as _i1;
import '../../features/choosing_preferences/widgets/screens/set_location_screen.dart'
    as _i2;
import '../../features/feedback/contact_us/widgets/contact_us_screen.dart'
    as _i10;
import '../../features/feedback/report_listing/widgets/report_listing_screen.dart'
    as _i20;
import '../../features/post_listing/widgets/screens/post_listing_screen.dart'
    as _i9;
import '../../features/user_profile/change_password/change_password_screen.dart'
    as _i19;
import '../../features/user_profile/favorites/widgets/favorites_screen.dart'
    as _i18;
import '../../features/user_profile/incoming_orders/widgets/incoming_orders_screen.dart'
    as _i16;
import '../../features/user_profile/listings/widgets/listings_screen.dart'
    as _i15;
import '../../features/user_profile/my_orders/widgets/my_orders_screen.dart'
    as _i17;
import '../../features/user_profile/payments/widgets/payments_screen.dart'
    as _i14;
import '../../features/user_profile/user_profile_screen.dart' as _i13;
import '../../shared/widgets/verify_your_email_screen.dart' as _i12;
import 'guards/auth_guard.dart' as _i23;

class AppRouter extends _i21.RootStackRouter {
  AppRouter(
      {_i22.GlobalKey<_i22.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i23.AuthGuard authGuard;

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    SelectRentBuyScreenRoute.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SelectRentBuyScreen(),
          transitionsBuilder: _i21.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    SetLocationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SetLocationScreenRouteArgs>(
          orElse: () => const SetLocationScreenRouteArgs());
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.SetLocationScreen(key: args.key),
          transitionsBuilder: _i21.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    HomeScreenRoute.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomeScreen(),
          transitionsBuilder: _i21.TransitionsBuilders.zoomIn,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterScreenRouteArgs>(
          orElse: () => const RegisterScreenRouteArgs());
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.RegisterScreen(
              onSuccessRegistration: args.onSuccessRegistration,
              key: args.key));
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.LoginScreen(
              key: args.key, onSuccessLogin: args.onSuccessLogin));
    },
    ForgotPasswordScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ForgotPasswordScreen());
    },
    BrowseScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.BrowseScreen());
    },
    ListingDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ListingDetailsScreenRouteArgs>();
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i8.ListingDetailsScreen(key: args.key, listing: args.listing));
    },
    PostListingScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.PostListingScreen());
    },
    ContactUsScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ContactUsScreen());
    },
    AboutUsScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.AboutUsScreen());
    },
    VerifyYourEmailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyYourEmailScreenRouteArgs>();
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.VerifyYourEmailScreen(
              key: args.key,
              onSuccessVerification: args.onSuccessVerification));
    },
    UserProfileScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.UserProfileScreen());
    },
    PaymentsScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.PaymentsScreen());
    },
    ListingsScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.ListingsScreen());
    },
    IncomingOrdersScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.IncomingOrdersScreen());
    },
    MyOrdersScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.MyOrdersScreen());
    },
    FavoritesScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.FavoritesScreen());
    },
    ChangePasswordScreenRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.ChangePasswordScreen());
    },
    ReportListingScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ReportListingScreenRouteArgs>();
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i20.ReportListingScreen(
              key: args.key, listingToReport: args.listingToReport));
    }
  };

  @override
  List<_i21.RouteConfig> get routes => [
        _i21.RouteConfig(SelectRentBuyScreenRoute.name,
            path: '/select-rent-buy-screen'),
        _i21.RouteConfig(SetLocationScreenRoute.name,
            path: '/set-location-screen'),
        _i21.RouteConfig(HomeScreenRoute.name, path: '/'),
        _i21.RouteConfig(RegisterScreenRoute.name, path: '/register-screen'),
        _i21.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i21.RouteConfig(ForgotPasswordScreenRoute.name,
            path: '/forgot-password-screen'),
        _i21.RouteConfig(BrowseScreenRoute.name, path: '/browse-screen'),
        _i21.RouteConfig(ListingDetailsScreenRoute.name,
            path: '/listing-details-screen'),
        _i21.RouteConfig(PostListingScreenRoute.name,
            path: '/post-listing-screen', guards: [authGuard]),
        _i21.RouteConfig(ContactUsScreenRoute.name, path: '/contact-us-screen'),
        _i21.RouteConfig(AboutUsScreenRoute.name, path: '/about-us-screen'),
        _i21.RouteConfig(VerifyYourEmailScreenRoute.name,
            path: '/verify-your-email-screen'),
        _i21.RouteConfig(UserProfileScreenRoute.name,
            path: '/user-profile-screen'),
        _i21.RouteConfig(PaymentsScreenRoute.name,
            path: '/payments-screen', guards: [authGuard]),
        _i21.RouteConfig(ListingsScreenRoute.name,
            path: '/listings-screen', guards: [authGuard]),
        _i21.RouteConfig(IncomingOrdersScreenRoute.name,
            path: '/incoming-orders-screen', guards: [authGuard]),
        _i21.RouteConfig(MyOrdersScreenRoute.name,
            path: '/my-orders-screen', guards: [authGuard]),
        _i21.RouteConfig(FavoritesScreenRoute.name,
            path: '/favorites-screen', guards: [authGuard]),
        _i21.RouteConfig(ChangePasswordScreenRoute.name,
            path: '/change-password-screen', guards: [authGuard]),
        _i21.RouteConfig(ReportListingScreenRoute.name,
            path: '/report-listing-screen', guards: [authGuard])
      ];
}

/// generated route for
/// [_i1.SelectRentBuyScreen]
class SelectRentBuyScreenRoute extends _i21.PageRouteInfo<void> {
  const SelectRentBuyScreenRoute()
      : super(SelectRentBuyScreenRoute.name, path: '/select-rent-buy-screen');

  static const String name = 'SelectRentBuyScreenRoute';
}

/// generated route for
/// [_i2.SetLocationScreen]
class SetLocationScreenRoute
    extends _i21.PageRouteInfo<SetLocationScreenRouteArgs> {
  SetLocationScreenRoute({_i22.Key? key})
      : super(SetLocationScreenRoute.name,
            path: '/set-location-screen',
            args: SetLocationScreenRouteArgs(key: key));

  static const String name = 'SetLocationScreenRoute';
}

class SetLocationScreenRouteArgs {
  const SetLocationScreenRouteArgs({this.key});

  final _i22.Key? key;

  @override
  String toString() {
    return 'SetLocationScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i21.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.RegisterScreen]
class RegisterScreenRoute extends _i21.PageRouteInfo<RegisterScreenRouteArgs> {
  RegisterScreenRoute({void Function()? onSuccessRegistration, _i22.Key? key})
      : super(RegisterScreenRoute.name,
            path: '/register-screen',
            args: RegisterScreenRouteArgs(
                onSuccessRegistration: onSuccessRegistration, key: key));

  static const String name = 'RegisterScreenRoute';
}

class RegisterScreenRouteArgs {
  const RegisterScreenRouteArgs({this.onSuccessRegistration, this.key});

  final void Function()? onSuccessRegistration;

  final _i22.Key? key;

  @override
  String toString() {
    return 'RegisterScreenRouteArgs{onSuccessRegistration: $onSuccessRegistration, key: $key}';
  }
}

/// generated route for
/// [_i5.LoginScreen]
class LoginScreenRoute extends _i21.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i22.Key? key, void Function()? onSuccessLogin})
      : super(LoginScreenRoute.name,
            path: '/login-screen',
            args:
                LoginScreenRouteArgs(key: key, onSuccessLogin: onSuccessLogin));

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key, this.onSuccessLogin});

  final _i22.Key? key;

  final void Function()? onSuccessLogin;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key, onSuccessLogin: $onSuccessLogin}';
  }
}

/// generated route for
/// [_i6.ForgotPasswordScreen]
class ForgotPasswordScreenRoute extends _i21.PageRouteInfo<void> {
  const ForgotPasswordScreenRoute()
      : super(ForgotPasswordScreenRoute.name, path: '/forgot-password-screen');

  static const String name = 'ForgotPasswordScreenRoute';
}

/// generated route for
/// [_i7.BrowseScreen]
class BrowseScreenRoute extends _i21.PageRouteInfo<void> {
  const BrowseScreenRoute()
      : super(BrowseScreenRoute.name, path: '/browse-screen');

  static const String name = 'BrowseScreenRoute';
}

/// generated route for
/// [_i8.ListingDetailsScreen]
class ListingDetailsScreenRoute
    extends _i21.PageRouteInfo<ListingDetailsScreenRouteArgs> {
  ListingDetailsScreenRoute({_i22.Key? key, required _i24.Gear listing})
      : super(ListingDetailsScreenRoute.name,
            path: '/listing-details-screen',
            args: ListingDetailsScreenRouteArgs(key: key, listing: listing));

  static const String name = 'ListingDetailsScreenRoute';
}

class ListingDetailsScreenRouteArgs {
  const ListingDetailsScreenRouteArgs({this.key, required this.listing});

  final _i22.Key? key;

  final _i24.Gear listing;

  @override
  String toString() {
    return 'ListingDetailsScreenRouteArgs{key: $key, listing: $listing}';
  }
}

/// generated route for
/// [_i9.PostListingScreen]
class PostListingScreenRoute extends _i21.PageRouteInfo<void> {
  const PostListingScreenRoute()
      : super(PostListingScreenRoute.name, path: '/post-listing-screen');

  static const String name = 'PostListingScreenRoute';
}

/// generated route for
/// [_i10.ContactUsScreen]
class ContactUsScreenRoute extends _i21.PageRouteInfo<void> {
  const ContactUsScreenRoute()
      : super(ContactUsScreenRoute.name, path: '/contact-us-screen');

  static const String name = 'ContactUsScreenRoute';
}

/// generated route for
/// [_i11.AboutUsScreen]
class AboutUsScreenRoute extends _i21.PageRouteInfo<void> {
  const AboutUsScreenRoute()
      : super(AboutUsScreenRoute.name, path: '/about-us-screen');

  static const String name = 'AboutUsScreenRoute';
}

/// generated route for
/// [_i12.VerifyYourEmailScreen]
class VerifyYourEmailScreenRoute
    extends _i21.PageRouteInfo<VerifyYourEmailScreenRouteArgs> {
  VerifyYourEmailScreenRoute(
      {_i22.Key? key, required void Function() onSuccessVerification})
      : super(VerifyYourEmailScreenRoute.name,
            path: '/verify-your-email-screen',
            args: VerifyYourEmailScreenRouteArgs(
                key: key, onSuccessVerification: onSuccessVerification));

  static const String name = 'VerifyYourEmailScreenRoute';
}

class VerifyYourEmailScreenRouteArgs {
  const VerifyYourEmailScreenRouteArgs(
      {this.key, required this.onSuccessVerification});

  final _i22.Key? key;

  final void Function() onSuccessVerification;

  @override
  String toString() {
    return 'VerifyYourEmailScreenRouteArgs{key: $key, onSuccessVerification: $onSuccessVerification}';
  }
}

/// generated route for
/// [_i13.UserProfileScreen]
class UserProfileScreenRoute extends _i21.PageRouteInfo<void> {
  const UserProfileScreenRoute()
      : super(UserProfileScreenRoute.name, path: '/user-profile-screen');

  static const String name = 'UserProfileScreenRoute';
}

/// generated route for
/// [_i14.PaymentsScreen]
class PaymentsScreenRoute extends _i21.PageRouteInfo<void> {
  const PaymentsScreenRoute()
      : super(PaymentsScreenRoute.name, path: '/payments-screen');

  static const String name = 'PaymentsScreenRoute';
}

/// generated route for
/// [_i15.ListingsScreen]
class ListingsScreenRoute extends _i21.PageRouteInfo<void> {
  const ListingsScreenRoute()
      : super(ListingsScreenRoute.name, path: '/listings-screen');

  static const String name = 'ListingsScreenRoute';
}

/// generated route for
/// [_i16.IncomingOrdersScreen]
class IncomingOrdersScreenRoute extends _i21.PageRouteInfo<void> {
  const IncomingOrdersScreenRoute()
      : super(IncomingOrdersScreenRoute.name, path: '/incoming-orders-screen');

  static const String name = 'IncomingOrdersScreenRoute';
}

/// generated route for
/// [_i17.MyOrdersScreen]
class MyOrdersScreenRoute extends _i21.PageRouteInfo<void> {
  const MyOrdersScreenRoute()
      : super(MyOrdersScreenRoute.name, path: '/my-orders-screen');

  static const String name = 'MyOrdersScreenRoute';
}

/// generated route for
/// [_i18.FavoritesScreen]
class FavoritesScreenRoute extends _i21.PageRouteInfo<void> {
  const FavoritesScreenRoute()
      : super(FavoritesScreenRoute.name, path: '/favorites-screen');

  static const String name = 'FavoritesScreenRoute';
}

/// generated route for
/// [_i19.ChangePasswordScreen]
class ChangePasswordScreenRoute extends _i21.PageRouteInfo<void> {
  const ChangePasswordScreenRoute()
      : super(ChangePasswordScreenRoute.name, path: '/change-password-screen');

  static const String name = 'ChangePasswordScreenRoute';
}

/// generated route for
/// [_i20.ReportListingScreen]
class ReportListingScreenRoute
    extends _i21.PageRouteInfo<ReportListingScreenRouteArgs> {
  ReportListingScreenRoute({_i22.Key? key, required _i24.Gear listingToReport})
      : super(ReportListingScreenRoute.name,
            path: '/report-listing-screen',
            args: ReportListingScreenRouteArgs(
                key: key, listingToReport: listingToReport));

  static const String name = 'ReportListingScreenRoute';
}

class ReportListingScreenRouteArgs {
  const ReportListingScreenRouteArgs({this.key, required this.listingToReport});

  final _i22.Key? key;

  final _i24.Gear listingToReport;

  @override
  String toString() {
    return 'ReportListingScreenRouteArgs{key: $key, listingToReport: $listingToReport}';
  }
}
