import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/shared_widgets/continue_button.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PostListingStepThreeScreen extends StatefulWidget {
  const PostListingStepThreeScreen({Key? key}) : super(key: key);

  @override
  State<PostListingStepThreeScreen> createState() =>
      _PostListingStepThreeScreenState();
}

class _PostListingStepThreeScreenState
    extends State<PostListingStepThreeScreen> {
  final _formKey = GlobalKey<FormState>();
  String title = "";
  String description = "";
  final titleTextController = TextEditingController();
  final descriptionTextController = TextEditingController();

  @override
  void initState() {
    titleTextController.text =
        context.read(postListingProvider.notifier).title ?? "";
    descriptionTextController.text =
        context.read(postListingProvider.notifier).description ?? "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          height60(),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  onChanged: (text) {
                    title = text;
                    context.read(postListingProvider.notifier).title = title;
                  },
                  controller: titleTextController,
                  validator: listingTitleFieldValidator,
                  keyboardType: TextInputType.name,
                  decoration: contactUsInputDecoration.copyWith(
                    labelText: AppLocalizations.of(context)!.title,
                    contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                  ),
                  cursorColor: AppColors.purple,
                ),
                height24(),
                TextFormField(
                  minLines: 10,
                  maxLines: 10,
                  onChanged: (text) {
                    description = text;
                    context.read(postListingProvider.notifier).description =
                        text;
                  },
                  controller: descriptionTextController,
                  validator: listingDescriptionFieldValidator,
                  keyboardType: TextInputType.multiline,
                  decoration: contactUsInputDecoration.copyWith(
                    labelText: AppLocalizations.of(context)!.description_label,
                    contentPadding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                  ),
                  cursorColor: AppColors.purple,
                ),
                height4(),
                Text(
                  AppLocalizations.of(context)!.post_listing_hint,
                  style: const TextStyle(fontSize: 8),
                ),
                height48(),
              ],
            ),
          ),
          Consumer(
            builder: (_, ref, __) {
              return ContinueButton(
                formKey: _formKey,
                buttonText: AppLocalizations.of(context)!.create_and_continue,
                onClickAction: () {
                  ref(postListingProvider.notifier).postListing();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
