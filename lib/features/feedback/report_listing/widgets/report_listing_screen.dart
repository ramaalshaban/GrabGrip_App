import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/feedback/shared/providers/feedback_provider.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/shared/widgets/continue_button.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ReportListingScreen extends ConsumerStatefulWidget {
  const ReportListingScreen({
    Key? key,
    required this.listingToReport,
  }) : super(key: key);

  final Gear listingToReport;

  @override
  ConsumerState<ReportListingScreen> createState() =>
      _ReportListingScreenState();
}

class _ReportListingScreenState extends ConsumerState<ReportListingScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    /// NOTE: currently, the reasons are just in a static array (with translations).
    /// There is getReasons() method (that can be used later) in the FeedbackProvider to fetch them by calling the api.
    final reasons = FeedbackProvider.reasons(context);

    //region Listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider, (_, nextState) {
      nextState.whenOrNull(
        success: (successMessage, successAction) {
          if (successAction == reportListingAction) {
            showSnackBar(
              context,
              successMessage!,
            );
            Navigator.pop(context);
          }
        },
        error: (errorMessage) => showSnackBarForError(
          context,
          errorMessage,
        ),
      );
    });
    //endregion
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(appBarTitle: "File a request"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //region Reported listing title
            Text(
              "Listing: ${widget.listingToReport.title}",
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            //endregion
            height48(),
            //region Reasons drop down list
            //region Label
            const Text("Reason for report"),
            height12(),
            //endregion
            Consumer(
              builder: (context, ref, __) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: standardBoxDecoration,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: ref.watch(
                            feedbackProvider.select((state) => state.reason),
                          ) ??
                          reasons[0],
                      elevation: 16,
                      style: const TextStyle(color: AppColors.purple),
                      onChanged: (String? newlySelectedReason) {
                        ref.watch(feedbackProvider.notifier).reason =
                            newlySelectedReason ?? reasons[0];
                        // prevent the detailed description text field from receiving the focus again after selecting a reason
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      items: reasons.map<DropdownMenuItem<String>>(
                        (String reason) {
                          return DropdownMenuItem<String>(
                            value: reason,
                            child: Text(reason),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                );
              },
            ),
            //endregion
            height18(),
            Form(
              key: _formKey,
              child:
                  //region Detailed description text field
                  TextFormField(
                minLines: 10,
                maxLines: 10,
                onChanged: (text) =>
                    ref.watch(feedbackProvider.notifier).notes = text,
                validator: descriptionFieldValidator,
                keyboardType: TextInputType.multiline,
                decoration: standardInputDecoration.copyWith(
                  labelText: "Detailed description",
                  contentPadding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                ),
                cursorColor: AppColors.purple,
              ),
              //endregion
            ),
            height36(),
            //region Submit button
            ContinueButton(
              formKey: _formKey,
              buttonText: "Submit",
              onClickAction: () async {
                ref.watch(feedbackProvider.notifier).reportListing(
                      widget.listingToReport.hash,
                    );
              },
            ),
            //endregion
          ],
        ),
      ),
    );
  }
}
