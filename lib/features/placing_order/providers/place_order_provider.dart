import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/listing_details/providers/listing_details_provider.dart';
import 'package:grab_grip/features/placing_order/models/address/address.dart';
import 'package:grab_grip/features/placing_order/models/place_order_details_request/place_order_details_request.dart';
import 'package:grab_grip/features/placing_order/models/place_order_details_response/place_order_details_response.dart';
import 'package:grab_grip/features/placing_order/models/place_order_session_request/place_order_session_request.dart';
import 'package:grab_grip/features/placing_order/models/place_order_state/place_order_state.dart';
import 'package:grab_grip/features/placing_order/models/pricing/pricing.dart';
import 'package:grab_grip/features/user_profile/payments/models/payment_method/payment_method.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/network/providers/http_request_state_provider.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';
import 'package:grab_grip/utils/constants.dart';

class PlaceOrderProvider extends StateNotifier<PlaceOrderState> {
  HttpRequestStateProvider httpRequestStateProvider;
  ListingDetailsProvider listingDetailsProvider;

  PlaceOrderProvider(
    this.httpRequestStateProvider,
    this.listingDetailsProvider,
  ) : super(const PlaceOrderState());

  void _resetProvider() => state = const PlaceOrderState();

  //region getters and setters

  set billingAddress(Address billingAddress) =>
      state = state.copyWith(billingAddress: billingAddress);

  Address get billingAddress => state.billingAddress;

  set shippingAddress(Address shippingAddress) =>
      state = state.copyWith(shippingAddress: shippingAddress);

  Address get shippingAddress => state.shippingAddress;

  void setFullName({required String fullName, required bool isShippingForm}) {
    isShippingForm
        ? shippingAddress = state.shippingAddress.copyWith(fullName: fullName)
        : billingAddress = state.billingAddress.copyWith(fullName: fullName);
  }

  void setAddress({required String address, required bool isShippingForm}) {
    isShippingForm
        ? shippingAddress = state.shippingAddress.copyWith(address: address)
        : billingAddress = state.billingAddress.copyWith(address: address);
  }

  void setCity({required String city, required bool isShippingForm}) {
    isShippingForm
        ? shippingAddress = state.shippingAddress.copyWith(city: city)
        : billingAddress = state.billingAddress.copyWith(city: city);
  }

  void setState({required String stateName, required bool isShippingForm}) {
    isShippingForm
        ? shippingAddress = state.shippingAddress.copyWith(state: stateName)
        : billingAddress = state.billingAddress.copyWith(state: stateName);
  }

  void setPostCode({required String postCode, required bool isShippingForm}) {
    isShippingForm
        ? shippingAddress = state.shippingAddress.copyWith(postCode: postCode)
        : billingAddress = state.billingAddress.copyWith(postCode: postCode);
  }

  void setCountry({required String country, required bool isShippingForm}) {
    isShippingForm
        ? shippingAddress = state.shippingAddress.copyWith(country: country)
        : billingAddress = state.billingAddress.copyWith(country: country);
  }

  set billingAndShippingAddressIsTheSame(int isTheSame) =>
      state = state.copyWith(billingAndShippingAddressIsTheSame: isTheSame);

  int get billingAndShippingAddressIsTheSame =>
      state.billingAndShippingAddressIsTheSame;

  set paymentMethods(List<PaymentMethod> paymentMethods) =>
      state = state.copyWith(paymentMethods: paymentMethods);

  List<PaymentMethod> get paymentMethods => state.paymentMethods;

  set selectedPaymentMethod(PaymentMethod? paymentMethod) =>
      state = state.copyWith(selectedPaymentMethod: paymentMethod);

  PaymentMethod? get selectedPaymentMethod => state.selectedPaymentMethod;

  set orderedListing(Gear? listing) =>
      state = state.copyWith(orderedListing: listing);

  Gear? get orderedListing => state.orderedListing;

  set pricing(Pricing? pricing) => state = state.copyWith(pricing: pricing);

  Pricing? get pricing => state.pricing;

//endregion

  bool isPaymentMethodSelected() => selectedPaymentMethod != null;

  //region place order network calls
  Future<void> getPlaceOrderDetails() async {
    httpRequestStateProvider.setLoading();
    final token = await AppSharedPreferences().getToken();
    final placeOrderRequest = _prepareGetPlaceOrderDetailsRequest();
    await NetworkService()
        .getPlaceOrderDetails(token: token!, request: placeOrderRequest)
        .then(
      (result) {
        result.when(
          (errorMessage) {
            httpRequestStateProvider.setError(errorMessage);
          },
          (response) {
            _mapDetailsResponseToState(response);
            httpRequestStateProvider.setSuccess();
          },
        );
      },
    );
  }

  Future<void> placeOrder() async {
    httpRequestStateProvider.setInnerLoading();
    final token = await AppSharedPreferences().getToken();
    final placeOrderSessionRequest = _prepareCreatePlaceOrderSessionRequest();
    await NetworkService()
        .placeOrder(
      token: token!,
      request: placeOrderSessionRequest,
    )
        .then(
      (result) {
        result.when(
          (errorMessage) {
            httpRequestStateProvider.setError(errorMessage);
          },
          (_) {
            _resetProvider();
            listingDetailsProvider.reset();
            httpRequestStateProvider.setSuccess(
              actionSucceeded: placeOrderSuccessAction,
            );
          },
        );
      },
    );
  }

  //endregion

  PlaceOrderDetailsRequest _prepareGetPlaceOrderDetailsRequest() =>
      PlaceOrderDetailsRequest(
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

  PlaceOrderSessionRequest _prepareCreatePlaceOrderSessionRequest() =>
      PlaceOrderSessionRequest(
        hash: listingDetailsProvider.hash,
        paymentMethodKey: selectedPaymentMethod!.key,
        quantity: listingDetailsProvider.selectedQuantity,
        startDate: listingDetailsProvider.startDate,
        endDate: listingDetailsProvider.endDate,
        range:
            "${listingDetailsProvider.startDate} to ${listingDetailsProvider.endDate}",
        shippingOptionId: listingDetailsProvider.selectedShippingId,
        variants: listingDetailsProvider.selectedVariantOptions,
        additionalOptions: listingDetailsProvider.selectedAdditionalOptions,
        additionalOptionsMeta:
            listingDetailsProvider.selectedAdditionalOptionsMeta,
        billingAddress: billingAddress,
        shippingAddress:
            billingAndShippingAddressIsTheSame == 1 ? null : shippingAddress,
        sameAddress: billingAndShippingAddressIsTheSame,
      );

  void _mapDetailsResponseToState(PlaceOrderDetailsResponse response) {
    billingAddress = response.billingAddress ?? const Address();
    shippingAddress = response.shippingAddress ?? const Address();
    paymentMethods = response.paymentMethods ?? [];
    orderedListing = response.listing;
    pricing = response.pricing;
  }
}
