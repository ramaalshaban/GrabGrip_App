import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';
import 'package:grab_grip/shared/models/order/order.dart';
import 'package:grab_grip/shared/models/orders_page/orders_page.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class IncomingOrdersProvider extends StateNotifier<OrdersPage> {
  static PagingController<int, Order> pagingController =
      PagingController(firstPageKey: 1);

  IncomingOrdersProvider() : super(OrdersPage.empty());

  Future<void> getIncomingOrders(int pageKey) async {
    final token = await AppSharedPreferences().getToken();
    await NetworkService().getIncomingOrders(token!, pageNumber: pageKey).then(
      (result) {
        result.when(
          (errorMessage) {
            pagingController.error = errorMessage;
          },
          (ordersPage) {
            state = ordersPage;
            final isLastPage = ordersPage.lastPageNumber == pageKey;
            if (isLastPage) {
              pagingController.appendLastPage(ordersPage.orders);
            } else {
              final nextPageKey = pageKey + 1;
              pagingController.appendPage(ordersPage.orders, nextPageKey);
            }
          },
        );
      },
    );
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }
}
