import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/authentication/providers/auth_state.dart';

class AuthGuard extends AutoRouteGuard {
  BuildContext context;

  AuthGuard({required this.context});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final userAuthState = context.read(authProvider);
    if (userAuthState == const AuthState.authenticated(isVerified: true)) {
      // the user is authenticated and verified (i.e. got his email verified), so continue to the wanted destination
      resolver.next();
    } else if (userAuthState ==
        const AuthState.authenticated(isVerified: false)) {
      // the user is authenticated but not verified, so show a screen to tell that to the user
      router.push(
        VerifyYourEmailScreenRoute(
          onSuccessVerification: resolver.next,
        ),
      );
    } else {
      // user is not authenticated, so open login screen
      router.push(
        LoginScreenRoute(
          // on a successful login, resume the navigation (if possible) to the destination that user initially wanted
          onSuccessLogin: resolver.next,
        ),
      );
    }
  }
}
