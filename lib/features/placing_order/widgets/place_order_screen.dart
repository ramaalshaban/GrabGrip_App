import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/placing_order/widgets/tab_views/address/address_tab_view.dart';
import 'package:grab_grip/features/placing_order/widgets/tab_views/payment/payment_tab_view.dart';
import 'package:grab_grip/features/placing_order/widgets/tab_views/summary/summary_tab_view.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/shared/widgets/are_you_sure_dialog.dart';
import 'package:grab_grip/shared/widgets/continue_button.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PlaceOrderScreen extends ConsumerWidget {
  const PlaceOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      ref.watch(placeOrderProvider.notifier).getPlaceOrderDetails();
    });
    //region listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider, (_, httpState) {
      httpState.whenOrNull(
        success: (_, succeededAction) {
          if (succeededAction == placeOrderSuccessAction) {
            showSnackBar(
              context,
              "Your order has been placed successfully",
            );
            // go back to place order step 1 after a successful order placing
            ref.watch(placeOrderStepProvider.notifier).reset();
            // pop this screen
            Navigator.pop(context);
            // pop listing details screen
            Navigator.pop(context);
            context.router.push(const MyOrdersScreenRoute());
          }
        },
        error: (errorMessage) => showSnackBarForError(
          context,
          errorMessage,
          const Duration(seconds: 4),
        ),
      );
    });
    //endregion
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        appBarTitle: "",
        showBackButton: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: DefaultTabController(
          length: 3,
          child: Builder(
            builder: (context) {
              final tabController = DefaultTabController.of(context)!;
              return Column(
                children: [
                  //region Tab bar
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 30,
                    child: AbsorbPointer(
                      child: TabBar(
                        unselectedLabelColor: Colors.black,
                        labelColor: AppColors.purple,
                        indicator: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        labelPadding: EdgeInsets.zero,
                        tabs: const [
                          Tab(text: "Address"),
                          Tab(text: "Payment"),
                          Tab(text: "Summary"),
                        ],
                      ),
                    ),
                  ),
                  //endregion
                  height30(),
                  //region Tab views
                  const Expanded(
                    flex: 14,
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        AddressTabView(),
                        PaymentTabView(),
                        SummaryTabView(),
                      ],
                    ),
                  ),
                  //endregion
                  //region Back and Next/Place order buttons
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Consumer(
                        builder: (context, ref, __) {
                          final currentStepIndex =
                              ref.watch(placeOrderStepProvider);
                          WidgetsBinding.instance?.addPostFrameCallback((_) {
                            currentStepIndex.when(
                              step1: (index) => tabController.animateTo(index),
                              step2: (index) => tabController.animateTo(index),
                              step3: (index) => tabController.animateTo(index),
                            );
                          });
                          return WillPopScope(
                            onWillPop: () async {
                              currentStepIndex.when(
                                step1: (_) => Navigator.pop(context),
                                step2: (index) {
                                  ref
                                      .watch(placeOrderStepProvider.notifier)
                                      .back();
                                  tabController.animateTo(index - 1);
                                },
                                step3: (index) {
                                  ref
                                      .watch(placeOrderStepProvider.notifier)
                                      .back();
                                  tabController.animateTo(index - 1);
                                },
                              );
                              return false;
                            },
                            child: ref
                                .watch(httpRequestStateProvider)
                                .maybeWhen(
                                  loading: () => Container(),
                                  innerLoading: (_) => const Center(
                                    child: CircularProgressIndicator(
                                      color: AppColors.purple,
                                    ),
                                  ),
                                  orElse: () => Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ContinueButton(
                                        buttonText: "Back",
                                        isPurple: false,
                                        onClickAction: () {
                                          ref
                                              .watch(
                                                placeOrderStepProvider.notifier,
                                              )
                                              .back();
                                          if (currentStepIndex.index == 0) {
                                            Navigator.pop(context);
                                          }
                                        },
                                      ),
                                      currentStepIndex.maybeWhen(
                                        step3: (_) => ContinueButton(
                                          buttonText: "Place order",
                                          onClickAction: () => showDialog(
                                            context: context,
                                            builder: (_) => AreYouSureDialog(
                                              contentText:
                                                  'By clicking "Place order" I approve the User Terms and confirm I have read the Privacy Notice. I agree to the terms & conditions of this Merchant.',
                                              cancelAction: () {
                                                Navigator.pop(context);
                                              },
                                              continueAction: () {
                                                ref
                                                    .watch(
                                                      placeOrderProvider
                                                          .notifier,
                                                    )
                                                    .placeOrder();
                                                //pop the dialog
                                                Navigator.pop(context);
                                              },
                                              cancelActionText:
                                                  "Wait, I want to read them",
                                              continueActionText: "Place order",
                                            ),
                                          ),
                                        ),
                                        orElse: () => ContinueButton(
                                          buttonText: "Next",
                                          onClickAction: () =>
                                              _validateGoingNext(context, ref),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                          );
                        },
                      ),
                    ),
                  ),
                  //endregion
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _validateGoingNext(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(placeOrderStepProvider);
    currentStep.whenOrNull(
      step1: (_) {
        final isTheSameAddress = ref.watch(
          placeOrderProvider
              .select((state) => state.billingAndShippingAddressIsTheSame),
        );
        if (AddressTabView.billingAddressFormKey.currentState!.validate()) {
          if (isTheSameAddress != 1) {
            // not the same address
            if (AddressTabView.shippingAddressFormKey.currentState!
                .validate()) {
              _goNext(ref);
            }
          } else {
            _goNext(ref);
          }
        }
      },
      step2: (_) {
        final paymentMethodIsSelected =
            ref.watch(placeOrderProvider.notifier).isPaymentMethodSelected();
        paymentMethodIsSelected
            ? _goNext(ref)
            : showWarningSnackBar(
                context,
                "Select a payment method please",
              );
      },
    );
  }

  void _goNext(WidgetRef ref) =>
      ref.watch(placeOrderStepProvider.notifier).next();
}
