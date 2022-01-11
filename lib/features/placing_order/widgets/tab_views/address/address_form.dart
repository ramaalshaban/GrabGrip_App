import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/shared/widgets/country_picker/country_picker.dart';
import 'package:grab_grip/shared/widgets/country_picker/country_picker_reason.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/sized_box.dart';

class AddressForm extends StatelessWidget {
  const AddressForm({
    Key? key,
    this.isShippingAddressForm = false,
  }) : super(key: key);

  final bool isShippingAddressForm;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //region Label
            Text(isShippingAddressForm ? "Shipping Address" : "Address"),
            //endregion
            height18(),
            //region Full Name text field
            TextFormField(
              initialValue: isShippingAddressForm
                  ? ref
                      .watch(placeOrderProvider.notifier)
                      .shippingAddress
                      ?.fullName
                  : ref
                      .watch(placeOrderProvider.notifier)
                      .billingAddress
                      ?.fullName,
              onChanged: (text) {
                isShippingAddressForm
                    ? ref
                        .watch(placeOrderProvider.notifier)
                        .shippingAddress
                        ?.copyWith(fullName: text.trim())
                    : ref
                        .watch(placeOrderProvider.notifier)
                        .billingAddress
                        ?.copyWith(fullName: text.trim());
              },
              validator: mustNotBeEmptyFieldValidator,
              keyboardType: TextInputType.name,
              decoration: standardInputDecoration.copyWith(
                labelText: "Full Name",
                contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
              ),
              cursorColor: AppColors.purple,
            ),
            //endregion
            height20(),
            //region Address text field
            TextFormField(
              initialValue: isShippingAddressForm
                  ? ref
                      .watch(placeOrderProvider.notifier)
                      .shippingAddress
                      ?.address
                  : ref
                      .watch(placeOrderProvider.notifier)
                      .billingAddress
                      ?.address,
              onChanged: (text) {
                isShippingAddressForm
                    ? ref
                        .watch(placeOrderProvider.notifier)
                        .shippingAddress
                        ?.copyWith(address: text.trim())
                    : ref
                        .watch(placeOrderProvider.notifier)
                        .billingAddress
                        ?.copyWith(address: text.trim());
              },
              validator: mustNotBeEmptyFieldValidator,
              keyboardType: TextInputType.streetAddress,
              decoration: standardInputDecoration.copyWith(
                labelText: "Address",
                contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
              ),
              cursorColor: AppColors.purple,
            ),
            //endregion
            height20(),
            //region City text field
            TextFormField(
              initialValue: isShippingAddressForm
                  ? ref.watch(placeOrderProvider.notifier).shippingAddress?.city
                  : ref.watch(placeOrderProvider.notifier).billingAddress?.city,
              onChanged: (text) {
                isShippingAddressForm
                    ? ref
                        .watch(placeOrderProvider.notifier)
                        .shippingAddress
                        ?.copyWith(city: text.trim())
                    : ref
                        .watch(placeOrderProvider.notifier)
                        .billingAddress
                        ?.copyWith(city: text.trim());
              },
              validator: mustNotBeEmptyFieldValidator,
              keyboardType: TextInputType.name,
              decoration: standardInputDecoration.copyWith(
                labelText: "City",
                contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
              ),
              cursorColor: AppColors.purple,
            ),
            //endregion
            height20(),
            //region State text field
            TextFormField(
              initialValue: isShippingAddressForm
                  ? ref
                      .watch(placeOrderProvider.notifier)
                      .shippingAddress
                      ?.state
                  : ref
                      .watch(placeOrderProvider.notifier)
                      .billingAddress
                      ?.state,
              onChanged: (text) {
                isShippingAddressForm
                    ? ref
                        .watch(placeOrderProvider.notifier)
                        .shippingAddress
                        ?.copyWith(state: text.trim())
                    : ref
                        .watch(placeOrderProvider.notifier)
                        .billingAddress
                        ?.copyWith(state: text.trim());
              },
              validator: mustNotBeEmptyFieldValidator,
              keyboardType: TextInputType.name,
              decoration: standardInputDecoration.copyWith(
                labelText: "State",
                contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
              ),
              cursorColor: AppColors.purple,
            ),
            //endregion
            height20(),
            //region ZIP/Post code text field
            TextFormField(
              initialValue: isShippingAddressForm
                  ? ref
                      .watch(placeOrderProvider.notifier)
                      .shippingAddress
                      ?.postCode
                  : ref
                      .watch(placeOrderProvider.notifier)
                      .billingAddress
                      ?.postCode,
              onChanged: (text) {
                isShippingAddressForm
                    ? ref
                        .watch(placeOrderProvider.notifier)
                        .shippingAddress
                        ?.copyWith(postCode: text.trim())
                    : ref
                        .watch(placeOrderProvider.notifier)
                        .billingAddress
                        ?.copyWith(postCode: text.trim());
              },
              validator: mustNotBeEmptyFieldValidator,
              keyboardType: TextInputType.text,
              decoration: standardInputDecoration.copyWith(
                labelText: "ZIP/Post code",
                contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
              ),
              cursorColor: AppColors.purple,
            ),
            //endregion
            height20(),
            CountryPicker(
              countryPickingReason: CountryPickerReason.forPlacingOrder(
                isShippingAddress: isShippingAddressForm,
              ),
            ),
          ],
        );
      },
    );
  }
}
