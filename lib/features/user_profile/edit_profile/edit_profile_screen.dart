import 'dart:core';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/widgets/editing_button.dart';
import 'package:grab_grip/features/user_profile/edit_profile/models/edit_profile_request.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({this.onSuccessEditing,
    Key? key,
  }) : super(key: key);

  final VoidCallback? onSuccessEditing;
  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  // late List<User> users ;
  late String userName = "";
  late String displayName = "";
  late String bio = "";

  @override
  Widget build(BuildContext context) {
    final coloredHeaderHeight = screenHeightWithoutSafeAreaPadding() / 5;
    const avatarWidthHeight = 82.0;
    ref.listen<HttpRequestState>(httpRequestStateProvider, (_, nextState) {
      nextState.whenOrNull(
        success: (_, __) {
          showSnackBar(
            context,
            "Your Profile has been Updated seccesfully",
          );
          Navigator.pop(context);
        },
        error: (errorMessage) => showSnackBarForError(context, errorMessage),
      );
    });
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(appBarTitle: "Edit Profile"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: screenWidth(),
                      height : 150,
                    child: Consumer(
                      builder: (_,ref,__) {
                        return Stack(
                          children: [
                            // Container(
                            //   width: screenWidth(),
                            //   height: coloredHeaderHeight,
                            //   color: AppColors.green,
                            // ),
                            Positioned(
                                top: coloredHeaderHeight - (avatarWidthHeight*1.5),
                               left: (screenWidth() /2.8),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: avatarWidthHeight,
                                      height:avatarWidthHeight,
                                      child: CachedNetworkImage(
                                        imageUrl: ref.watch(userProfileProvider).avatar,
                                        placeholder:(context, url) => const Center(
                                          child: SizedBox(
                                            height: 15,
                                            width: 28,
                                            child: CircularProgressIndicator(
                                              color: AppColors.purple,
                                            ),
                                          ),
                                        ),
                                        errorWidget: (context,url,error) => const Icon(
                                          Icons.error,
                                          color: Colors.red,
                                        ),
                                        imageBuilder: (context,imageProvider) =>

                                     Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: AppColors.white,
                                                  width: 4,
                                                ),
                                              image: DecorationImage(
                                                image: imageProvider,
                                                fit: BoxFit.fill,
                                              )
                                            ) ,
                                          ),

                                      ),
                                    ),


                                  ],
                            ))


                          ],
                        );
                      },
                    ),
                    ),
                    Consumer(builder: (_, ref, __) {
                      return TextFormField(

                        cursorColor: AppColors.purple,
                        readOnly: false,
                        initialValue: ref
                                .watch(userProfileProvider.notifier)
                                .getUser()
                                ?.userName ??
                            "You have not provided a name",
                        onChanged: (text) => userName = text,
                      );
                    }),
                    height6(),
                    height6(),
                    height6(),
                    height6(),
                    height6(),
                    TextFormField(
                      cursorColor: AppColors.purple,
                      readOnly: false,
                      initialValue: ref
                              .watch(userProfileProvider.notifier)
                              .getUser()
                              ?.displayName ??
                          "You have not provided a name",
                      onChanged: (text) => displayName = text,

                    ),
                    height6(),
                    height6(),
                    height6(),
                    height6(),
                    height6(),
                    TextFormField(
                      onChanged: (text) => bio = text,
                      cursorColor: AppColors.purple,
                    ), height6(),
                    height6(),
                    height6(),
                    height6(),
                    height6(),

                    Consumer(builder: (_, ref, __) {
                      return Center(
                        child: Column(
                            children: [
                              EditingButton(
                                formKey: _formKey,
                        buttonText: "Save Changes",
                        onClickAction: ()
                                {
                                  ref.watch(authProvider.notifier).editProfile(EditProfileRequest(displayName, userName, bio));
                                },


                        // buttonText: "Save Changes",
                        // onClickAction: () {
                        //   ref.watch(authProvider.notifier).editProfile(
                        //     EditProfileRequest(
                        //         displayName,
                        //         userName,
                        //         bio
                        //     ),
                        //   );
                        // },
                      ),
                    ],
                        ),
                      );
                    }),
                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}

