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
                  ? ref.watch(placeOrderProvider.notifier).fullNameShipping
                  : ref.watch(placeOrderProvider.notifier).fullName,
              onChanged: (text) {
                isShippingAddressForm
                    ? ref.watch(placeOrderProvider.notifier).fullNameShipping =
                        text.trim()
                    : ref.watch(placeOrderProvider.notifier).fullName =
                        text.trim();
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
                  ? ref.watch(placeOrderProvider.notifier).addressShipping
                  : ref.watch(placeOrderProvider.notifier).address,
              onChanged: (text) {
                isShippingAddressForm
                    ? ref.watch(placeOrderProvider.notifier).addressShipping =
                        text.trim()
                    : ref.watch(placeOrderProvider.notifier).address =
                        text.trim();
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
                  ? ref.watch(placeOrderProvider.notifier).cityShipping
                  : ref.watch(placeOrderProvider.notifier).city,
              onChanged: (text) {
                isShippingAddressForm
                    ? ref.watch(placeOrderProvider.notifier).cityShipping =
                        text.trim()
                    : ref.watch(placeOrderProvider.notifier).city = text.trim();
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
                  ? ref.watch(placeOrderProvider.notifier).stateNameShipping
                  : ref.watch(placeOrderProvider.notifier).stateName,
              onChanged: (text) {
                isShippingAddressForm
                    ? ref.watch(placeOrderProvider.notifier).stateNameShipping =
                        text.trim()
                    : ref.watch(placeOrderProvider.notifier).stateName =
                        text.trim();
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
                  ? ref.watch(placeOrderProvider.notifier).postCodeShipping
                  : ref.watch(placeOrderProvider.notifier).postCode,
              onChanged: (text) {
                isShippingAddressForm
                    ? ref.watch(placeOrderProvider.notifier).postCodeShipping =
                        text.trim()
                    : ref.watch(placeOrderProvider.notifier).postCode =
                        text.trim();
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
