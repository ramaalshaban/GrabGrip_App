import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';

class EditingButton extends ConsumerWidget {
  const EditingButton({
    Key? key,
    required this.formKey,
  required this.onClickAction,
    required this.buttonText,
    this.isPurple = true,


  }) : super(key: key);
  final GlobalKey<FormState>? formKey;
  final VoidCallback onClickAction;
  final String buttonText;
  final bool isPurple;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(httpRequestStateProvider).maybeWhen(
      loading: () => const Center(
        child: CircularProgressIndicator(
          color: AppColors.purple,
        ),
      ),
      orElse: () => Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        constraints: BoxConstraints(minWidth: screenWidth() / 3),
        decoration: BoxDecoration(
          color: isPurple ? AppColors.purple : AppColors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            width: 1.5,
            color: AppColors.purple,
          ),
        ),
        height: 48.0,
        child: TextButton(
          onPressed: () async {
            if (formKey != null) {
              if (formKey!.currentState!.validate()) {
                onClickAction.call();
              }
            } else {
              onClickAction.call();
            }
          },
          child: Text(
            buttonText,
            style: TextStyle(
              color: isPurple ? AppColors.white : AppColors.purple,
            ),
          ),
        ),
      ),
    );
  }
}



// onPressed: () async {
// if (formKey != null) {
// if (formKey!.currentState!.validate()) {
// onClickAction.call();
// }
// } else {
// onClickAction.call();
// }
// },



































//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//
//     late String userName = "";
//     late String displayName = "";
//     late String bio = "";
//
//     //region Listeners
//     ref.listen<HttpRequestState>(httpRequestStateProvider,
//             (_, httpRequestState) {
//           httpRequestState.whenOrNull(
//             success: (_, __) {
//               showSnackBar(
//                 context,
//                 AppLocalizations.of(context)!.you_registered_successfully,
//               );
//               context.router.pop();
//             },
//             error: (errorMessage) => showSnackBarForError(context, errorMessage),
//           );
//         });
//
//     //endregion
//     final httpRequestState = ref.watch(httpRequestStateProvider);
//     return httpRequestState.maybeWhen(
//       loading: () {
//         return const Center(
//           child: CircularProgressIndicator(),
//         );
//       },
//       orElse: () {
//         return TextButton(
//           onPressed: () async {
//
//             ref.watch(authProvider.notifier).editProfile(
//                 EditProfileRequest(
//                     displayName,
//                     userName,
//                     bio
//                 ),
//             );
//           },
//           child: Text(
//             AppLocalizations.of(context)!.join,
//             style: const TextStyle(
//               color: AppColors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
