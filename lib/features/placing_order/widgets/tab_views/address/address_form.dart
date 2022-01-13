import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/shared/widgets/country_picker/country_picker.dart';
import 'package:grab_grip/shared/widgets/country_picker/country_picker_reason.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/sized_box.dart';

class AddressForm extends ConsumerWidget {
  const AddressForm({
    Key? key,
    required this.formKey,
    this.isShippingAddressForm = false,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final bool isShippingAddressForm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //region Label
          Text(isShippingAddressForm ? "Shipping Address" : "Billing Address"),
          //endregion
          height18(),
          //region Full Name text field
          TextFormField(
            initialValue: isShippingAddressForm
                ? ref
                    .watch(placeOrderProvider.notifier)
                    .shippingAddress
                    .fullName
                : ref
                    .watch(placeOrderProvider.notifier)
                    .billingAddress
                    .fullName,
            onChanged: (text) {
              ref.watch(placeOrderProvider.notifier).setFullName(
                    fullName: text,
                    isShippingForm: isShippingAddressForm,
                  );
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
                ? ref.watch(placeOrderProvider.notifier).shippingAddress.address
                : ref.watch(placeOrderProvider.notifier).billingAddress.address,
            onChanged: (text) {
              ref.watch(placeOrderProvider.notifier).setAddress(
                    address: text,
                    isShippingForm: isShippingAddressForm,
                  );
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
                ? ref.watch(placeOrderProvider.notifier).shippingAddress.city
                : ref.watch(placeOrderProvider.notifier).billingAddress.city,
            onChanged: (text) {
              ref.watch(placeOrderProvider.notifier).setCity(
                    city: text,
                    isShippingForm: isShippingAddressForm,
                  );
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
                ? ref.watch(placeOrderProvider.notifier).shippingAddress.state
                : ref.watch(placeOrderProvider.notifier).billingAddress.state,
            onChanged: (text) {
              ref.watch(placeOrderProvider.notifier).setState(
                    stateName: text,
                    isShippingForm: isShippingAddressForm,
                  );
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
                    .postCode
                : ref
                    .watch(placeOrderProvider.notifier)
                    .billingAddress
                    .postCode,
            onChanged: (text) {
              ref.watch(placeOrderProvider.notifier).setPostCode(
                    postCode: text,
                    isShippingForm: isShippingAddressForm,
                  );
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
      ),
    );
  }
}
