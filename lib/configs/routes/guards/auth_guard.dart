import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/authentication/providers/auth_state.dart';

class AuthGuard extends AutoRouteGuard {
  BuildContext context;

  AuthGuard({required this.context});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isUserAuthenticated;
    final userAuthState = context.read(authProvider);
    userAuthState == const AuthState.authenticated()
        ? isUserAuthenticated = true
        : isUserAuthenticated = false;
    if (isUserAuthenticated) {
      // the user is authenticated, so continue to the wanted destination
      resolver.next();
    } else {
      router.push(
        // user is not authenticated, so open login screen
        LoginScreenRoute(
          // on a successful login, resume the navigation to the destination that user initially wanted
          onSuccessLogin: resolver.next,
        ),
      );
    }
  }
}
