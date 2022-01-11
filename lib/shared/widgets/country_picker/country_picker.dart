import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/shared/widgets/country_picker/country_picker_reason.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';

class CountryPicker extends StatelessWidget {
  const CountryPicker({
    Key? key,
    required this.countryPickingReason,
  }) : super(key: key);

  final CountryPickerReason countryPickingReason;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        return Container(
          height: 50,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 12),
          decoration: fieldDecoration,
          child: CountryCodePicker(
            initialSelection: countryPickingReason.when(
              forPostingOrEditing: () =>
                  ref.watch(postListingProvider.notifier).country?.code,
              forPlacingOrder: (isShippingAddress) => isShippingAddress
                  ? ref.watch(placeOrderProvider.notifier).countryShipping?.code
                  : ref.watch(placeOrderProvider.notifier).country?.code,
            ),
            onChanged: (selectedCountry) {
              countryPickingReason.when(
                forPostingOrEditing: () => ref
                    .watch(postListingProvider.notifier)
                    .country = selectedCountry,
                forPlacingOrder: (isShippingAddress) => isShippingAddress
                    ? ref.watch(placeOrderProvider.notifier).countryShipping =
                        selectedCountry
                    : ref.watch(placeOrderProvider.notifier).country =
                        selectedCountry,
              );
              // prevent the previously focused text field from receiving the focus again after closing the picker
              FocusScope.of(context).requestFocus(FocusNode());
            },
            padding: EdgeInsets.zero,
            alignLeft: true,
            dialogSize: Size(screenWidth() - 40, screenWidth() - 40),
            dialogBackgroundColor: AppColors.white,
            showCountryOnly: true,
            showOnlyCountryWhenClosed: true,
            showFlag: false,
            countryFilter: const [
              "AF",
              "AX",
              "AL",
              "DZ",
              "AS",
              "AD",
              "AO",
              "AI",
              "AQ",
              "AG",
              "AR",
              "AM",
              "AW",
              "AC",
              "AU",
              "AT",
              "AZ",
              "BS",
              "BH",
              "BD",
              "BB",
              "BY",
              "BE",
              "BZ",
              "BJ",
              "BM",
              "BT",
              "BO",
              "BA",
              "BW",
              "BR",
              "IO",
              "VG",
              "BN",
              "BG",
              "BF",
              "BI",
              "KH",
              "CM",
              "CA",
              "IC",
              "CV",
              "BQ",
              "KY",
              "CF",
              "EA",
              "TD",
              "CL",
              "CN",
              "CX",
              "CC",
              "CO",
              "KM",
              "CG",
              "CD",
              "CK",
              "CR",
              "CI",
              "HR",
              "CU",
              "CW",
              "CY",
              "CZ",
              "DK",
              "DG",
              "DJ",
              "DM",
              "DO",
              "EC",
              "EG",
              "SV",
              "GQ",
              "ER",
              "EE",
              "ET",
              "EZ",
              "FK",
              "FO",
              "FJ",
              "FI",
              "FR",
              "GF",
              "PF",
              "TF",
              "GA",
              "GM",
              "GE",
              "DE",
              "GH",
              "GI",
              "GR",
              "GL",
              "GD",
              "GP",
              "GU",
              "GT",
              "GG",
              "GN",
              "GW",
              "GY",
              "HT",
              "HN",
              "HK",
              "HU",
              "IS",
              "IN",
              "ID",
              "IR",
              "IQ",
              "IE",
              "IT",
              "JM",
              "JP",
              "JE",
              "JO",
              "KZ",
              "KE",
              "KI",
              "XK",
              "KW",
              "KG",
              "LA",
              "LV",
              "LB",
              "LS",
              "LR",
              "LY",
              "LI",
              "LT",
              "LU",
              "MO",
              "MK",
              "MG",
              "MW",
              "MY",
              "MV",
              "ML",
              "MT",
              "MH",
              "MQ",
              "MR",
              "MU",
              "YT",
              "MX",
              "FM",
              "MD",
              "MC",
              "MN",
              "ME",
              "MS",
              "MA",
              "MZ",
              "MM",
              "NA",
              "NR",
              "NP",
              "NL",
              "NC",
              "NZ",
              "NI",
              "NE",
              "NG",
              "NU",
              "NF",
              "KP",
              "MP",
              "NO",
              "OM",
              "PK",
              "PW",
              "PS",
              "PA",
              "PG",
              "PY",
              "PE",
              "PH",
              "PN",
              "PL",
              "PT",
              "PR",
              "QA",
              "RE",
              "RO",
              "RU",
              "RW",
              "WS",
              "SM",
              "ST",
              "SA",
              "SN",
              "RS",
              "SC",
              "SL",
              "SG",
              "SX",
              "SK",
              "SI",
              "SB",
              "SO",
              "ZA",
              "GS",
              "KR",
              "SS",
              "ES",
              "LK",
              "BL",
              "SH",
              "KN",
              "LC",
              "MF",
              "PM",
              "VC",
              "SD",
              "SR",
              "SJ",
              "SZ",
              "SE",
              "CH",
              "SY",
              "TW",
              "TJ",
              "TZ",
              "TH",
              "TL",
              "TG",
              "TK",
              "TO",
              "TT",
              "TA",
              "TN",
              "TR",
              "TM",
              "TC",
              "TV",
              "UM",
              "VI",
              "UG",
              "UA",
              "AE",
              "GB",
              "UN",
              "US",
              "UY",
              "UZ",
              "VU",
              "VA",
              "VE",
              "VN",
              "WF",
              "EH",
              "YE",
              "ZM",
              "ZW",
            ],
          ),
        );
      },
    );
  }
}
