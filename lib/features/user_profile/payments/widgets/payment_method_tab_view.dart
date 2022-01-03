import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';

class PaymentMethodTabView extends ConsumerWidget {
  const PaymentMethodTabView({Key? key, required this.paymentMethodId})
      : super(key: key);
  final int paymentMethodId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //region Listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider,
        (_, httpRequestState) {
      httpRequestState.whenOrNull(
        success: (successMessage, _) => showSnackBar(context, successMessage!),
        error: (errorMessage) => showSnackBarForError(context, errorMessage),
      );
    });
    //endregion
    final paymentMethod = ref
        .watch(paymentMethodsProvider.notifier)
        .getPaymentMethodById(paymentMethodId);
    return Column(
      children: [
        Text(paymentMethod.description),
        Expanded(
          child: AnimatedSwitcher(
            duration: duration300Milli,
            child: ref.watch(httpRequestStateProvider).maybeWhen(
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.purple,
                    ),
                  ),
                  orElse: () => paymentMethod.identifier != null
                      //region Payment method is enabled widget
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "${paymentMethod.displayName} is enabled",
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            //region Unlink button
                            TextButton(
                              onPressed: () => ref
                                  .watch(paymentMethodsProvider.notifier)
                                  .unlinkPaymentMethod(
                                    id: paymentMethod.id.toString(),
                                  ),
                              child: const Text(
                                "unlink",
                                style: TextStyle(
                                  color: AppColors.purple,
                                ),
                              ),
                            ),
                            //endregion
                          ],
                        )
                      //endregion
                      //region Payment method not enabled widget
                      : Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          constraints:
                              BoxConstraints(minWidth: screenWidth()) / 3,
                          decoration: BoxDecoration(
                            color: AppColors.purple,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              width: 1.5,
                              color: AppColors.purple,
                            ),
                          ),
                          height: 48.0,
                          child: ref.watch(httpRequestStateProvider).maybeWhen(
                                loading: () => const Center(
                                  child: CircularProgressIndicator(
                                    color: AppColors.purple,
                                  ),
                                ),
                                //region Enable button
                                orElse: () => TextButton(
                                  onPressed: () => ref
                                      .watch(paymentMethodsProvider.notifier)
                                      .linkPaymentMethod(
                                        key: paymentMethod.key,
                                      ),
                                  child: Text(
                                    "Enable ${paymentMethod.displayName}",
                                    style: const TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                                //endregion
                              ),
                        ),
                  //endregion
                ),
          ),
        ),
      ],
    );
  }
}
