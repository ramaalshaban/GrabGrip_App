import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/user_profile/incoming_orders/providers/incoming_orders_provider.dart';
import 'package:grab_grip/features/user_profile/incoming_orders/widgets/order_item.dart';
import 'package:grab_grip/features/user_profile/incoming_orders/widgets/order_item_skeleton_loader.dart';
import 'package:grab_grip/shared/models/order/order.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/shared/widgets/paged_list_error_widget.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class IncomingOrdersScreen extends StatefulWidget {
  const IncomingOrdersScreen({Key? key}) : super(key: key);

  @override
  State<IncomingOrdersScreen> createState() => _IncomingOrdersScreenState();
}

class _IncomingOrdersScreenState extends State<IncomingOrdersScreen> {
  @override
  void initState() {
    IncomingOrdersProvider.pagingController.addPageRequestListener((pageKey) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        if (mounted) {
          context
              .read(incomingOrdersProvider.notifier)
              .getIncomingOrders(pageKey);
        }
      });
    });

    IncomingOrdersProvider.pagingController.addStatusListener((status) {
      if (IncomingOrdersProvider.pagingController.error ==
          noInternetConnection) {
        if (mounted) {
          showSnackBarForError(
            context,
            IncomingOrdersProvider.pagingController.error.toString(),
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
      IncomingOrdersProvider.pagingController.refresh();
    });
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        appBarTitle: "Incoming Orders",
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(4, 20, 4, 10),
        child: RefreshIndicator(
          onRefresh: () async {
            IncomingOrdersProvider.pagingController.refresh();
          },
          child: PagedListView<int, Order>(
            pagingController: IncomingOrdersProvider.pagingController,
            builderDelegate: PagedChildBuilderDelegate<Order>(
              itemBuilder: (context, item, index) => OrderItem(order: item),
              firstPageErrorIndicatorBuilder: (context) => PagedListErrorWidget(
                pagingController: IncomingOrdersProvider.pagingController,
              ),
              firstPageProgressIndicatorBuilder: (context) =>
                  const OrderItemSkeletonLoader(),
              newPageProgressIndicatorBuilder: (context) =>
                  const OrderItemSkeletonLoader(),
              noItemsFoundIndicatorBuilder: (context) => const Center(
                child: Text(
                  "You have not received any order yet.",
                ),
              ),
              newPageErrorIndicatorBuilder: (context) => PagedListErrorWidget(
                pagingController: IncomingOrdersProvider.pagingController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
