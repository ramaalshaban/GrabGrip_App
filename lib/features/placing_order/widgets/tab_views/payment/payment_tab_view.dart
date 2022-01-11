import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/placing_order/widgets/tab_views/payment/payment_method_item.dart';

class PaymentTabView extends ConsumerWidget {
  const PaymentTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paymentMethods =
        ref.watch(placeOrderProvider.notifier).paymentMethods;
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(
            paymentMethods.length,
            (index) => PaymentMethodItem(paymentMethod: paymentMethods[index]),
          )
        ],
      ),
    );
  }
}
