// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i14;
import 'package:flutter/material.dart' as _i2;

import '../../features/authentication/forgot_password_screen.dart' as _i7;
import '../../features/authentication/login_screen.dart' as _i6;
import '../../features/authentication/register_screen.dart' as _i5;
import '../../features/browsing/about_us/about_us_screen.dart' as _i12;
import '../../features/browsing/browse/models/gear/gear.dart' as _i15;
import '../../features/browsing/browse/widgets/browse_details_screen.dart'
    as _i9;
import '../../features/browsing/browse/widgets/browse_screen/browse_screen.dart'
    as _i8;
import '../../features/browsing/home/home_screen.dart' as _i4;
import '../../features/feedback/contact_us/contact_us_screen.dart' as _i11;
import '../../features/post_listing/widgets/screens/post_listing_screen.dart'
    as _i10;
import '../../shared/verify_your_email_screen.dart' as _i13;
import 'guards/auth_guard.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomeScreen());
    },
    RegisterScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterScreenRouteArgs>(
          orElse: () => const RegisterScreenRouteArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.RegisterScreen(
              onSuccessRegistration: args.onSuccessRegistration,
              key: args.key));
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.LoginScreen(
              key: args.key, onSuccessLogin: args.onSuccessLogin));
    },
    ForgotPasswordScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ForgotPasswordScreen());
    },
    BrowseScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.BrowseScreen());
    },
    BrowseDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BrowseDetailsScreenRouteArgs>();
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.BrowseDetailsScreen(key: args.key, gear: args.gear));
    },
    PostListingScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.PostListingScreen());
    },
    ContactUsScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ContactUsScreen());
    },
    AboutUsScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.AboutUsScreen());
    },
    VerifyYourEmailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyYourEmailScreenRouteArgs>();
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.VerifyYourEmailScreen(
              key: args.key,
              onSuccessVerification: args.onSuccessVerification));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeScreenRoute.name, path: '/'),
        _i1.RouteConfig(RegisterScreenRoute.name, path: '/register-screen'),
        _i1.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i1.RouteConfig(ForgotPasswordScreenRoute.name,
            path: '/forgot-password-screen'),
        _i1.RouteConfig(BrowseScreenRoute.name, path: '/browse-screen'),
        _i1.RouteConfig(BrowseDetailsScreenRoute.name,
            path: '/browse-details-screen'),
        _i1.RouteConfig(PostListingScreenRoute.name,
            path: '/post-listing-screen', guards: [authGuard]),
        _i1.RouteConfig(ContactUsScreenRoute.name, path: '/contact-us-screen'),
        _i1.RouteConfig(AboutUsScreenRoute.name, path: '/about-us-screen'),
        _i1.RouteConfig(VerifyYourEmailScreenRoute.name,
            path: '/verify-your-email-screen')
      ];
}

class HomeScreenRoute extends _i1.PageRouteInfo<void> {
  const HomeScreenRoute() : super(name, path: '/');

  static const String name = 'HomeScreenRoute';
}

class RegisterScreenRoute extends _i1.PageRouteInfo<RegisterScreenRouteArgs> {
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

class LoginScreenRoute extends _i1.PageRouteInfo<LoginScreenRouteArgs> {
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

class ForgotPasswordScreenRoute extends _i1.PageRouteInfo<void> {
  const ForgotPasswordScreenRoute()
      : super(name, path: '/forgot-password-screen');

  static const String name = 'ForgotPasswordScreenRoute';
}

class BrowseScreenRoute extends _i1.PageRouteInfo<void> {
  const BrowseScreenRoute() : super(name, path: '/browse-screen');

  static const String name = 'BrowseScreenRoute';
}

class BrowseDetailsScreenRoute
    extends _i1.PageRouteInfo<BrowseDetailsScreenRouteArgs> {
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

class PostListingScreenRoute extends _i1.PageRouteInfo<void> {
  const PostListingScreenRoute() : super(name, path: '/post-listing-screen');

  static const String name = 'PostListingScreenRoute';
}

class ContactUsScreenRoute extends _i1.PageRouteInfo<void> {
  const ContactUsScreenRoute() : super(name, path: '/contact-us-screen');

  static const String name = 'ContactUsScreenRoute';
}

class AboutUsScreenRoute extends _i1.PageRouteInfo<void> {
  const AboutUsScreenRoute() : super(name, path: '/about-us-screen');

  static const String name = 'AboutUsScreenRoute';
}

class VerifyYourEmailScreenRoute
    extends _i1.PageRouteInfo<VerifyYourEmailScreenRouteArgs> {
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
