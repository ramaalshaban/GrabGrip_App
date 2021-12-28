import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_category/listing_category.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_details_state/listing_details_state.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_response/listing_response.dart';
import 'package:grab_grip/features/browsing/listing_details/models/widget/widget.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:grab_grip/features/user_profile/shared/providers/user_profile_provider.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ListingDetailsProvider extends StateNotifier<ListingDetailsState> {
  ListingDetailsProvider(
    this.httpRequestStateProvider,
    this.userProfileProvider,
  ) : super(const ListingDetailsState());

  HttpRequestStateProvider httpRequestStateProvider;
  UserProfileProvider userProfileProvider;

  final equalityChecker = const DeepCollectionEquality().equals;

  void reset() => state = const ListingDetailsState();

  bool userOwnsThisListing({int? listingOwnerId}) =>
      userProfileProvider.userId == (listingOwnerId ?? ownerId);

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

  bool areAllVariantOptionsSelected() =>
      selectedVariantOptions.entries.length == variantOptions.length;

  bool isShippingIdSelected() =>
      (shippingOptions.isNotEmpty && selectedShippingId != null) ||
      shippingOptions.isEmpty;

  String getButtonLabel() {
    if (listingOwner?.canAcceptPayments == 0) {
      return "Ask about\navailability"; // show it on two lines to avoid ui issues when the total price (which is the widget that's by side the button) is a big price
    } else {
      if (pricingModel?.widget == buy) {
        return "Buy now";
      } else /* i.e. pricingModel.widget == bookDate */ {
        return "Book now";
      }
    }
  }

  String getOwnerWidgetLabel() {
    if (pricingModel?.widget == buy) {
      return "Seller info";
    } else /* i.e. pricingModel.widget == bookDate */ {
      return "Owner info";
    }
  }

  String getUserCountryAndCity() {
    final ownerCity = listingOwner?.city ?? "";
    final ownerCountry = listingOwner?.countryCode == null
        ? ""
        : ",${listingOwner?.countryCode}";
    return ownerCity + ownerCountry;
  }

  double getUserRating() => double.parse(userRating!);

  //region getters and setters
  ListingCategory? get category => state.category;

  set category(ListingCategory? category) =>
      state = state.copyWith(category: category);

  PricingModel? get pricingModel => state.pricingModel;

  set pricingModel(PricingModel? pricingModel) =>
      state = state.copyWith(pricingModel: pricingModel);

  int? get ownerId => state.ownerId;

  set ownerId(int? ownerId) => state = state.copyWith(ownerId: ownerId);

  String? get hash => state.hash;

  set hash(String? hash) => state = state.copyWith(hash: hash);

  String? get slug => state.slug;

  set slug(String? slug) => state = state.copyWith(slug: slug);

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

  Map<String, int> get selectedAdditionalOptions =>
      state.selectedAdditionalOptions;

  set selectedAdditionalOptions(
    Map<String, int> selectedAdditionalOptions,
  ) =>
      state = state.copyWith(
        selectedAdditionalOptions: selectedAdditionalOptions,
      );

  Map<String, Map<String, int>> get selectedAdditionalOptionsMeta =>
      state.selectedAdditionalOptionsMeta;

  set selectedAdditionalOptionsMeta(
    Map<String, Map<String, int>> selectedAdditionalOptionsMeta,
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

  int get stockQuantity => state.stockQuantity;

  set stockQuantity(int stockQuantity) =>
      state = state.copyWith(stockQuantity: stockQuantity);

  Widget? get widget => state.widget;

  set widget(Widget? widget) => state = state.copyWith(widget: widget);

  DateTime? get listingEndDate => state.listingEndDate;

  set listingEndDate(DateTime? listingEndDate) =>
      state = state.copyWith(listingEndDate: listingEndDate);

  String? get startDate => state.startDate;

  set startDate(String? startDate) =>
      state = state.copyWith(startDate: formatDateForRequest(startDate));

  String? get endDate => state.endDate;

  set endDate(String? endDate) =>
      state = state.copyWith(endDate: formatDateForRequest(endDate));

  PickerDateRange? get pickerDateRange => state.pickerDateRange;

  set pickerDateRange(PickerDateRange? pickerDateRange) =>
      state = state.copyWith(pickerDateRange: pickerDateRange);

  bool? get isForRent => state.isForRent;

  set isForRent(bool? isForRent) =>
      state = state.copyWith(isForRent: isForRent);

  //isFavorited is null when user is not authenticated, so return false instead because unauthenticated users should see listings as not favorites.
  bool? get isFavorited => state.isFavorited ?? false;

  set isFavorited(bool? isFavorited) =>
      state = state.copyWith(isFavorited: isFavorited);

  String? get userRating => state.userRating;

  set userRating(String? userRating) =>
      state = state.copyWith(userRating: userRating);

  int? get userListingsCount => state.userListingsCount;

  set userListingsCount(int? userListingsCount) =>
      state = state.copyWith(userListingsCount: userListingsCount);

  //endregion

  //region Quantity
  Future<void> setQuantity(int quantity) async {
    selectedQuantity = quantity;
    await getListing();
  }

  //endregion

  //region Additional options
  Future<void> toggleAdditionalOptionStatus({
    required Map<String, int> additionalOption,
    required bool isSelected,
  }) async {
    if (isSelected) {
      addAdditionalOption(additionalOption);
    } else {
      removeAdditionalOption(additionalOption.keys.first);
    }
    await getListing();
  }

  void addAdditionalOption(Map<String, int> toAddAdditionalOption) {
    final Map<String, int> availableOptions = {};
    availableOptions.addAll(selectedAdditionalOptions);
    availableOptions.addAll(toAddAdditionalOption);
    selectedAdditionalOptions = availableOptions;
  }

  void removeAdditionalOption(String toRemoveAdditionalOptionId) {
    final Map<String, int> availableOptions = {};
    availableOptions.addAll(selectedAdditionalOptions);
    availableOptions.remove(toRemoveAdditionalOptionId);
    selectedAdditionalOptions = availableOptions;
  }

  Future<void> changeAdditionalOptionValue(String id, int newValue) async {
    final Map<String, Map<String, int>> availableOptionsMeta = {};
    availableOptionsMeta.addAll(selectedAdditionalOptionsMeta);
    availableOptionsMeta.update(
      id,
      (_) => {"quantity": newValue},
      ifAbsent: () => {"quantity": newValue},
    );
    selectedAdditionalOptionsMeta = availableOptionsMeta;
    await getListing();
  }

//endregion

  //region Shipping Id
  Future<void> setShippingId(int? id) async {
    selectedShippingId = id;
    await getListing();
  }

  //endregion

  //region Variant options
  Future<void> setVariantOptionValue(String attribute, String newValue) async {
    final Map<String, String> availableOptions = {};
    availableOptions.addAll(selectedVariantOptions);
    availableOptions.update(
      attribute,
      (_) => newValue,
      ifAbsent: () => newValue,
    );
    selectedVariantOptions = availableOptions;
    await getListing();
  }

  //endregion

  //region Booking date
  Future<void> setBookingDate(String startDate, String endDate) async {
    this.startDate = startDate;
    this.endDate = endDate;
    await getListing();
  }

  //endregion

  Future<void> getListing({
    String? passedHash,
    String? passedSlug,
  }) async {
    String? token;
    httpRequestStateProvider.setLoading();
    // for these two cases : 1) getting an unpublished listing 2) to get is_favorited key in response, token is required
    token = await AppSharedPreferences().getToken();
    //set the listing hash and slug to the state since we need them when we call getListing again without passing hash and slug (i.e. when user picks listing options)
    if (passedHash != null && passedSlug != null) {
      hash = passedHash;
      slug = passedSlug;
    }
    await NetworkService()
        .getListing(
      token: token,
      state: state,
    )
        .then((result) {
      result.when((errorMessage) {
        httpRequestStateProvider.setError(errorMessage);
        category = null;
        pricingModel = null;
      }, (response) {
        final oldShippingOptions = shippingOptions;
        final oldAdditionalOptions = additionalOptions;
        _mapListingResponseToState(response);
        _updateCurrentSelectedValues(oldShippingOptions, oldAdditionalOptions);
        httpRequestStateProvider.setSuccess();
      });
    });
  }

  void _mapListingResponseToState(ListingResponse response) {
    category = response.listing.category;
    pricingModel = response.listing.pricingModel;
    ownerId = response.listing.ownerId;
    stockQuantity = response.listing.stock;
    additionalOptions = response.listing.additionalOptions ?? [];
    shippingOptions = response.listing.shippingOptions ?? [];
    variantOptions = response.listing.variantOptions ?? {};
    listingOwner = response.listing.user;
    widget = response.widget;
    isForRent = pricingModel?.widget == bookDate;
    isFavorited = response.listing.isFavorited as bool?;
    userRating = response.listing.userRating;
    userListingsCount = response.listing.userListingsCount;
    listingEndDate = response.listing.listingEndDate != null
        ? stringToDateTime(response.listing.listingEndDate!)
        : null;
  }

  void _updateCurrentSelectedValues(
    List<ShippingFee> oldShippingOptions,
    List<AdditionalOption> oldAdditionalOptions,
  ) {
    //region quantity
    if (state.selectedQuantity > stockQuantity) {
      // this block can get executed if the stock quantity changes while the currently selected quantity is greater than the the new value of stock quantity
      selectedQuantity = stockQuantity;
      // to update the calculated total price, get listing with the new selected quantity (which is equal to the stock quantity now)
      getListing();
    }
    //endregion
    //region variant options
    final Map<String, String> selectedVariants = {};
    selectedVariants.addAll(selectedVariantOptions);
    for (int i = 0; i < selectedVariantOptions.keys.length; i++) {
      final attribute = selectedVariantOptions.keys.elementAt(i);
      final selectedValue = selectedVariantOptions.values.elementAt(i);
      // check new variant options, if the values of each attribute contains the currently selected value
      if (!(variantOptions[attribute]?.contains(selectedValue) ?? false)) {
        // this block will get executed when the new list of values for a specific attribute doesn't contain the currently selected value
        // in this case, remove the selected value
        selectedVariants.remove(attribute);
      }
    }
    selectedVariantOptions = selectedVariants;
    //endregion
    //region shipping ids
    if (!equalityChecker(oldShippingOptions, shippingOptions)) {
      // the new shipping options are different, so uncheck the previously selected shipping option
      selectedShippingId = null;
    }
    //endregion
    //region additional options
    if (!equalityChecker(oldAdditionalOptions, additionalOptions)) {
      // the new additional options are different, so reset the selected addition options states
      selectedAdditionalOptions = {};
      selectedAdditionalOptionsMeta = {};
    }
    //endregion
  }
}
