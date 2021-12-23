import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/post_listing_step_four_screen.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/widgets/country_picker.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/widgets/date_picker.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/widgets/tags_widget.dart';
import 'package:grab_grip/shared/widgets/location_picker/location_picker.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class DetailsTabView extends ConsumerStatefulWidget    {
  const DetailsTabView({Key? key}) : super(key: key);

  @override
  ConsumerState<DetailsTabView> createState() => _DetailsTabViewState();
}

class _DetailsTabViewState extends ConsumerState<DetailsTabView> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
     super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Form(
        key: PostListingStepFourScreen.detailsTabFormKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Consumer(
            builder: (_, ref, __) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //region Title text field
                  TextFormField(
                    onChanged: (text) {
                      ref.watch(postListingProvider.notifier).title =
                          text.trim();
                    },
                    controller: TextEditingController(
                        text: ref.watch(postListingProvider.notifier).title),
                    validator: listingTitleFieldValidator,
                    keyboardType: TextInputType.name,
                    decoration: standardInputDecoration.copyWith(
                      labelText: AppLocalizations.of(context)!.title,
                      contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                    ),
                    cursorColor: AppColors.purple,
                  ),
                  //endregion
                  height24(),
                  //region Description text field
                  TextFormField(
                    minLines: 10,
                    maxLines: 10,
                    onChanged: (text) {
                      ref.watch(postListingProvider.notifier).description =
                          text.trim();
                    },
                    controller: TextEditingController(
                      text: ref.watch(postListingProvider.notifier).description,
                    ),
                    validator: listingDescriptionFieldValidator,
                    keyboardType: TextInputType.multiline,
                    decoration: standardInputDecoration.copyWith(
                      labelText:
                          AppLocalizations.of(context)!.description_label,
                      contentPadding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                    ),
                    cursorColor: AppColors.purple,
                  ),
                  //endregion
                  height24(),
                  const TagsWidget(),
                  height24(),
                  DatePicker(),
                  height36(),
                  lightPurpleDividerThickness0_5,
                  height36(),
                  LocationPicker(
                    label: "Location",
                  ),
                  height36(),
                  const CountryPicker(),
                  height24(),
                  //region City text field
                  TextFormField(
                    onChanged: (text) {
                      ref.watch(postListingProvider.notifier).city =
                          text.trim();
                    },
                    keyboardType: TextInputType.text,
                    decoration: standardInputDecoration.copyWith(
                      labelText: "City",
                      contentPadding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                    ),
                    cursorColor: AppColors.purple,
                  ),
                  //endregion
                  height24(),
                  //region Region text field
                  TextFormField(
                    onChanged: (text) {
                      ref.watch(postListingProvider.notifier).region =
                          text.trim();
                    },
                    keyboardType: TextInputType.text,
                    decoration: standardInputDecoration.copyWith(
                      labelText: "Region",
                      contentPadding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                    ),
                    cursorColor: AppColors.purple,
                  ),
                  //endregion
                  height48(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
