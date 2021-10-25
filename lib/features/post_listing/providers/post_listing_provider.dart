import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_model/post_listing_model.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_pereferences.dart';

class PostListingProvider extends StateNotifier<PostListingModel> {
  HttpRequestStateProvider httpRequestStateProvider;

  PostListingProvider(this.httpRequestStateProvider)
      : super(const PostListingModel());

  void reset() {
    state = const PostListingModel();
  }

  //region setters and getters
  set category(Category? category) =>
      state = state.copyWith(category: category);

  Category? get category => state.category;

  set subcategory(Category? subcategory) =>
      state = state.copyWith(subcategory: subcategory);

  Category? get subcategory => state.subcategory;

  set listingTypeId(int? listingTypeId) =>
      state = state.copyWith(listingTypeId: listingTypeId);

  int? get listingTypeId => state.listingTypeId;

  List<PricingModel> get pricingModels => state.pricingModels;

  set pricingModels(List<PricingModel> pricingModels) =>
      state = state.copyWith(pricingModels: pricingModels);

//endregion

  Category selectedCategory(){
    if(subcategory != null){
      return subcategory!;
    }else{
      return category!;
    }
  }

  Future<void> getPricingModels(int categoryId) async {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      httpRequestStateProvider.setLoading();
    });
    final token = await AppSharedPreferences().getToken();
    await NetworkService().getPricingModels(token!, categoryId).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
        pricingModels = [];
      }, (response) {
        httpRequestStateProvider.setSuccess();
        pricingModels = response.selectedCategory.pricingModels;
      });
    });
  }
}
