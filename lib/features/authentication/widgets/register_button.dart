import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/functions.dart';

class RegisterButton extends ConsumerWidget {
  const RegisterButton({
    Key? key,
    required this.formKey,
    required this.authModel,
    required this.onSuccessRegistration,
  }) : super(key: key);
  final GlobalKey<FormState> formKey;
  final AuthModel authModel;
  final VoidCallback? onSuccessRegistration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //region Listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider,
        (_, httpRequestState) {
      httpRequestState.whenOrNull(
        success: (_, __) {
          showSnackBar(
            context,
            AppLocalizations.of(context)!.you_registered_successfully,
          );
          context.router.pop();
        },
        error: (errorMessage) => showSnackBarForError(context, errorMessage),
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
              ref.watch(authProvider.notifier).register(authModel);
            }
          },
          child: Text(
            AppLocalizations.of(context)!.join,
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
