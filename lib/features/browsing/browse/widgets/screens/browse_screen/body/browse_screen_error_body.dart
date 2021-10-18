import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class BrowseScreenErrorBody extends ConsumerWidget {
  const BrowseScreenErrorBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.something_went_wrong,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.purple,
            ),
          ),
          height12(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 4,
              shadowColor: AppColors.purple,
              primary: AppColors.white,
            ),
            onPressed: () async {
              BrowseProvider.pagingController.retryLastFailedRequest();
            },
            child: Text(
              AppLocalizations.of(context)!.refresh,
              style: const TextStyle(color: AppColors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
