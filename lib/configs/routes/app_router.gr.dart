// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../../features/authentication/forgot_password_screen.dart' as _i6;
import '../../features/authentication/login_screen.dart' as _i5;
import '../../features/authentication/register_screen.dart' as _i4;
import '../../features/browsing/about_us/about_us_screen.dart' as _i11;
import '../../features/browsing/browse/models/gear/gear.dart' as _i16;
import '../../features/browsing/browse/widgets/browse_details_screen.dart'
    as _i8;
import '../../features/browsing/browse/widgets/browse_screen/browse_screen.dart'
    as _i7;
import '../../features/browsing/home/home_screen.dart' as _i3;
import '../../features/choosing_preferences/widgets/screens/select_rent_buy_screen.dart'
    as _i1;
import '../../features/choosing_preferences/widgets/screens/set_location_screen.dart'
    as _i2;
import '../../features/feedback/contact_us/contact_us_screen.dart' as _i10;
import '../../features/post_listing/widgets/screens/post_listing_screen.dart'
    as _i9;
import '../../shared/verify_your_email_screen.dart' as _i12;
import 'guards/auth_guard.dart' as _i15;

class AppRouter extends _i13.RootStackRouter {
  AppRouter(
      {_i14.GlobalKey<_i14.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i15.AuthGuard authGuard;

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SelectRentBuyScreenRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SelectRentBuyScreen(),
          transitionsBuilder: _i13.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    SetLocationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SetLocationScreenRouteArgs>(
          orElse: () => const SetLocationScreenRouteArgs());
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.SetLocationScreen(key: args.key),
          transitionsBuilder: _i13.TransitionsBuilders.slideTop,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    HomeScreenRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomeScreen(),
          transitionsBuilder: _i13.TransitionsBuilders.zoomIn,
          durationInMilliseconds: 400,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterScreenRouteArgs>(
          orElse: () => const RegisterScreenRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.RegisterScreen(
              onSuccessRegistration: args.onSuccessRegistration,
              key: args.key));
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.LoginScreen(
              key: args.key, onSuccessLogin: args.onSuccessLogin));
    },
    ForgotPasswordScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ForgotPasswordScreen());
    },
    BrowseScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.BrowseScreen());
    },
    BrowseDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BrowseDetailsScreenRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.BrowseDetailsScreen(key: args.key, gear: args.gear));
    },
    PostListingScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.PostListingScreen());
    },
    ContactUsScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ContactUsScreen());
    },
    AboutUsScreenRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.AboutUsScreen());
    },
    VerifyYourEmailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyYourEmailScreenRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.VerifyYourEmailScreen(
              key: args.key,
              onSuccessVerification: args.onSuccessVerification));
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(SelectRentBuyScreenRoute.name, path: '/'),
        _i13.RouteConfig(SetLocationScreenRoute.name,
            path: '/set-location-screen'),
        _i13.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i13.RouteConfig(RegisterScreenRoute.name, path: '/register-screen'),
        _i13.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i13.RouteConfig(ForgotPasswordScreenRoute.name,
            path: '/forgot-password-screen'),
        _i13.RouteConfig(BrowseScreenRoute.name, path: '/browse-screen'),
        _i13.RouteConfig(BrowseDetailsScreenRoute.name,
            path: '/browse-details-screen'),
        _i13.RouteConfig(PostListingScreenRoute.name,
            path: '/post-listing-screen', guards: [authGuard]),
        _i13.RouteConfig(ContactUsScreenRoute.name, path: '/contact-us-screen'),
        _i13.RouteConfig(AboutUsScreenRoute.name, path: '/about-us-screen'),
        _i13.RouteConfig(VerifyYourEmailScreenRoute.name,
            path: '/verify-your-email-screen')
      ];
}

/// generated route for [_i1.SelectRentBuyScreen]
class SelectRentBuyScreenRoute extends _i13.PageRouteInfo<void> {
  const SelectRentBuyScreenRoute() : super(name, path: '/');

  static const String name = 'SelectRentBuyScreenRoute';
}

/// generated route for [_i2.SetLocationScreen]
class SetLocationScreenRoute
    extends _i13.PageRouteInfo<SetLocationScreenRouteArgs> {
  SetLocationScreenRoute({_i14.Key? key})
      : super(name,
            path: '/set-location-screen',
            args: SetLocationScreenRouteArgs(key: key));

  static const String name = 'SetLocationScreenRoute';
}

