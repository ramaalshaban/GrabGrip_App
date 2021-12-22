import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/feedback/contact_us/models/contact_us/contact_us_form.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/functions.dart';

class SubmitButton extends ConsumerWidget {
  const SubmitButton({
    Key? key,
    required this.formKey,
    required this.contactUsFormModel,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final ContactUsForm contactUsFormModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //region Listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider,
        (_, httpRequestState) {
      httpRequestState.whenOrNull(
        success: (successMessage, _) {
          showSnackBar(
            context,
            successMessage!,
          );
          context.router.pop();
        },
        error: (errorMessage) => showSnackBarForError(context, errorMessage),
      );
    });
    //endregion
    return ref.watch(httpRequestStateProvider).maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          orElse: () => TextButton(
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                ref.watch(feedbackProvider).sendContactUsForm(
                      contactUsFormModel,
                    );
              }
            },
            child: const Text(
              "Submit",
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
  }
}
