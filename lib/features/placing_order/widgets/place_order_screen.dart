import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/placing_order/widgets/tab_views/address/address_tab_view.dart';
import 'package:grab_grip/features/placing_order/widgets/tab_views/payment/payment_tab_view.dart';
import 'package:grab_grip/features/placing_order/widgets/tab_views/summary/summary_tab_view.dart';
import 'package:grab_grip/shared/widgets/continue_button.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PlaceOrderScreen extends StatelessWidget {
  const PlaceOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                                          onClickAction: () {},
                                          buttonText: "Place order",
                                        ),
                                        orElse: () => ContinueButton(
                                          buttonText: "Next",
                                          onClickAction: () {
                                            ref
                                                .watch(
                                                  placeOrderStepProvider
                                                      .notifier,
                                                )
                                                .next();
                                          },
                                        ),
                                      ),
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
}
