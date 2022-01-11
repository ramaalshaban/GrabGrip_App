import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/listing_details/providers/listing_details_provider.dart';
import 'package:grab_grip/features/placing_order/models/address/address.dart';
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

  set billingAddress(Address? billingAddress) =>
      state = state.copyWith(billingAddress: billingAddress);

  Address? get billingAddress => state.billingAddress;

  set billingCountry(CountryCode? billingCountry) =>
      state = state.copyWith(billingCountry: billingCountry);

  CountryCode? get billingCountry => state.billingCountry;

  //endregion

  set billingAndShippingAddressIsTheSame(int isTheSame) =>
      state = state.copyWith(billingAndShippingAddressIsTheSame: isTheSame);

  int get billingAndShippingAddressIsTheSame =>
      state.billingAndShippingAddressIsTheSame;

  //region shipping address properties

  set shippingAddress(Address? shippingAddress) =>
      state = state.copyWith(shippingAddress: shippingAddress);

  Address? get shippingAddress => state.shippingAddress;

  set shippingCountry(CountryCode? shippingCountry) =>
      state = state.copyWith(shippingCountry: shippingCountry);

  CountryCode? get shippingCountry => state.shippingCountry;

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
    billingAddress = response.billingAddress;
    billingCountry = response.billingAddress?.country != null
        ? CountryCode(code: response.billingAddress?.country)
        :
        //if the user hasn't selected a country then set KSA as the default
        CountryCode(code: 'Sa');
    shippingAddress = response.shippingAddress;
    shippingCountry = response.shippingAddress?.country != null
        ? CountryCode(code: response.shippingAddress?.country)
        :
        //if the user hasn't selected a country then set KSA as the default
        CountryCode(code: 'Sa');
  }
}
