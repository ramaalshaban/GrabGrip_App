import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/listing_details/providers/listing_details_provider.dart';
import 'package:grab_grip/features/placing_order/models/place_order_details_request/place_order_details_request.dart';
import 'package:grab_grip/features/placing_order/models/place_order_details_response/place_order_details_response.dart';
import 'package:grab_grip/features/placing_order/models/place_order_state/place_order_state.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';

class PlaceOrderProvider extends StateNotifier<PlaceOrderState> {
  HttpRequestStateProvider httpRequestStateProvider;
  ListingDetailsProvider listingDetailsProvider;

  PlaceOrderProvider(
    this.httpRequestStateProvider,
    this.listingDetailsProvider,
  ) : super(const PlaceOrderState());

  //region getters and setters

  //region billing address properties
  set fullName(String? fullName) => state = state.copyWith(fullName: fullName);

  String? get fullName => state.fullName;

  set address(String? address) => state = state.copyWith(address: address);

  String? get address => state.address;

  set city(String? city) => state = state.copyWith(city: city);

  String? get city => state.city;

  set stateName(String? stateName) =>
      state = state.copyWith(stateName: stateName);

  String? get stateName => state.stateName;

  set postCode(String? postCode) => state = state.copyWith(postCode: postCode);

  String? get postCode => state.postCode;

  set country(CountryCode? country) => state = state.copyWith(country: country);

  CountryCode? get country => state.country;

  //endregion

  set billingAndShippingAddressIsTheSame(int isTheSame) =>
      state = state.copyWith(billingAndShippingAddressIsTheSame: isTheSame);

  int get billingAndShippingAddressIsTheSame =>
      state.billingAndShippingAddressIsTheSame;

  //region shipping address properties
  set fullNameShipping(String? fullNameShipping) =>
      state = state.copyWith(fullNameShipping: fullNameShipping);

  String? get fullNameShipping => state.fullNameShipping;

  set addressShipping(String? addressShipping) =>
      state = state.copyWith(addressShipping: addressShipping);

  String? get addressShipping => state.addressShipping;

  set cityShipping(String? cityShipping) =>
      state = state.copyWith(cityShipping: cityShipping);

  String? get cityShipping => state.cityShipping;

  set stateNameShipping(String? stateNameShipping) =>
      state = state.copyWith(stateNameShipping: stateNameShipping);

  String? get stateNameShipping => state.stateNameShipping;

  set postCodeShipping(String? postCodeShipping) =>
      state = state.copyWith(postCodeShipping: postCodeShipping);

  String? get postCodeShipping => state.postCodeShipping;

  set countryShipping(CountryCode? countryShipping) =>
      state = state.copyWith(countryShipping: countryShipping);

  CountryCode? get countryShipping => state.countryShipping;

//endregion

//endregion

  PlaceOrderDetailsRequest _prepareRequest() => PlaceOrderDetailsRequest(
        hash: listingDetailsProvider.hash,
        selectedQuantity: listingDetailsProvider.selectedQuantity,
        selectedAdditionalOptions:
            listingDetailsProvider.selectedAdditionalOptions,
        selectedAdditionalOptionsMeta:
            listingDetailsProvider.selectedAdditionalOptionsMeta,
        selectedShippingOptionId: listingDetailsProvider.selectedShippingId,
        selectedVariantOptions: listingDetailsProvider.selectedVariantOptions,
        startDate: listingDetailsProvider.startDate,
        endDate: listingDetailsProvider.endDate,
      );

  Future<void> getPlaceOrderDetails() async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    final placeOrderRequest = _prepareRequest();
    await NetworkService()
        .getPlaceOrderDetails(token: token!, request: placeOrderRequest)
        .then(
      (result) {
        result.when(
          (errorMessage) {
            httpRequestStateProvider.setError(errorMessage);
          },
          (response) {
            _mapResponseToState(response);
            httpRequestStateProvider.setSuccess();
          },
        );
      },
    );
  }

  void _mapResponseToState(PlaceOrderDetailsResponse response) {
    fullName = response.billingAddress?.fullName;
    address = response.billingAddress?.address;
    city = response.billingAddress?.city;
    stateName = response.billingAddress?.state;
    postCode = response.billingAddress?.postCode;
    country = response.billingAddress?.country != null
        ? CountryCode(code: response.billingAddress?.country)
        :
        //if the user hasn't selected a country then set KSA as the default
        CountryCode(code: 'Sa');
    fullNameShipping = response.shippingAddress?.fullName;
    addressShipping = response.shippingAddress?.address;
    cityShipping = response.shippingAddress?.city;
    stateNameShipping = response.shippingAddress?.state;
    postCodeShipping = response.shippingAddress?.postCode;
    countryShipping = response.shippingAddress?.country != null
        ? CountryCode(code: response.shippingAddress?.country)
        :
        //if the user hasn't selected a country then set KSA as the default
        CountryCode(code: 'Sa');
  }
}
