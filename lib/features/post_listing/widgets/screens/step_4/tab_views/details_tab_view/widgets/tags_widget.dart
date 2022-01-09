import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/widgets/tag_view.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/sized_box.dart';

class TagsWidget extends StatefulWidget {
  const TagsWidget({Key? key}) : super(key: key);

  @override
  State<TagsWidget> createState() => _TagsWidgetState();
}

class _TagsWidgetState extends State<TagsWidget> {
  String tag = "";
  final tagTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //region Tags wrapper
        Consumer(
          builder: (_, ref, __) {
            final tags =
                ref.watch(postListingProvider.select((state) => state.tags));
            return Wrap(
              spacing: 4,
              children: List.generate(
                tags.length,
                (index) => TagView(
                  tag: tags[index],
                  isEditable: true,
                ),
              ),
            );
          },
        ),
        //endregion
        height4(),
        //region Text field
        Row(
          children: [
            Expanded(
              child: TextFormField(
                onChanged: (text) {
                  tag = text;
                },
                controller: tagTextController,
                keyboardType: TextInputType.text,
                decoration: standardInputDecoration.copyWith(
                  labelText: "Tags",
                  contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                  suffixIcon: Consumer(
                    builder: (_, ref, __) {
                      return IconButton(
                        onPressed: () {
                          if (tagTextController.text.trim().isNotEmpty) {
                            ref
                                .watch(postListingProvider.notifier)
                                .addTag(tagTextController.text.trim());
                            tagTextController.text = "";
                          }
                        },
                        icon: const Icon(
                          Icons.add,
                          color: AppColors.purple,
                          size: 30,
                        ),
                      );
                    },
                  ),
                ),
                cursorColor: AppColors.purple,
              ),
            ),
          ],
        ),
        //endregion
      ],
    );
  }
}
