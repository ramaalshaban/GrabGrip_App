import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/user_profile/my_orders/providers/my_orders_provider.dart';
import 'package:grab_grip/features/user_profile/my_orders/widgets/my_order_item.dart';
import 'package:grab_grip/features/user_profile/my_orders/widgets/my_order_item_skeleton_loader.dart';
import 'package:grab_grip/shared/models/order/order.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/shared/widgets/paged_list_error_widget.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  void initState() {
    MyOrdersProvider.pagingController.addPageRequestListener((pageKey) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        if (mounted) {
          context.read(myOrdersProvider.notifier).getMyOrders(pageKey);
        }
      });
    });

    MyOrdersProvider.pagingController.addStatusListener((status) {
      if (MyOrdersProvider.pagingController.error == noInternetConnection) {
        if (mounted) {
          showSnackBarForError(
            context,
            MyOrdersProvider.pagingController.error.toString(),
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
      MyOrdersProvider.pagingController.refresh();
    });
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        appBarTitle: "My Orders",
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(4, 20, 4, 10),
        child: RefreshIndicator(
          onRefresh: () async {
            MyOrdersProvider.pagingController.refresh();
          },
          child: PagedListView<int, Order>(
            pagingController: MyOrdersProvider.pagingController,
            builderDelegate: PagedChildBuilderDelegate<Order>(
              itemBuilder: (context, item, index) => MyOrderItem(order: item),
              firstPageErrorIndicatorBuilder: (context) => PagedListErrorWidget(
                pagingController: MyOrdersProvider.pagingController,
              ),
              firstPageProgressIndicatorBuilder: (context) =>
                  const MyOrderItemSkeletonLoader(),
              newPageProgressIndicatorBuilder: (context) =>
                  const MyOrderItemSkeletonLoader(),
              noItemsFoundIndicatorBuilder: (context) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "You have not placed any order yet.",
                  ),
                  height24(),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        shadowColor: AppColors.purple,
                        primary: AppColors.white,
                      ),
                      onPressed: () {
                        context.router.replace(const BrowseScreenRoute());
                      },
                      child: const Text(
                        "Browse Gears Now",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.purple,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              newPageErrorIndicatorBuilder: (context) => PagedListErrorWidget(
                pagingController: MyOrdersProvider.pagingController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
