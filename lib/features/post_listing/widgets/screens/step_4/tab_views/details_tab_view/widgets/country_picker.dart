import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';

class CountryPicker extends StatelessWidget {
  const CountryPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        return CountryCodePicker(
          builder: (_) {
            return Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 12),
              decoration: fieldDecoration,
              child: ref.watch(postListingProvider).country == null
                  ? const Text(
                      "Country",
                      style: TextStyle(
                        color: AppColors.lightPurple,
                      ),
                    )
                  : Text(
                      ref.watch(postListingProvider.notifier).country!.name!,
                      style: const TextStyle(
                        color: AppColors.purple,
                      ),
                    ),
            );
          },
          hideMainText: true,
          onChanged: (selectedCountry) {
            ref.watch(postListingProvider.notifier).country = selectedCountry;
            // prevent the previously focused text field from receiving the focus again after closing the picker
            FocusScope.of(context).requestFocus(FocusNode());
          },
          alignLeft: true,
          dialogSize: Size(screenWidth() - 40, screenWidth() - 40),
          dialogBackgroundColor: AppColors.white,
          showCountryOnly: true,
          showOnlyCountryWhenClosed: true,
          showFlag: false,
          countryFilter: const [
            'Tr',
            'Sa',
            'Sy',
            'Lb',
            'Jo',
            'Ps',
            'Kw',
            'Qa',
            'Ae',
            'Eg',
            'Om',
            'ye',
            'bh',
            'ma',
            'Dz',
            'Tn',
            'Ly',
            'De'
          ],
        );
      },
    );
  }
}
