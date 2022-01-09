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
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class DetailsTabView extends ConsumerStatefulWidget {
  const DetailsTabView({Key? key}) : super(key: key);

  @override
  ConsumerState<DetailsTabView> createState() => _DetailsTabViewState();
}

class _DetailsTabViewState extends ConsumerState<DetailsTabView>
    with AutomaticKeepAliveClientMixin {
  final descriptionController = HtmlEditorController();

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
            builder: (context, ref, __) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //region Title text field
                  TextFormField(
                    initialValue: ref.watch(postListingProvider.notifier).title,
                    onChanged: (text) {
                      ref.watch(postListingProvider.notifier).title =
                          text.trim();
                    },
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
                  //region Description Html editor
                  Text(
                    AppLocalizations.of(context)!.description_label,
                    style: const TextStyle(
                      color: AppColors.purple,
                    ),
                  ),
                  height4(),

                  /// IMPORTANT NOTE: the html editor is preventing the location picker (which is in the same screen) from
                  /// animating the map when the user picks a location. Try removing the html editor from this screen and the animation
                  /// will get back. This problem can be solved later insha'Allah.
                  HtmlEditor(
                    controller: descriptionController,
                    htmlEditorOptions: HtmlEditorOptions(
                      adjustHeightForKeyboard: false,
                      initialText:
                          ref.watch(postListingProvider.notifier).description,
                    ),
                    callbacks: Callbacks(
                      onChangeContent: (String? content) {
                        ref.watch(postListingProvider.notifier).description =
                            content?.trim();
                      },
                      onFocus: () {
                        // let the previously focused text field lose the focus so when the user closes the colors pickers, the focus stays in the html editor
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                    ),
                    otherOptions: OtherOptions(
                      height: screenHeightWithoutExtras() / 2.2,
                      decoration: fieldDecoration,
                    ),
                    htmlToolbarOptions: const HtmlToolbarOptions(
                      toolbarType: ToolbarType.nativeGrid,
                      buttonSelectedColor: AppColors.purple,
                      buttonHighlightColor: AppColors.veryLightPurple,
                      gridViewVerticalSpacing: 0,
                      defaultToolbarButtons: [
                        FontSettingButtons(
                          fontSizeUnit: false,
                          fontName: false,
                        ),
                        FontButtons(
                          subscript: false,
                          superscript: false,
                        ),
                        ColorButtons(),
                        ParagraphButtons(
                          decreaseIndent: false,
                          increaseIndent: false,
                          caseConverter: false,
                          lineHeight: false,
                        ),
                      ],
                    ),
                  ),
                  //endregion
                  height24(),
                  const TagsWidget(),
                  height24(),
                  const DatePicker(),
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
                    initialValue: ref.watch(postListingProvider.notifier).city,
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
                    initialValue:
                        ref.watch(postListingProvider.notifier).region,
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
