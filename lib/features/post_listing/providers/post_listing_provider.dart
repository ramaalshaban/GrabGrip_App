import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_model/post_listing_model.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_request/post_listing_request.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_pereferences.dart';
import 'package:grab_grip/utils/functions.dart';

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

  set postedListing(Gear? postedListing) =>
      state = state.copyWith(postedListing: postedListing);

  Gear? get postedListing => state.postedListing;

  set title(String? title) => state = state.copyWith(title: title);

  String? get title => state.title;

  set description(String? description) =>
      state = state.copyWith(description: description);

  String? get description => state.description;

  List<String> get tags => state.tags;

  set tags(List<String> tags) => state = state.copyWith(tags: tags);

  set listingEndDate(String? listingEndDate) {
    final formattedEndDate = formatDate(listingEndDate);
    print("the time before setting it to the state is $formattedEndDate");
    state = state.copyWith(listingEndDate: formattedEndDate);
  }

  String? get listingEndDate => state.listingEndDate;

  set place(String? place) => state = state.copyWith(place: place);

  String? get place => state.place;

  set latLng(LatLng? latLng) {
    postedListing = state.postedListing!.copyWith(
      lat: latLng!.latitude,
      lng: latLng.longitude,
    );
  }

  LatLng? get latLng {
    final lat = state.postedListing!.lat;
    final lng = state.postedListing!.lng;
    return LatLng(lat, lng);
  }

  set country(CountryCode? country) => state = state.copyWith(country: country);

  CountryCode? get country => state.country;

  set city(String? city) => state = state.copyWith(city: city);

  String? get city => state.city;

  set region(String? region) => state = state.copyWith(region: region);

  String? get region => state.region;

//endregion

  void resetPlace() {
    state = state.copyWith(place: null);
    // also, reset the latLng that are related to this place
    latLng = null;
  }

  Category selectedCategory() {
    if (subcategory != null) {
      return subcategory!;
    } else {
      return category!;
    }
  }

  void addTag(String newTag) {
    final List<String> availableTags = [];
    availableTags.addAll(tags);
    availableTags.add(newTag);
    tags = availableTags.toList();
  }

  void removeTag(String tagToRemove) {
    final List<String> availableTags = [];
    availableTags.addAll(tags);
    availableTags.remove(tagToRemove);
    tags = availableTags.toList();
  }

  Future<void> getPricingModels() async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService()
        .getPricingModels(token!, selectedCategory().id)
        .then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
        pricingModels = [];
      }, (response) {
        httpRequestStateProvider.setSuccess();
        pricingModels = response.selectedCategory.pricingModels;
      });
    });
  }

  Future<void> postListing() async {
    final postListingRequest = PostListingRequest(
      selectedCategoryId: selectedCategory().id,
      pricingModelId: listingTypeId,
      title: title,
      description: description,
    );
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService().postListing(token!, postListingRequest).then(
      (result) {
        result.when(
          (errorMessage) {
            httpRequestStateProvider.setError(errorMessage);
            postedListing = null;
          },
          (response) {
            httpRequestStateProvider.setSuccess(
                "Your listing has been created as draft successfully");
            postedListing = response.postedListing;
          },
        );
      },
    );
  }

  Future<void> publishListing() async {
    // reset the state of the previous user actions the might be saved in the provider

    // call this on a successful publishing call later
    await Future.delayed(
      const Duration(milliseconds: 500),
    ) ;
    reset();
  }
}
