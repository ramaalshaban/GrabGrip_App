// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/cupertino.dart' as _i14;
import 'package:flutter/material.dart' as _i12;

import '../../features/authentication/forgot_password_screen.dart' as _i4;
import '../../features/authentication/login_screen.dart' as _i3;
import '../../features/authentication/register_screen.dart' as _i2;
import '../../features/browsing/about_us/about_us_screen.dart' as _i9;
import '../../features/browsing/browse/models/gear/gear.dart' as _i15;
import '../../features/browsing/browse/widgets/browse_details_screen.dart'
    as _i6;
import '../../features/browsing/browse/widgets/browse_screen/browse_screen.dart'
    as _i5;
import '../../features/browsing/home/home_screen.dart' as _i1;
import '../../features/feedback/contact_us/contact_us_screen.dart' as _i8;
import '../../features/post_listing/widgets/screens/post_listing_screen.dart'
    as _i7;
import '../../shared/verify_your_email_screen.dart' as _i10;
import 'guards/auth_guard.dart' as _i13;

class AppRouter extends _i11.RootStackRouter {
  AppRouter(
      {_i12.GlobalKey<_i12.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i13.AuthGuard authGuard;

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    RegisterScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterScreenRouteArgs>(
          orElse: () => const RegisterScreenRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.RegisterScreen(
              onSuccessRegistration: args.onSuccessRegistration,
              key: args.key));
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.LoginScreen(
              key: args.key, onSuccessLogin: args.onSuccessLogin));
    },
    ForgotPasswordScreenRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ForgotPasswordScreen());
    },
    BrowseScreenRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.BrowseScreen());
    },
    BrowseDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BrowseDetailsScreenRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.BrowseDetailsScreen(key: args.key, gear: args.gear));
    },
    PostListingScreenRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PostListingScreen());
    },
    ContactUsScreenRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ContactUsScreen());
    },
    AboutUsScreenRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.AboutUsScreen());
    },
    VerifyYourEmailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyYourEmailScreenRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.VerifyYourEmailScreen(
              key: args.key,
              onSuccessVerification: args.onSuccessVerification));
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(HomeScreenRoute.name, path: '/'),
        _i11.RouteConfig(RegisterScreenRoute.name, path: '/register-screen'),
        _i11.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i11.RouteConfig(ForgotPasswordScreenRoute.name,
            path: '/forgot-password-screen'),
        _i11.RouteConfig(BrowseScreenRoute.name, path: '/browse-screen'),
        _i11.RouteConfig(BrowseDetailsScreenRoute.name,
            path: '/browse-details-screen'),
        _i11.RouteConfig(PostListingScreenRoute.name,
            path: '/post-listing-screen', guards: [authGuard]),
        _i11.RouteConfig(ContactUsScreenRoute.name, path: '/contact-us-screen'),
        _i11.RouteConfig(AboutUsScreenRoute.name, path: '/about-us-screen'),
        _i11.RouteConfig(VerifyYourEmailScreenRoute.name,
            path: '/verify-your-email-screen')
      ];
}

/// generated route for [_i1.HomeScreen]
class HomeScreenRoute extends _i11.PageRouteInfo<void> {
  const HomeScreenRoute() : super(name, path: '/');

  static const String name = 'HomeScreenRoute';
}

/// generated route for [_i2.RegisterScreen]
class RegisterScreenRoute extends _i11.PageRouteInfo<RegisterScreenRouteArgs> {
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

/// generated route for [_i3.LoginScreen]
class LoginScreenRoute extends _i11.PageRouteInfo<LoginScreenRouteArgs> {
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

/// generated route for [_i4.ForgotPasswordScreen]
class ForgotPasswordScreenRoute extends _i11.PageRouteInfo<void> {
  const ForgotPasswordScreenRoute()
      : super(name, path: '/forgot-password-screen');

  static const String name = 'ForgotPasswordScreenRoute';
}

/// generated route for [_i5.BrowseScreen]
class BrowseScreenRoute extends _i11.PageRouteInfo<void> {
  const BrowseScreenRoute() : super(name, path: '/browse-screen');

  static const String name = 'BrowseScreenRoute';
}

/// generated route for [_i6.BrowseDetailsScreen]
class BrowseDetailsScreenRoute
    extends _i11.PageRouteInfo<BrowseDetailsScreenRouteArgs> {
  BrowseDetailsScreenRoute({_i14.Key? key, required _i15.Gear gear})
      : super(name,
            path: '/browse-details-screen',
            args: BrowseDetailsScreenRouteArgs(key: key, gear: gear));

  static const String name = 'BrowseDetailsScreenRoute';
}

class BrowseDetailsScreenRouteArgs {
  const BrowseDetailsScreenRouteArgs({this.key, required this.gear});

  final _i14.Key? key;

  final _i15.Gear gear;
}

/// generated route for [_i7.PostListingScreen]
class PostListingScreenRoute extends _i11.PageRouteInfo<void> {
  const PostListingScreenRoute() : super(name, path: '/post-listing-screen');

  static const String name = 'PostListingScreenRoute';
}

/// generated route for [_i8.ContactUsScreen]
class ContactUsScreenRoute extends _i11.PageRouteInfo<void> {
  const ContactUsScreenRoute() : super(name, path: '/contact-us-screen');

  static const String name = 'ContactUsScreenRoute';
}

/// generated route for [_i9.AboutUsScreen]
class AboutUsScreenRoute extends _i11.PageRouteInfo<void> {
  const AboutUsScreenRoute() : super(name, path: '/about-us-screen');

  static const String name = 'AboutUsScreenRoute';
}

/// generated route for [_i10.VerifyYourEmailScreen]
class VerifyYourEmailScreenRoute
    extends _i11.PageRouteInfo<VerifyYourEmailScreenRouteArgs> {
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