// class EditProfileScreen extends StatefulWidget {
//   const EditProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   _EditProfileScreenState createState() => _EditProfileScreenState();
// }
//
// class _EditProfileScreenState extends State<EditProfileScreen> {
//   final _formKey = GlobalKey<FormState>();
//   late String Updatedname = "";
//   late String UpdatedUsername = "";
//   late String bio = "";
//   @override
//   Widget build(BuildContext context) {
//     final coloredHeaderHeight = screenHeightWithoutSafeAreaPadding() / 5;
//     const avatarWidthHeight = 82.0;
//
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       appBar: const CustomAppBar(appBarTitle: "Edit profile"),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//           Column(
//             children: [
//               Consumer(
//                 builder: (_, ref, __) {
//                   return Stack(
//                     children: [
//                       Container(
//                         width: screenWidth(),
//                         height: coloredHeaderHeight,
//                         color: AppColors.white,
//                       ),
//                       Center(
//                         child: Positioned(
//                           top: coloredHeaderHeight - (avatarWidthHeight * 1.5),
//                           left: (screenWidth() / 2) - (avatarWidthHeight / 2),
//                           child: Column(
//                             children: [
//                               //region User profile image
//                               SizedBox(
//                                 width: avatarWidthHeight,
//                                 height: avatarWidthHeight,
//                                 child: CachedNetworkImage(
//                                   imageUrl: ref.watch(userProfileProvider).avatar,
//                                   placeholder: (context, url) => const Center(
//                                     child: SizedBox(
//                                       height: 28,
//                                       width: 28,
//                                       child: CircularProgressIndicator(
//                                         color: AppColors.purple,
//                                       ),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       const Icon(
//                                     Icons.error,
//                                     color: Colors.red,
//                                   ),
//                                   imageBuilder: (context, imageProvider) =>
//                                       Container(
//                                     decoration: BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         border: Border.all(
//                                           color: AppColors.white,
//                                           width: 1,
//                                         ),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             spreadRadius: 7,
//                                             blurRadius: 10,
//                                             color: Colors.black.withOpacity(0.1),
//                                             offset: Offset(0, 1),
//                                           )
//                                         ]),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//
//                               //endregion
//                               height6(),
//                               //region User name and email
//                               Text(
//                                 ref.watch(userProfileProvider).displayName,
//                                 style: const TextStyle(
//                                   color: AppColors.purple,
//                                   fontSize: 17,
//                                 ),
//                               ),
//                               // height2(),
//                               // Text(
//                               //   ref.watch(userProfileProvider).email ?? "",
//                               //   style: const TextStyle(
//                               //     color: AppColors.purple,
//                               //     fontSize: 10,
//                               //   ),
//                               // ),
//                               //endregion
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//               Consumer(builder: (_, ref, __) {
//                 return TextField(
//                   onChanged: (text) => setState(() {
//                     Updatedname = text;
//                   }),
//                   decoration: InputDecoration(
//                       contentPadding: EdgeInsets.only(bottom: 3),
//                       labelText: "Display Name",
//                       floatingLabelBehavior: FloatingLabelBehavior.always,
//                       hintText: "",
//                       hintStyle: TextStyle(
//                         fontSize: 10,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       )),
//                 );
//               }),
//               height6(),
//               height6(),
//               TextField(
//                   onChanged: (text) => setState(() {
//                     UpdatedUsername = text;
//                   }),
//                   decoration: InputDecoration(
//                       contentPadding: EdgeInsets.only(bottom: 3),
//                       labelText: "Username",
//                       floatingLabelBehavior: FloatingLabelBehavior.always,
//                       hintText: "",
//                       hintStyle: TextStyle(
//                         fontSize: 10,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       )),
//                 ),
//               height6(),
//               height6(),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
//               child: TextField(
//                     onChanged: (text) => setState(() {
//                       bio = text;
//                     }),
//                     decoration: InputDecoration(
//                         contentPadding: EdgeInsets.only(bottom: 2, left: 5),
//                         labelText: "Bio",
//                         floatingLabelBehavior: FloatingLabelBehavior.always,
//                         border: OutlineInputBorder(),
//                         hintText: "",
//                         hintStyle: TextStyle(
//                           fontSize: 10,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         )),
//                   ),
//             ),
//               height6(),
//               height6(),
//               Consumer(builder: (_, ref, __) {
//                 return Center(
//                   child: Column(
//                     children: [
//                       ContinueButton(
//                         buttonText: "Save Changes",
//                         onClickAction: () {
//                           ref.watch(authProvider.notifier).editProfile(
//                             EditProfileRequest(
//                                 Updatedname,
//                                 UpdatedUsername,
//                                 bio
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 );
//               }),
//             ],
//           ),
//         ]),
//       ),
//     );
//     ;
//   }
// }
//
