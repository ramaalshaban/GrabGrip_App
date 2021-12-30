import 'dart:io';

import 'package:collection/collection.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_as_draft_request/post_listing_as_draft_request.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_state/post_listing_state.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/features/post_listing/models/save_listing_request/save_listing_request.dart';
import 'package:grab_grip/features/post_listing/providers/post_listing_availability_state_provider.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/providers/photos_provider.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/models/variation/variation.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/models/variation_string_value/variation_string_value.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';

class PostListingProvider extends StateNotifier<PostListingState> {
  HttpRequestStateProvider httpRequestStateProvider;
  PostListingAvailabilityStateProvider listingAvailabilityProvider;
  PhotosProvider photosProvider;

  PostListingProvider(
    this.httpRequestStateProvider,
    this.listingAvailabilityProvider,
    this.photosProvider,
  ) : super(const PostListingState());

  //region reset methods
  void reset() {
    state = const PostListingState();
  }

  void resetPlace() {
    state = state.copyWith(place: null);
    // also, reset the latLng that are related to this place
    latLng = null;
  }

  //endregion

  //region setters and getters
  set category(Category? category) =>
      state = state.copyWith(category: category);

  Category? get category => state.category;

  set subcategory(Category? subcategory) =>
      state = state.copyWith(subcategory: subcategory);

  Category? get subcategory => state.subcategory;

  Category selectedCategory() {
    if (subcategory != null) {
      return subcategory!;
    } else {
      return category!;
    }
  }

  set listingTypeId(int? listingTypeId) =>
      state = state.copyWith(listingTypeId: listingTypeId);

  int? get listingTypeId => state.listingTypeId;

  List<PricingModel> get pricingModels => state.pricingModels;

  set pricingModels(List<PricingModel> pricingModels) =>
      state = state.copyWith(pricingModels: pricingModels);

  set inProgressListing(Gear? inProgressListing) =>
      state = state.copyWith(inProgressListing: inProgressListing);

  Gear? get inProgressListing => state.inProgressListing;

  set title(String? title) => state = state.copyWith(title: title);

  String? get title => state.title;

  set description(String? description) =>
      state = state.copyWith(description: description);

  String? get description => state.description;

  List<String> get tags => state.tags;

  set tags(List<String> tags) => state = state.copyWith(tags: tags);

  set listingEndDate(String? listingEndDate) {
    final formattedEndDate = formatDate(listingEndDate);
    state = state.copyWith(listingEndDate: formattedEndDate);
  }

  String? get listingEndDate => state.listingEndDate;

  set place(String? place) => state = state.copyWith(place: place);

  String? get place => state.place;

  set latLng(LatLng? latLng) {
    inProgressListing = state.inProgressListing!.copyWith(
      lat: latLng!.latitude,
      lng: latLng.longitude,
    );
  }

  LatLng? get latLng {
    final lat = state.inProgressListing!.lat;
    final lng = state.inProgressListing!.lng;
    return LatLng(lat, lng);
  }

  set country(CountryCode? country) => state = state.copyWith(country: country);

  CountryCode? get country => state.country;

  set city(String? city) => state = state.copyWith(city: city);

  String? get city => state.city;

  set region(String? region) => state = state.copyWith(region: region);

  String? get region => state.region;

  set price(int? price) => state = state.copyWith(price: price);

  int? get price => state.price;

  set stock(int? stock) => state = state.copyWith(stock: stock);

  int? get stock => state.stock;

  set minRentPeriod(int? minRentPeriod) =>
      state = state.copyWith(minRentPeriod: minRentPeriod);

  int? get minRentPeriod => state.minRentPeriod;

  set maxRentPeriod(int? maxRentPeriod) =>
      state = state.copyWith(maxRentPeriod: maxRentPeriod);

  int? get maxRentPeriod => state.maxRentPeriod;

  List<AdditionalOption> get additionalOptions => state.additionalOptions;

  set additionalOptions(List<AdditionalOption> additionalOptions) =>
      state = state.copyWith(additionalOptions: additionalOptions);

  List<ShippingFee> get shippingFees => state.shippingFees;

  set shippingFees(List<ShippingFee> shippingFees) =>
      state = state.copyWith(shippingFees: shippingFees);

  List<Variation> get variations => state.variations;

  set variations(List<Variation> variations) =>
      state = state.copyWith(variations: variations);

  bool? get isForRent => state.isForRent;

  set isForRent(bool? isForRent) =>
      state = state.copyWith(isForRent: isForRent);

//endregion

  //region add/remove methods
  //region tags
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

  //endregion

