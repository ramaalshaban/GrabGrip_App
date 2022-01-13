import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/user_profile/payments/models/payment_method/payment_method.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PaymentMethodItem extends ConsumerWidget {
  const PaymentMethodItem({
    Key? key,
    required this.paymentMethod,
  }) : super(key: key);

  final PaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () {
          ref.watch(placeOrderProvider.notifier).selectedPaymentMethod =
              paymentMethod;
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Row(
            children: [
              //region Radio button
              Radio(
                activeColor: AppColors.purple,
                value: paymentMethod,
                groupValue: ref.watch(
                  placeOrderProvider
                      .select((state) => state.selectedPaymentMethod),
                ),
                onChanged: (PaymentMethod? selectedPaymentMethod) {
                  ref.watch(placeOrderProvider.notifier).selectedPaymentMethod =
                      selectedPaymentMethod;
                },
              ),
              //endregion
              //region Payment name & instructions
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      paymentMethod.displayName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    height8(),
                    Text(paymentMethod.paymentInstructions)
                  ],
                ),
              )
              //endregion
            ],
          ),
        ),
      ),
    );
  }
}
