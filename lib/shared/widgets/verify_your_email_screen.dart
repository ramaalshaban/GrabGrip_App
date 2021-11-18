import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/shared/widgets/continue_button.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class VerifyYourEmailScreen extends StatelessWidget {
  const VerifyYourEmailScreen({
    Key? key,
    required this.onSuccessVerification,
  }) : super(key: key);

  final VoidCallback onSuccessVerification;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        appBarTitle: "Email verification",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sorry, you can't do this while your email is not verified yet.",
              textAlign: TextAlign.center,
            ),
            height12(),
            const Text(
              "Verify your email please and click on the button below",
              textAlign: TextAlign.center,
            ),
            height60(),
            Consumer(
              builder: (_, ref, __) {
                return Column(
                  children: [
                    ProviderListener(
                      provider: userProfileProvider,
                      onChange: (context, User user) {
                        final isVerified = user.verified;
                        if (isVerified) {
                          context.router.pop();
                          onSuccessVerification.call();
                          showSnackBar(
                            context,
                            "The email has been verified successfully",
                          );
                        } else {
                          showSnackBarForError(
                            context,
                            "The email is still not verified",
                          );
                        }
                      },
                      child: ContinueButton(
                        buttonText: "I have verified my email",
                        onClickAction: () async {
                          await ref(userProfileProvider.notifier)
                              .getUserProfileAndSaveIt();
                          final isVerified = ref(userProfileProvider.notifier)
                              .getVerificationStatus();
                          ref(authProvider.notifier)
                              .setAuthenticated(isVerified: isVerified);
                        },
                      ),
                    ),
                    height12(),
                    ProviderListener(
                      provider: httpRequestStateProvider,
                      onChange: (context, HttpRequestState state) {
                        state.whenOrNull(
                          success: (successMessage, _) {
                            if (successMessage != null) {
                              showSnackBar(context, successMessage);
                            }
                          },
                          error: (errorMessage) =>
                              showSnackBarForError(context, errorMessage),
                        );
                      },
                      child: TextButton(
                        onPressed: () async {
                          await ref(userProfileProvider.notifier)
                              .resendVerificationEmail();
                        },
                        child: const Text(
                          "Send me verification email again",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                            color: AppColors.purple,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
