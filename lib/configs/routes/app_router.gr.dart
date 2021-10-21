// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/authentication/forgot_password_screen.dart' as _i6;
import '../../features/authentication/login_screen.dart' as _i5;
import '../../features/authentication/register_screen.dart' as _i4;
import '../../features/browsing/about_us/about_us_screen.dart' as _i10;
import '../../features/browsing/browse/models/gear/gear.dart' as _i11;
import '../../features/browsing/browse/widgets/browse_details_screen.dart'
    as _i8;
import '../../features/browsing/browse/widgets/browse_screen/browse_screen.dart'
    as _i7;
import '../../features/browsing/home/home_screen.dart' as _i3;
import '../../features/feedback/contact_us/contact_us_screen.dart' as _i9;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeScreen());
    },
    RegisterScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterScreen());
    },
    LoginScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LoginScreen());
    },
    ForgotPasswordScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ForgotPasswordScreen());
    },
    BrowseScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.BrowseScreen());
    },
    BrowseDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BrowseDetailsScreenRouteArgs>();
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.BrowseDetailsScreen(key: args.key, gear: args.gear));
    },
    ContactUsScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ContactUsScreen());
    },
    AboutUsScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.AboutUsScreen());
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
        _i1.RouteConfig(ContactUsScreenRoute.name, path: '/contact-us-screen'),
        _i1.RouteConfig(AboutUsScreenRoute.name, path: '/about-us-screen')
      ];
}

class HomeScreenRoute extends _i1.PageRouteInfo<void> {
  const HomeScreenRoute() : super(name, path: '/');

  static const String name = 'HomeScreenRoute';
}

class RegisterScreenRoute extends _i1.PageRouteInfo<void> {
  const RegisterScreenRoute() : super(name, path: '/register-screen');

  static const String name = 'RegisterScreenRoute';
}

class LoginScreenRoute extends _i1.PageRouteInfo<void> {
  const LoginScreenRoute() : super(name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
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
  BrowseDetailsScreenRoute({_i2.Key? key, required _i11.Gear gear})
      : super(name,
            path: '/browse-details-screen',
            args: BrowseDetailsScreenRouteArgs(key: key, gear: gear));

  static const String name = 'BrowseDetailsScreenRoute';
}

class BrowseDetailsScreenRouteArgs {
  const BrowseDetailsScreenRouteArgs({this.key, required this.gear});

  final _i2.Key? key;

  final _i11.Gear gear;
}

class ContactUsScreenRoute extends _i1.PageRouteInfo<void> {
  const ContactUsScreenRoute() : super(name, path: '/contact-us-screen');

  static const String name = 'ContactUsScreenRoute';
}

class AboutUsScreenRoute extends _i1.PageRouteInfo<void> {
  const AboutUsScreenRoute() : super(name, path: '/about-us-screen');

  static const String name = 'AboutUsScreenRoute';
}
