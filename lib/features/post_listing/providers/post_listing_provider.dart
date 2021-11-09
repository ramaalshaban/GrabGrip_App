import 'dart:io';
import 'package:collection/collection.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_as_draft_request/post_listing_as_draft_request.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_state/post_listing_state.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/features/post_listing/models/save_listing_request/save_listing_request.dart';
import 'package:grab_grip/features/post_listing/providers/post_listing_availability_state_provider.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/photo/photo.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/upload_photo_response/upload_photo_response.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/models/variation/variation.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/models/variation_string_value/variation_string_value.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:image_picker/image_picker.dart';

class PostListingProvider extends StateNotifier<PostListingState> {
  HttpRequestStateProvider httpRequestStateProvider;
  PostListingAvailabilityStateProvider listingAvailabilityProvider;

  PostListingProvider(
    this.httpRequestStateProvider,
    this.listingAvailabilityProvider,
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

  List<Photo> get photos => state.photos;

  set photos(List<Photo> photos) => state = state.copyWith(photos: photos);

  List<UploadPhotoResponse> get photosAsJson => state.photosAsJson;

  set photosAsJson(List<UploadPhotoResponse> photosAsJson) =>
      state = state.copyWith(photosAsJson: photosAsJson);

  set price(int? price) => state = state.copyWith(price: price);

  int? get price => state.price;

  set stock(int? stock) => state = state.copyWith(stock: stock);

  int? get stock => state.stock;

  List<AdditionalOption> get additionalOptions => state.additionalOptions;

  set additionalOptions(List<AdditionalOption> additionalOptions) =>
      state = state.copyWith(additionalOptions: additionalOptions);

  List<ShippingFee> get shippingFees => state.shippingFees;

  set shippingFees(List<ShippingFee> shippingFees) =>
      state = state.copyWith(shippingFees: shippingFees);

  List<Variation> get variations => state.variations;

  set variations(List<Variation> variations) =>
      state = state.copyWith(variations: variations);

  bool? get hasListingBeenSaved => state.hasListingBeenSaved;

  set hasListingBeenSaved(bool? saved) =>
      state = state.copyWith(hasListingBeenSaved: saved);

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

  //region photos
  Future<void> addPhoto(File file) async {
    final photoIndex = photos.length.toString();
    final newPhotoName = "$title - photo #${photos.length + 1}";
    final newPhoto = await makePhotoFromFile(file, photoIndex, newPhotoName);
    final List<Photo> availablePhotos = [];
    availablePhotos.addAll(photos);
    availablePhotos.add(newPhoto);
    photos = availablePhotos.toList();
  }

  void removePhoto(String photoIndex) {
    final List<Photo> availablePhotos = [];
    for (int i = 0; i < photos.length; i++) {
      // don't add the photo that should be removed
      if (i == int.parse(photoIndex)) {
        continue;
      }
      // since a photo will be removed, then give the remaining photos a new index
      final newIndex = availablePhotos.length.toString();
      availablePhotos.add(photos[i].copyWith(index: newIndex));
    }
    photos = availablePhotos.toList();
  }

  void addPhotoAsJson(UploadPhotoResponse response) {
    final List<UploadPhotoResponse> availableResponses = [];
    availableResponses.addAll(photosAsJson);
    availableResponses.add(response);
    photosAsJson = availableResponses.toList();
  }

  void removePhotoAsJson(String photoIndex) {
    final photoResponseToRemove = photosAsJson[int.parse(photoIndex)];
    final List<UploadPhotoResponse> availableResponses = [];
    availableResponses.addAll(photosAsJson);
    availableResponses.remove(photoResponseToRemove);
    photosAsJson = availableResponses.toList();
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
    print("$additionalOptions is heeeeeeeeeeeeeeeeee");
    print("${additionalOptions.length} is heeeeeeeeeeeeeeeeee");
    print("${additionalOptions.toString()} is heeeeeeeeeeeeeeeeee");
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
            attribute: variations[i].attribute, values: availableValues);
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
            attribute: variations[i].attribute, values: availableValues);
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
  Future<void> uploadPhoto(XFile xFile) async {
    httpRequestStateProvider.setInnerLoading();
    final file = File(xFile.path);
    final token = await AppSharedPreferences().getToken();
    await NetworkService()
        .uploadPhoto(token!, state.postedListing!.hash, file)
        .then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
      }, (response) async {
        addPhotoAsJson(response);
        await addPhoto(file);
        httpRequestStateProvider.setSuccess();
      });
    });
  }

  Future<void> deletePhoto(String photoIndex) async {
    // deleting the photo can be done in two ways:
    // locally: removing the photo from the listing without making any API call
    // remotely: this is done only when the listing that is being edited is saved (i.e. save listing call has been made)
    // if user deletes a photo before saving the listing, then the photo will be deleted locally.

    if (photos.firstWhereOrNull((photo) => photo.index == photoIndex) == null) {
      // the photo has not been found locally so save listing call has been made. so delete the photo remotely
      httpRequestStateProvider.setInnerLoading();
      final token = await AppSharedPreferences().getToken();
      await NetworkService()
          .deletePhoto(token!, state.postedListing!.hash, photoIndex)
          .then((result) {
        result.when((errorMessage) {
          httpRequestStateProvider.setError(errorMessage);
        }, (response) async {
          removePhotoAsJson(photoIndex);
          removePhoto(photoIndex);
          httpRequestStateProvider.setSuccess();
        });
      });
    } else {
      // the photo has been found locally, so delete it locally only since user has not saved the listing yet
      removePhotoAsJson(photoIndex);
      removePhoto(photoIndex);
    }
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
            postedListing = null;
          },
          (response) {
            httpRequestStateProvider.setSuccess(
              "Your listing has been created as draft successfully",
            );
            postedListing = response.postedListing;
          },
        );
      },
    );
  }

  SaveListingRequest getSaveListingRequestBody() {
    // check if availableOptions/shippingFees are empty, then add an empty item to them
    // In order for the backend to be able to delete all additionalOptions/shippingFees, this addition is required.
    final additionalOptionsToSave = additionalOptions.isEmpty
        ? [const AdditionalOption()]
        : additionalOptions;
    final shippingFeesToSave =
        shippingFees.isEmpty ? [const ShippingFee()] : shippingFees;
    final variationsToSave = variations
        .map(
          (variation) => VariationStringValue(
            attribute: variation.attribute,
            values: variation.values.join(','),
          ),
        )
        .toList();
    //region debugging print statements
    debugPrint(
      "-----------------listing saving button clicked-----------------------",
    );
    debugPrint(
      "category id ${category!.id}",
    );
    debugPrint(
      "pricing model id $listingTypeId",
    );
    debugPrint(
      "title $title",
    );
    debugPrint(
      "description $description",
    );
    debugPrint(
      "tags ${tags.toString()}",
    );
    debugPrint(
      "listing end date $listingEndDate",
    );
    debugPrint(
      "lat ${postedListing!.lat.toString()}",
    );
    debugPrint(
      "lng ${postedListing!.lng.toString()}",
    );
    debugPrint(
      "country code ${country?.code}",
    );
    debugPrint(
      "city $city",
    );
    debugPrint(
      "region $region",
    );
    debugPrint(
      "photos : ",
    );
    for (int i = 0; i < photosAsJson.length; i++) {
      debugPrint(
        "       type: ${photosAsJson[i].type}",
      );
      debugPrint(
        "       path: ${photosAsJson[i].path}",
      );
      debugPrint(
        "       uploaded: ${photosAsJson[i].success}",
      );
      debugPrint(
        "${photosAsJson[i]}",
      );
      debugPrint("-------------");
    }
    debugPrint(
      "price in sar $price",
    );
    debugPrint(
      "stock $stock",
    );
    for (int i = 0; i < additionalOptions.length; i++) {
      debugPrint(
        "       name: ${additionalOptions[i].name}",
      );
      debugPrint(
        "       price: ${additionalOptions[i].price}",
      );
      debugPrint(
        "       Max Qty: ${additionalOptions[i].maxQuantity}",
      );
      debugPrint("-------------");
    }
    for (int i = 0; i < shippingFees.length; i++) {
      debugPrint(
        "       name: ${shippingFees[i].name}",
      );
      debugPrint(
        "       price: ${shippingFees[i].price}",
      );

      debugPrint("-------------");
    }
    for (int i = 0; i < variations.length; i++) {
      debugPrint(
        "       name: ${variations[i].attribute}",
      );
      debugPrint(
        "       values: ${variations[i].values.toString()}",
      );

      debugPrint("-------------");
    }
    debugPrint(
      "---------------------------------------------------------------------",
    );
    //endregion
    return SaveListingRequest(
      title: title,
      description: description,
      tags: tags.join(','),
      listingEndDate: listingEndDate ?? " . ",
      lat: postedListing?.lat,
      lng: postedListing?.lng,
      city: city,
      region: region,
      country: country?.code,
      price: price,
      stock: stock,
      //  photos: photosAsJson,
      additionalOptions: additionalOptionsToSave,
      shippingFees: shippingFeesToSave,
      variations: variationsToSave,
    );
  }

  Future<void> saveListing() async {
    httpRequestStateProvider.setInnerLoading();

    final saveListingRequestBody = getSaveListingRequestBody();

    final token = await AppSharedPreferences().getToken();
    print("token is $token");
    await NetworkService()
        .saveListing(
      token!,
      state.postedListing!.hash,
      saveListingRequestBody,
    )
        .then((result) {
      result.when((errorMessage) {
        hasListingBeenSaved = false;
        httpRequestStateProvider.setError(saveListingError);
      }, (response) {
        hasListingBeenSaved = true;
        httpRequestStateProvider.setSuccess(saveListingSuccess);
      });
    });
  }

  Future<void> changeListingAvailability({
    bool? isPublish,
    bool? isUnPublish,
    bool? isReEnable,
  }) async {
    httpRequestStateProvider.setInnerLoading();

    final token = await AppSharedPreferences().getToken();
    await NetworkService()
        .changeListingAvailability(
      token!,
      state.postedListing!.hash,
      publish: isPublish,
      reEnable: isReEnable,
      unPublish: isUnPublish,
    )
        .then((result) {
      result.when((errorMessage) {
        if (isPublish == true) {
          listingAvailabilityProvider.setPublished(succeeded: false);
        } else if (isReEnable == true) {
          listingAvailabilityProvider.setReEnabled(succeeded: false);
        } else if (isUnPublish == true) {
          listingAvailabilityProvider.setUnpublished(succeeded: false);
        }
        httpRequestStateProvider.setError(errorMessage);
      }, (response) {
        if (isPublish == true) {
          listingAvailabilityProvider.setPublished(succeeded: true);
        } else if (isReEnable == true) {
          listingAvailabilityProvider.setReEnabled(succeeded: true);
        } else if (isUnPublish == true) {
          listingAvailabilityProvider.setUnpublished(succeeded: true);
        }
        httpRequestStateProvider.setSuccess();
      });
    });
  }

  //endregion

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
