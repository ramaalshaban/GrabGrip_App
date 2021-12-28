import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/providers/auth_state.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/functions.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({
    Key? key,
    required this.formKey,
    required this.onSuccessLogin,
    required this.authModel,
  }) : super(key: key);
  final GlobalKey<FormState> formKey;
  final VoidCallback? onSuccessLogin;
  final AuthModel authModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //region Listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider,
        (_, httpRequestState) {
      httpRequestState.whenOrNull(
        error: (errorMessage) => showSnackBarForError(context, errorMessage),
      );
    });
    ref.listen<AuthState>(authProvider, (_, authState) {
      authState.whenOrNull(
        authenticated: (isUserVerified) {
          showSnackBar(
            context,
            AppLocalizations.of(context)!.you_logged_in_successfully,
          );
          context.router.pop();
          if (onSuccessLogin != null && isUserVerified == true) {
            onSuccessLogin!.call();
          }
        },
      );
    });

    //endregion
    final httpRequestState = ref.watch(httpRequestStateProvider);
    return httpRequestState.maybeWhen(
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      orElse: () {
        return TextButton(
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              ref.watch(authProvider.notifier).login(authModel);
            }
          },
          child: Text(
            AppLocalizations.of(context)!.login,
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
