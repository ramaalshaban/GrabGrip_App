import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PagedListErrorWidget extends StatelessWidget {
  const PagedListErrorWidget({Key? key, required this.pagingController})
      : super(key: key);

  final PagingController pagingController;

  @override
  Widget build(BuildContext context) {
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
              pagingController.retryLastFailedRequest();
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
