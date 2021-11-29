import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_category/listing_category.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_details_state/listing_details_state.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_response/listing_response.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';

class ListingDetailsProvider extends StateNotifier<ListingDetailsState> {
  HttpRequestStateProvider httpRequestStateProvider;

  ListingDetailsProvider(this.httpRequestStateProvider)
      : super(const ListingDetailsState());

  String getCategoryName() {
    if (category?.parentCategory != null) {
      return "${category?.parentCategory!.name} / ${category?.name ?? ""}";
    } else {
      return category?.name ?? "";
    }
  }

  String getPricingModelName() {
    final firstSpaceIndex = pricingModel?.name.indexOf(" ");
    // return only the first word of the name
    return pricingModel?.name.substring(0, firstSpaceIndex) ?? "";
  }

  bool areVariantOptionsSelected() =>
      selectedVariantOptions.entries.length == variantOptions.length;

  bool isShippingIdSelected() =>
      (shippingOptions.isNotEmpty && selectedShippingId != null) ||
      shippingOptions.isEmpty;

  //region getters and setters
  ListingCategory? get category => state.category;

  set category(ListingCategory? category) =>
      state = state.copyWith(category: category);

  PricingModel? get pricingModel => state.pricingModel;

  set pricingModel(PricingModel? pricingModel) =>
      state = state.copyWith(pricingModel: pricingModel);

  int get selectedQuantity => state.selectedQuantity;

  set selectedQuantity(int quantity) =>
      state = state.copyWith(selectedQuantity: quantity);

  List<AdditionalOption> get additionalOptions => state.additionalOptions;

  set additionalOptions(List<AdditionalOption> additionalOptions) =>
      state = state.copyWith(additionalOptions: additionalOptions);

  List<ShippingFee> get shippingOptions => state.shippingOptions;

  set shippingOptions(List<ShippingFee> shippingOptions) =>
      state = state.copyWith(shippingOptions: shippingOptions);

  Map<String, List<String>> get variantOptions => state.variantOptions;

  set variantOptions(Map<String, List<String>> variantOptions) =>
      state = state.copyWith(variantOptions: variantOptions);

  Map<int, int> get selectedAdditionalOptions =>
      state.selectedAdditionalOptions;

  set selectedAdditionalOptions(
    Map<int, int> selectedAdditionalOptions,
  ) =>
      state = state.copyWith(
        selectedAdditionalOptions: selectedAdditionalOptions,
      );

  Map<int, Map<String, int>> get selectedAdditionalOptionsMeta =>
      state.selectedAdditionalOptionsMeta;

  set selectedAdditionalOptionsMeta(
    Map<int, Map<String, int>> selectedAdditionalOptionsMeta,
  ) =>
      state = state.copyWith(
        selectedAdditionalOptionsMeta: selectedAdditionalOptionsMeta,
      );

  int? get selectedShippingId => state.selectedShippingOptionId;

  set selectedShippingId(int? shippingId) =>
      state = state.copyWith(selectedShippingOptionId: shippingId);

  Map<String, String> get selectedVariantOptions =>
      state.selectedVariantOptions;

  set selectedVariantOptions(
    Map<String, String> selectedVariantOptions,
  ) =>
      state = state.copyWith(
        selectedVariantOptions: selectedVariantOptions,
      );

  User? get listingOwner => state.listingOwner;

  set listingOwner(User? listingOwner) =>
      state = state.copyWith(listingOwner: listingOwner);

  //endregion

  //region Additional options
  void toggleAdditionalOptionStatus({
    required Map<int, int> additionalOption,
    required bool isSelected,
  }) {
    if (isSelected) {
      // add it
      addAdditionalOption(additionalOption);
    } else {
      // remove it
      removeAdditionalOption(additionalOption.keys.first);
    }
  }

  void addAdditionalOption(Map<int, int> toAddAdditionalOption) {
    final Map<int, int> availableOptions = {};
    availableOptions.addAll(selectedAdditionalOptions);
    availableOptions.addAll(toAddAdditionalOption);
    selectedAdditionalOptions = availableOptions;
  }

  void removeAdditionalOption(int toRemoveAdditionalOptionId) {
    final Map<int, int> availableOptions = {};
    availableOptions.addAll(selectedAdditionalOptions);
    availableOptions.remove(toRemoveAdditionalOptionId);
    selectedAdditionalOptions = availableOptions;
  }

  void changeAdditionalOptionValue(int id, int newValue) {
    final Map<int, Map<String, int>> availableOptionsMeta = {};
    availableOptionsMeta.addAll(selectedAdditionalOptionsMeta);
    availableOptionsMeta.update(
      id,
      (_) => {"quantity": newValue},
      ifAbsent: () => {"quantity": newValue},
    );
    selectedAdditionalOptionsMeta = availableOptionsMeta;
  }

//endregion

  //region Variant options

  void setVariantOptionValue(String attribute, String newValue) {
    final Map<String, String> availableOptions = {};
    availableOptions.addAll(selectedVariantOptions);
    availableOptions.update(attribute, (_) => newValue,
        ifAbsent: () => newValue);
    selectedVariantOptions = availableOptions;
  }

  //endregion

  Future<void> getListing({
    required String hash,
    required String slug,
    bool? getListingForOwner,
  }) async {
    httpRequestStateProvider.setLoading();
    final String? token;
    // getting an unpublished listing (i.e. the listing owner browsing its details while it's unpublished) needs token
    if (getListingForOwner == true) {
      token = await AppSharedPreferences().getToken();
    } else {
      token = null;
    }
    // reset the state so old values get deleted (old values that where fetched for the previously browsed listing)
    state = const ListingDetailsState();
    await NetworkService().getListing(hash, slug, token).then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
        category = null;
        pricingModel = null;
      }, (response) {
        _mapListingResponseToState(response);
        httpRequestStateProvider.setSuccess();
      });
    });
  }

  void _mapListingResponseToState(ListingResponse response) {
    category = response.listing.category;
    pricingModel = response.listing.pricingModel;
    additionalOptions = response.listing.additionalOptions ?? [];
    shippingOptions = response.listing.shippingOptions ?? [];
    variantOptions = response.listing.variantOptions ?? {};
    listingOwner = response.listing.user;
  }
}
