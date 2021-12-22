import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/shared/widgets/continue_button.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PostListingStepThreeScreen extends ConsumerWidget {
  const PostListingStepThreeScreen();



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formKey = GlobalKey<FormState>();
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
                    ref.watch(postListingProvider.notifier).title = text.trim();
                  },
                  controller: TextEditingController(
                    text: ref.watch(postListingProvider.notifier).title ?? "",
                  ),
                  validator: listingTitleFieldValidator,
                  keyboardType: TextInputType.name,
                  decoration: standardInputDecoration.copyWith(
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
                    ref.watch(postListingProvider.notifier).description =
                        text.trim();
                  },
                  controller: TextEditingController(
                    text: ref.watch(postListingProvider.notifier).description ??
                        "",
                  ),
                  validator: listingDescriptionFieldValidator,
                  keyboardType: TextInputType.multiline,
                  decoration: standardInputDecoration.copyWith(
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
          ContinueButton(
            formKey: _formKey,
            buttonText: AppLocalizations.of(context)!.create_and_continue,
            onClickAction: () {
              ref.watch(postListingProvider.notifier).postListingAsDraft();
            },
          ),
        ],
      ),
    );
  }
}
