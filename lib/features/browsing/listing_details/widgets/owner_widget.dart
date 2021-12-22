import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/sized_box.dart';

class OwnerWidget extends ConsumerWidget {
  const OwnerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingOwner = ref.watch(listingDetailsProvider).listingOwner;
    final ownerCity = listingOwner?.city ?? "";
    final ownerCountry = listingOwner?.countryCode == null
        ? ""
        : ",${listingOwner?.countryCode}";
    return ref.watch(httpRequestStateProvider).maybeWhen(
      loading: () => const Center(
        child: SizedBox(
          height: 14,
          width: 14,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: AppColors.purple,
          ),
        ),
      ),
      error: (_) => Container(),
      orElse: () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: listingDetailsBoxDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //region Label
              Text(
                ref.watch(listingDetailsProvider.notifier).getOwnerWidgetLabel(),
                style: AppTextStyles.listingDetailsTitleStyle,
              ),
              //endregion
              height24(),
              Row(
                children: [
                  //region Avatar
                  Expanded(
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: NetworkImage(
                        listingOwner?.avatar ?? "",
                      ),
                    ),
                  ),
                  //endregion
                  width8(),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        height12(),
                        Text(
                          listingOwner?.userName ?? "",
                        ),
                        height12(),
                        Text(ownerCity + ownerCountry),
                        height12(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