  //region additional options
  void addEmptyAdditionalOption() {
    final List<AdditionalOption> availableOptions = [];
    availableOptions.addAll(additionalOptions);
    availableOptions.add(const AdditionalOption());
    additionalOptions = availableOptions.toList();
  }

  void editAdditionalOption(int index, AdditionalOption newOption) {
    final List<AdditionalOption> availableOptions = [];
    for (int i = 0; i < additionalOptions.length; i++) {
      if (i == index) {
        availableOptions.add(newOption);
      } else {
        availableOptions.add(additionalOptions[i]);
      }
    }
    additionalOptions = availableOptions.toList();
  }

  void removeAdditionalOption(int index) {
    final optionToRemove = additionalOptions[index];
    final List<AdditionalOption> availableOptions = [];
    availableOptions.addAll(additionalOptions);
    availableOptions.remove(optionToRemove);
    additionalOptions = availableOptions.toList();
  }

  //endregion

  //region shipping fees
  void addEmptyShippingFee() {
    final List<ShippingFee> availableFees = [];
    availableFees.addAll(shippingFees);
    availableFees.add(const ShippingFee());
    shippingFees = availableFees.toList();
  }

  void editShippingFee(int index, ShippingFee newFee) {
    final List<ShippingFee> availableFees = [];
    for (int i = 0; i < shippingFees.length; i++) {
      if (i == index) {
        availableFees.add(newFee);
      } else {
        availableFees.add(shippingFees[i]);
      }
    }
    shippingFees = availableFees.toList();
  }

  void removeShippingFee(int index) {
    final feeToRemove = shippingFees[index];
    final List<ShippingFee> availableFees = [];
    availableFees.addAll(shippingFees);
    availableFees.remove(feeToRemove);
    shippingFees = availableFees.toList();
  }

  //endregion

  //region variations
  void addEmptyVariation() {
    final List<Variation> availableVariations = [];
    availableVariations.addAll(variations);
    availableVariations.add(const Variation());
    variations = availableVariations.toList();
  }

  bool addValueToVariation(int index, String newValue) {
    // before adding a value to a variation,
    // check first if there is already a variation with the same attribute
    final isVariationAlreadyCreated = variations.firstWhereOrNull(
      (variation) =>
          variation.attribute == variations[index].attribute &&
          variation != variations[index],
    );
    if (isVariationAlreadyCreated != null) {
      // variation has been added before, so return false to warn the user
      return false;
    }
    final List<String> availableValues = [];
    availableValues.addAll(variations[index].values);
    availableValues.add(newValue);
    final List<Variation> availableVariations = [];
    for (int i = 0; i < variations.length; i++) {
      if (i == index) {
        final toUpdateVariation = Variation(
          attribute: variations[i].attribute,
          values: availableValues,
        );
        availableVariations.add(toUpdateVariation);
      } else {
        availableVariations.add(variations[i]);
      }
    }
    variations = availableVariations.toList();
    return true;
  }

  void removeValueFromVariation(int index, String valueToRemove) {
    final List<String> availableValues = [];
    availableValues.addAll(variations[index].values);
    availableValues.remove(valueToRemove);
    final List<Variation> availableVariations = [];
    for (int i = 0; i < variations.length; i++) {
      if (i == index) {
        final toUpdateVariation = Variation(
          attribute: variations[i].attribute,
          values: availableValues,
        );
        availableVariations.add(toUpdateVariation);
      } else {
        availableVariations.add(variations[i]);
      }
    }
    variations = availableVariations.toList();
  }

  void editVariationAttribute(int index, Variation editedVariation) {
    final List<Variation> availableVariations = [];
    for (int i = 0; i < variations.length; i++) {
      if (i == index) {
        availableVariations.add(editedVariation);
      } else {
        availableVariations.add(variations[i]);
      }
    }
    variations = availableVariations.toList();
  }

  void removeVariation(int index) {
    final variationToRemove = variations[index];
    final List<Variation> availableVariations = [];
    availableVariations.addAll(variations);
    availableVariations.remove(variationToRemove);
    variations = availableVariations.toList();
  }

  //endregion

  //endregion

  //region photos upload/delete
  Future<void> uploadPhoto(File file, {bool? takenByCamera}) async {
    photosProvider.uploadPhoto(
      file: file,
      hash: state.inProgressListing!.hash,
      listingTitle: title ?? "",
      takenByCamera: takenByCamera,
    );
  }

  Future<void> deletePhoto(String photoIndex) async {
    photosProvider.deletePhoto(
      hash: state.inProgressListing!.hash,
      photoIndex: photoIndex,
    );
  }

  //endregion

