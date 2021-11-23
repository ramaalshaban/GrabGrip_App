import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_details_state/listing_details_state.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';

class ListingDetailsProvider extends StateNotifier<ListingDetailsState> {
  HttpRequestStateProvider httpRequestStateProvider;

  ListingDetailsProvider(this.httpRequestStateProvider)
      : super(const ListingDetailsState());

  //region getters and setters
  Map<String, String> get categories => state.categories;

  set categories(Map<String, String> categories) =>
      state = state.copyWith(categories: categories);

  Map<String, String> get pricingModels => state.pricingModels;

  set pricingModels(Map<String, String> pricingModels) =>
      state = state.copyWith(pricingModels: pricingModels);

  //endregion

  String getCategoryName(int categoryId) {
    String categoryName = categories[categoryId.toString()]!;
    // the backend returns category names with "&mdash;" to indicate the tree of the categories (some categories have children categories)
    // (see the response of /api/v1/create for more info)
    // so remove this string from the name
    categoryName = categoryName.replaceAll("&mdash;", '');
    categoryName = categoryName.trim();
    return categoryName;
  }

  String getPricingModelName(String pricingModelId) {
    final pricingModelName = pricingModels[pricingModelId]!;
    final firstSpaceIndex = pricingModelName.indexOf(" ");
    // return only the first word of the name
    return pricingModelName.substring(0, firstSpaceIndex);
  }

  Future<void> getCategoriesAndPricingModels() async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().getCategoriesAndPricingModels(token!).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
        categories = {};
        pricingModels = {};
      }, (response) {
        categories = response.categories;
        pricingModels = response.pricingModels;
        httpRequestStateProvider.setSuccess();
      });
    });
  }
}
