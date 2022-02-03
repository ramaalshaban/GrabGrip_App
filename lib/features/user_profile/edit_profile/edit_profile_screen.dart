import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/functions.dart';



class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<EditProfileScreen> createState() =>
      _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late String username = "";



  @override
  Widget build(BuildContext context) {
    //region Listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider, (_, nextState) {
      nextState.whenOrNull(
        success: (_, __) {
          showSnackBar(
            context,
            "Your data has been changed successfully",
          );
          Navigator.pop(context);
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
      appBar: const CustomAppBar(appBarTitle: "Edit profile"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,

              ),

            )
          ],
        ),
      ),

    );
  }
}