class SetLocationScreenRouteArgs {
  const SetLocationScreenRouteArgs({this.key});

  final _i14.Key? key;
}

/// generated route for [_i3.HomeScreen]
class HomeScreenRoute extends _i13.PageRouteInfo<void> {
  const HomeScreenRoute() : super(name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for [_i4.RegisterScreen]
class RegisterScreenRoute extends _i13.PageRouteInfo<RegisterScreenRouteArgs> {
  RegisterScreenRoute({void Function()? onSuccessRegistration, _i14.Key? key})
      : super(name,
            path: '/register-screen',
            args: RegisterScreenRouteArgs(
                onSuccessRegistration: onSuccessRegistration, key: key));

  static const String name = 'RegisterScreenRoute';
}

class RegisterScreenRouteArgs {
  const RegisterScreenRouteArgs({this.onSuccessRegistration, this.key});

  final void Function()? onSuccessRegistration;

  final _i14.Key? key;
}

/// generated route for [_i5.LoginScreen]
class LoginScreenRoute extends _i13.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i14.Key? key, void Function()? onSuccessLogin})
      : super(name,
            path: '/login-screen',
            args:
                LoginScreenRouteArgs(key: key, onSuccessLogin: onSuccessLogin));

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key, this.onSuccessLogin});

  final _i14.Key? key;

  final void Function()? onSuccessLogin;
}

/// generated route for [_i6.ForgotPasswordScreen]
class ForgotPasswordScreenRoute extends _i13.PageRouteInfo<void> {
  const ForgotPasswordScreenRoute()
      : super(name, path: '/forgot-password-screen');

  static const String name = 'ForgotPasswordScreenRoute';
}

/// generated route for [_i7.BrowseScreen]
class BrowseScreenRoute extends _i13.PageRouteInfo<void> {
  const BrowseScreenRoute() : super(name, path: '/browse-screen');

  static const String name = 'BrowseScreenRoute';
}

/// generated route for [_i8.BrowseDetailsScreen]
class BrowseDetailsScreenRoute
    extends _i13.PageRouteInfo<BrowseDetailsScreenRouteArgs> {
  BrowseDetailsScreenRoute({_i14.Key? key, required _i16.Gear gear})
      : super(name,
            path: '/browse-details-screen',
            args: BrowseDetailsScreenRouteArgs(key: key, gear: gear));

  static const String name = 'BrowseDetailsScreenRoute';
}

class BrowseDetailsScreenRouteArgs {
  const BrowseDetailsScreenRouteArgs({this.key, required this.gear});

  final _i14.Key? key;

  final _i16.Gear gear;
}

/// generated route for [_i9.PostListingScreen]
class PostListingScreenRoute extends _i13.PageRouteInfo<void> {
  const PostListingScreenRoute() : super(name, path: '/post-listing-screen');

  static const String name = 'PostListingScreenRoute';
}

/// generated route for [_i10.ContactUsScreen]
class ContactUsScreenRoute extends _i13.PageRouteInfo<void> {
  const ContactUsScreenRoute() : super(name, path: '/contact-us-screen');

  static const String name = 'ContactUsScreenRoute';
}

/// generated route for [_i11.AboutUsScreen]
class AboutUsScreenRoute extends _i13.PageRouteInfo<void> {
  const AboutUsScreenRoute() : super(name, path: '/about-us-screen');

  static const String name = 'AboutUsScreenRoute';
}

/// generated route for [_i12.VerifyYourEmailScreen]
class VerifyYourEmailScreenRoute
    extends _i13.PageRouteInfo<VerifyYourEmailScreenRouteArgs> {
  VerifyYourEmailScreenRoute(
      {_i14.Key? key, required void Function() onSuccessVerification})
      : super(name,
            path: '/verify-your-email-screen',
            args: VerifyYourEmailScreenRouteArgs(
                key: key, onSuccessVerification: onSuccessVerification));

  static const String name = 'VerifyYourEmailScreenRoute';
}

class VerifyYourEmailScreenRouteArgs {
  const VerifyYourEmailScreenRouteArgs(
      {this.key, required this.onSuccessVerification});

  final _i14.Key? key;

  final void Function() onSuccessVerification;
}
