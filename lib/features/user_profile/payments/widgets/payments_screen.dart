import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/user_profile/payments/widgets/payment_method_tab_view.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PaymentsScreen extends ConsumerWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(paymentMethodsProvider.notifier).getPaymentMethods();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        appBarTitle: "Payment Methods",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 42.0),
        child: Consumer(
          builder: (_, ref, __) {
            final paymentMethods = ref.watch(paymentMethodsProvider);
            return DefaultTabController(
              length: paymentMethods.length,
              child: paymentMethods.isNotEmpty
                  ? Column(
                      children: [
                        height48(),
                        //region Tab bar
                        Container(
                          height: 30,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: TabBar(
                            isScrollable: true,
                            unselectedLabelColor: Colors.black,
                            labelColor: AppColors.purple,
                            indicator: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            labelStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                            labelPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            tabs: List.generate(
                              paymentMethods.length,
                              (index) => Text(
                                paymentMethods[index].displayName,
                              ),
                            ),
                          ),
                        ),
                        //endregion
                        height24(),
                        //region Tab views
                        Expanded(
                          flex: 14,
                          child: TabBarView(
                            children: List.generate(
                              paymentMethods.length,
                              (index) => PaymentMethodTabView(
                                paymentMethodId: paymentMethods[index].id,
                              ),
                            ),
                          ),
                        ),
                        //endregion
                      ],
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
            );
          },
        ),
      ),
    );
  }
}
