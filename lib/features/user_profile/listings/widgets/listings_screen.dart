import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/user_profile/listings/providers/listings_provider.dart';
import 'package:grab_grip/features/user_profile/listings/widgets/listing_item.dart';
import 'package:grab_grip/features/user_profile/listings/widgets/listing_item_skeleton_loader.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/shared/widgets/paged_list_error_widget.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ListingsScreen extends StatefulWidget {
  const ListingsScreen({Key? key}) : super(key: key);

  @override
  State<ListingsScreen> createState() => _ListingsScreenState();
}

class _ListingsScreenState extends State<ListingsScreen> {
  @override
  void initState() {
    ListingsProvider.pagingController.addPageRequestListener((pageKey) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        if (mounted) {
          context.read(listingsProvider.notifier).getListings(pageKey);
        }
      });
    });

    ListingsProvider.pagingController.addStatusListener((status) {
      if (ListingsProvider.pagingController.error == noInternetConnection) {
        if (mounted) {
          showSnackBarForError(
            context,
            ListingsProvider.pagingController.error.toString(),
          );
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // refresh the list when user opens up this screen
      ListingsProvider.pagingController.refresh();
    });
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        appBarTitle: "My Listings",
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(4, 20, 4, 10),
        child: RefreshIndicator(
          onRefresh: () async {
            ListingsProvider.pagingController.refresh();
          },
          child: PagedListView<int, Gear>(
            pagingController: ListingsProvider.pagingController,
            builderDelegate: PagedChildBuilderDelegate<Gear>(
              itemBuilder: (context, item, index) => ListingItem(gear: item),
              firstPageErrorIndicatorBuilder: (context) => PagedListErrorWidget(
                pagingController: ListingsProvider.pagingController,
              ),
              firstPageProgressIndicatorBuilder: (context) =>
                  const ListingItemSkeletonLoader(),
              newPageProgressIndicatorBuilder: (context) =>
                  const ListingItemSkeletonLoader(),
              noItemsFoundIndicatorBuilder: (context) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "You have not posted any listing yet.",
                  ),
                  height12(),
                  TextButton(
                    onPressed: () {
                      context.router.replace(const PostListingScreenRoute());
                    },
                    child: const Text(
                      "Post Now",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
              newPageErrorIndicatorBuilder: (context) => PagedListErrorWidget(
                pagingController: ListingsProvider.pagingController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
