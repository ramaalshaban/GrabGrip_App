import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';

class RoutesObserver extends AutoRouterObserver {
  RoutesObserver(this.ref);

  final WidgetRef ref;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings.name == PostListingScreenRoute.name) {
      if (ref.watch(postListingProvider.notifier).isEditingMode) {
        WidgetsBinding.instance?.addPostFrameCallback((_) {
          ref.watch(postListingStepProvider.notifier).setStep4();
        });
      }
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings.name == PostListingScreenRoute.name) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        ref.watch(postListingProvider.notifier).reset();
        ref.watch(photosProvider.notifier).reset();
        ref.watch(postListingStepProvider.notifier).setStep1();
      });
    }
  }
}
