import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/placing_order/widgets/tab_views/address/address_form.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class AddressTabView extends StatelessWidget {
  const AddressTabView({Key? key}) : super(key: key);
  static final billingAddressFormKey = GlobalKey<FormState>();
  static final shippingAddressFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //region Billing Address form
            Consumer(
              builder: (_, ref, __) {
                return ref.watch(httpRequestStateProvider).maybeWhen(
                      loading: () => Container(
                        alignment: Alignment.center,
                        height: screenHeightWithoutExtras(),
                        child: const CircularProgressIndicator(
                          color: AppColors.purple,
                        ),
                      ),
                      orElse: () => AddressForm(
                        formKey: billingAddressFormKey,
                      ),
                    );
              },
            ),
            //endregion
            height30(),
            //region Address is the same checkbox
            Consumer(
              builder: (_, ref, __) {
                final isTheSameAddress = ref.watch(
                  placeOrderProvider.select(
                    (state) => state.billingAndShippingAddressIsTheSame,
                  ),
                );
                void onClickAction() {
                  isTheSameAddress == 1
                      ? ref
                          .watch(placeOrderProvider.notifier)
                          .billingAndShippingAddressIsTheSame = 0
                      : ref
                          .watch(placeOrderProvider.notifier)
                          .billingAndShippingAddressIsTheSame = 1;
                }

                return InkWell(
                  splashFactory: NoSplash.splashFactory,
                  onTap: () => onClickAction(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        //region Checkbox
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            activeColor: AppColors.purple,
                            value: isTheSameAddress == 1,
                            onChanged: (_) => onClickAction(),
                          ),
                        ),
                        //endregion
                        width8(),
                        //region Label
                        const Expanded(
                          child: Text(
                            "Shipping address is the same as my billing address",
                          ),
                        )
                        //endregion
                      ],
                    ),
                  ),
                );
              },
            ),
            //endregion
            height30(),
            //region Shipping Address form
            Consumer(
              builder: (_, ref, __) {
                final isTheSameAddress = ref.watch(
                  placeOrderProvider.select(
                    (state) => state.billingAndShippingAddressIsTheSame,
                  ),
                );
                return AnimatedOpacity(
                  opacity: isTheSameAddress == 1 ? 0.0 : 1.0,
                  duration: duration300Milli,
                  child: Visibility(
                    visible: isTheSameAddress == 0,
                    child: AddressForm(
                      formKey: shippingAddressFormKey,
                      isShippingAddressForm: true,
                    ),
                  ),
                );
              },
            ),
            height30(),
            //endregion
          ],
        ),
      ),
    );
  }
}