  //region post listing methods
  Future<void> postListingAsDraft() async {
    httpRequestStateProvider.setLoading();
    final postListingRequest = PostListingAsDraftRequest(
      selectedCategoryId: selectedCategory().id,
      pricingModelId: listingTypeId,
      title: title,
      description: description,
    );
    final token = await AppSharedPreferences().getToken();
    await NetworkService().postListingAsDraft(token!, postListingRequest).then(
      (result) {
        result.when(
          (errorMessage) {
            httpRequestStateProvider.setError(errorMessage);
            inProgressListing = null;
          },
          (response) {
            httpRequestStateProvider.setSuccess(
              successMessage:
                  "Your listing has been created as draft successfully",
            );
            inProgressListing = response.listing;
          },
        );
      },
    );
  }

  Future<void> getListingForEditing() async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService()
        .getListingForEditing(token!, inProgressListing!.hash)
        .then(
      (result) {
        result.when(
          (errorMessage) {
            httpRequestStateProvider.setError(errorMessage);
            inProgressListing = null;
          },
          (response) {
            httpRequestStateProvider.setSuccess();
            inProgressListing = response.listing;
            isForRent = response.listing.pricingModel?.widget == bookDate;
          },
        );
      },
    );
  }

  SaveListingRequest _getSaveListingRequestBody({bool? publishListing}) {
    // check if availableOptions/shippingFees/variations are empty, then add an empty item to them
    // In order for the backend to be able to delete all additionalOptions/shippingFees/variations, this addition is required.
    final additionalOptionsToSave = additionalOptions.isEmpty
        ? [const AdditionalOption()]
        : additionalOptions;
    final shippingFeesToSave =
        shippingFees.isEmpty ? [const ShippingFee()] : shippingFees;
    final variationsToSave = variations.isEmpty
        ? [const VariationStringValue()]
        : variations
            .map(
              (variation) => VariationStringValue(
                attribute: variation.attribute,
                values: variation.values.join(','),
              ),
            )
            .toList();

    return SaveListingRequest(
      publish: publishListing,
      title: title,
      description: description,
      tags: tags.join(','),
      listingEndDate: listingEndDate,
      lat: inProgressListing?.lat,
      lng: inProgressListing?.lng,
      city: city,
      region: region,
      country: country?.code,
      price: price,
      stock: stock,
      minRentPeriod: minRentPeriod,
      maxRentPeriod: maxRentPeriod,
      additionalOptions: additionalOptionsToSave,
      shippingFees: shippingFeesToSave,
      variations: variationsToSave,
    );
  }

  Future<void> saveListing({bool? publishListing}) async {
    httpRequestStateProvider.setInnerLoading();
    final saveListingRequestBody =
    _getSaveListingRequestBody(publishListing: publishListing);
    final token = await AppSharedPreferences().getToken();
    await NetworkService()
        .saveListing(
      token!,
      state.inProgressListing!.hash,
      saveListingRequestBody,
    )
        .then((result) {
      result.when((errorMessage) {
        if (publishListing == true) {
          listingAvailabilityProvider.setPublished(succeeded: false);
        }
        httpRequestStateProvider.setError(saveListingError);
      }, (response) {
        if (publishListing == true) {
          listingAvailabilityProvider.setPublished(succeeded: true);
          httpRequestStateProvider.setSuccess();
        } else {
          httpRequestStateProvider.setSuccess(
            actionSucceeded: saveListingSuccessAction,
          );
        }
      });
    });
  }

  Future<void> changeListingAvailability({
    bool? isUnPublish,
    bool? isReEnable,
  }) async {
    httpRequestStateProvider.setInnerLoading();
    final token = await AppSharedPreferences().getToken();
    await NetworkService()
        .changeListingAvailability(
      token!,
      state.inProgressListing!.hash,
      unPublish: isUnPublish,
      reEnable: isReEnable,
    )
        .then((result) {
      result.when((errorMessage) {
        if (isReEnable == true) {
          listingAvailabilityProvider.setReEnabled(succeeded: false);
        } else if (isUnPublish == true) {
          listingAvailabilityProvider.setUnpublished(succeeded: false);
        }
        httpRequestStateProvider.setError(errorMessage);
      }, (response) {
        if (isReEnable == true) {
          listingAvailabilityProvider.setReEnabled(succeeded: true);
        } else if (isUnPublish == true) {
          listingAvailabilityProvider.setUnpublished(succeeded: true);
        }
        httpRequestStateProvider.setSuccess();
      });
    });
  }

  //endregion

  bool isListingVerified() => inProgressListing?.isVerifiedByAdmin != null;

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
}
