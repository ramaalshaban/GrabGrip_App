import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geocode_response.dart';
import 'package:grab_grip/features/browsing/filter/models/categories_response/categories_response.dart';
import 'package:grab_grip/features/browsing/filter/models/filter_sort_model/filter_sort_model.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_details_state/listing_details_state.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_response/listing_response.dart';
import 'package:grab_grip/features/browsing/listing_details/models/reviews_page/reviews_page.dart';
import 'package:grab_grip/features/feedback/contact_us/models/contact_us/contact_us_form.dart';
import 'package:grab_grip/features/feedback/report_listing/models/report_reasons_response/report_reasons_response.dart';
import 'package:grab_grip/features/feedback/report_listing/models/report_request/report_listing_request.dart';
import 'package:grab_grip/features/placing_order/models/place_order_details_request/place_order_details_request.dart';
import 'package:grab_grip/features/placing_order/models/place_order_details_response/place_order_details_response.dart';
import 'package:grab_grip/features/placing_order/models/place_order_session_request/place_order_session_request.dart';
import 'package:grab_grip/features/post_listing/models/post_edit_listing_response/post_edit_listing_response.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_as_draft_request/post_listing_as_draft_request.dart';
import 'package:grab_grip/features/post_listing/models/pricing_models_response/pricing_models_response.dart';
import 'package:grab_grip/features/post_listing/models/save_listing_request/save_listing_request.dart';
import 'package:grab_grip/features/user_profile/change_password/models/change_password_request.dart';
import 'package:grab_grip/features/user_profile/edit_profile/models/edit_profile_request.dart';
import 'package:grab_grip/features/user_profile/payments/models/payment_method/payment_method.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:grab_grip/services/network/api/grab_grip_api.dart';
import 'package:grab_grip/shared/models/listings_page/listings_page.dart';
import 'package:grab_grip/shared/models/orders_page/orders_page.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:multiple_result/multiple_result.dart';

class NetworkService {
  static final NetworkService _retrofit = NetworkService._internal();
  late final GrabGripApi _grabGripApi;
  late final GrabGripApi _googleGeocodeApi;

  factory NetworkService() {
    return _retrofit;
  }

  NetworkService._internal() {
    final _dio = Dio();
    final globalHeaders = {
      "Accept": "application/json",
      "\$Content-Type": "application/json",
    };
    _dio.options.headers = globalHeaders;
    _dio.options.connectTimeout = 20000;
    _grabGripApi = GrabGripApi(_dio);
    _googleGeocodeApi = GrabGripApi(
      _dio,
      baseUrl: "https://maps.googleapis.com/maps/api/geocode",
    );
  }

  //region pinging the server
  Future<Result<String, String>> pingGrabGrip() async {
    try {
      final pingCall = await _grabGripApi.pingGrabGrip();
      return Success(pingCall.data.toString());
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region google apis
  Future<Result<String, GeocodeResponse>> getBoundsByPlaceId({
    required String placeId,
  }) async {
    try {
      final getBoundsCall =
          await _googleGeocodeApi.getBoundsByPlaceId(placeId: placeId);
      return Success(getBoundsCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, GeocodeResponse>> getBoundsByLatLng({
    required LatLng latLng,
  }) async {
    try {
      final getBoundsCall = await _googleGeocodeApi.getBoundsByLatLng(
        latlng: "${latLng.latitude},${latLng.longitude}",
      );
      return Success(getBoundsCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region auth calls
  Future<Result<String, LoginResponse>> register(AuthModel authModel) async {
    try {
      await _grabGripApi.register(authModel);
      // after a successful registration, log in to get an access token
      final loginCall = await _grabGripApi.login(authModel);
      return Success(loginCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }
  Future<Result<String, EditProfileRequest>> editProfile(String token, EditProfileRequest requestBody) async {
    try {
      final editProfileCall = await _grabGripApi.editProfile("Bearer $token", requestBody);
      // the successful response is a user object, ignore it (it can be useful later)
      return Success(editProfileCall.data);

    }
    catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, LoginResponse>> login(AuthModel authModel) async {
    try {
      final loginCall = await _grabGripApi.login(authModel);
      return Success(loginCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, String>> logout(String token) async {
    try {
      final logoutCall = await _grabGripApi.logout("Bearer $token");
      return Success(logoutCall.data.toString());
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, String>> changePassword(
    String token,
    ChangePasswordRequest requestBody,
  ) async {
    try {
      await _grabGripApi.changePassword(
        "Bearer $token",
        requestBody,
      );
      // the successful response is a user object, ignore it (it can be useful later)
      return const Success("");
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }
  // Future<Result<String, LoginResponse>> login(AuthModel authModel) async {
  //   try {
  //     final loginCall = await _grabGripApi.login(authModel);
  //     return Success(loginCall.data);
  //   } catch (error) {
  //     final errorMessage = _errorHandler(error as DioError);
  //     return Error(errorMessage);
  //   }
  // }



  //endregion

  //region browse
  Future<Result<String, BrowseModel>> browse(
    FilterSortModel? filterAndSortParams, {
    required int pageNumber,
  }) async {
    try {
      final browseCall = await _grabGripApi.browse(
        pageNumber: pageNumber,
        category: filterAndSortParams?.subcategory != null
            ? filterAndSortParams?.subcategory?.id.toString()
            : filterAndSortParams?.category?.id.toString(),
        distance: filterAndSortParams?.distance?.key,
        listingType: filterAndSortParams?.listingType?.key,
        minPrice: filterAndSortParams?.minPrice,
        maxPrice: filterAndSortParams?.maxPrice,
        sortType: filterAndSortParams?.sortOption?.key,
        searchText: filterAndSortParams?.searchText,
        location: filterAndSortParams?.place,
        bounds: filterAndSortParams?.bounds,
      );
      return Success(browseCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, CategoriesResponse>> getCategories() async {
    try {
      final getCategoriesCall = await _grabGripApi.getCategories();
      return Success(getCategoriesCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region post/edit a listing
  Future<Result<String, PricingModelsResponse>> getPricingModels(
    String token,
    int categoryId,
  ) async {
    try {
      final getPricingModelsCall = await _grabGripApi
          .getPricingModels("Bearer $token", categoryId: categoryId);
      return Success(getPricingModelsCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, String>> uploadPhoto(
    String token,
    String listingHash,
    File file,
  ) async {
    try {
      final uploadPhotoCall = await _grabGripApi.uploadPhoto(
        "Bearer $token",
        hash: listingHash,
        file: file,
      );
      return Success(uploadPhotoCall.data.toString());
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, String>> deletePhoto(
    String token,
    String listingHash,
    String photoIndex,
  ) async {
    try {
      final deletePhotoCall = await _grabGripApi.deletePhoto(
        "Bearer $token",
        hash: listingHash,
        photoIndex: photoIndex,
      );
      return Success(deletePhotoCall.data.toString());
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, PostEditListingResponse>> postListingAsDraft(
    String token,
    PostListingAsDraftRequest postListingRequest,
  ) async {
    try {
      final postListingCall = await _grabGripApi.postListingAsDraft(
        "Bearer $token",
        postListingRequest,
      );
      return Success(postListingCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, PostEditListingResponse>> getListingForEditing(
    String token,
    String listingHash,
  ) async {
    try {
      final getListingForEditingCall = await _grabGripApi.getListingForEditing(
        "Bearer $token",
        hash: listingHash,
      );
      return Success(getListingForEditingCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, String>> saveListing(
    String token,
    String listingHash,
    SaveListingRequest request,
  ) async {
    try {
      final saveListingCall = await _grabGripApi.saveListing(
        "Bearer $token",
        hash: listingHash,
        publish: request.publish == true ? "Publish" : null,
        body: request,
      );
      return Success(saveListingCall.data.toString());
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, String>> changeListingAvailability(
    String token,
    String listingHash, {
    bool? unPublish,
    bool? reEnable,
  }) async {
    try {
      final changeListingAvailabilityCall =
          await _grabGripApi.changeListingAvailability(
        "Bearer $token",
        hash: listingHash,
        upPublish: unPublish == true ? "Unpublish" : null,
        reEnable: reEnable == true ? "Re-enable" : null,
      );
      return Success(changeListingAvailabilityCall.data.toString());
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region feedback

  //region contact us
  Future<Result<String, String>> sendContactUsForm(
    ContactUsForm contactUsForm,
  ) async {
    try {
      final sendFormCall = await _grabGripApi.sendContactUsForm(contactUsForm);
      final successMessage =
          (sendFormCall.data as Map<String, dynamic>)['message'];
      return Success(successMessage.toString());
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region report listing
  Future<Result<String, String>> reportListing(
    String token,
    String hash,
    ReportListingRequest reportListingRequest,
  ) async {
    try {
      final reportListingCall = await _grabGripApi.reportListing(
        "Bearer $token",
        hash,
        reportListingRequest,
      );
      final successMessage =
          (reportListingCall.data as Map<String, dynamic>)['message'];
      return Success(successMessage.toString());
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, ReportReasonsResponse>> getReportReasons(
    String token,
    String hash,
  ) async {
    try {
      final getReportReasonsCall =
          await _grabGripApi.getReportReasons("Bearer $token", hash);
      return Success(getReportReasonsCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //endregion

  //region user profile
  Future<Result<String, User>> getUserProfile(
    String token,
  ) async {
    try {
      final getUserProfileCall =
          await _grabGripApi.getUserProfile("Bearer $token");
      return Success(getUserProfileCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, String>> resendVerificationEmail(String token) async {
    try {
      final resendCall =
          await _grabGripApi.resendVerificationEmail("Bearer $token");
      return Success(resendCall.data.toString());
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //region payment methods

  Future<Result<String, List<PaymentMethod>>> getPaymentMethods(
    String token,
  ) async {
    try {
      final getPaymentMethodsCall =
          await _grabGripApi.getPaymentMethods("Bearer $token");
      return Success(getPaymentMethodsCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, List<PaymentMethod>>> linkPaymentMethod(
    String token,
    String key,
  ) async {
    try {
      final linkPaymentMethodCall =
          await _grabGripApi.linkPaymentMethod("Bearer $token", key: key);
      return Success(linkPaymentMethodCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, List<PaymentMethod>>> unlinkPaymentMethod(
    String token,
    String id,
  ) async {
    try {
      final unlinkPaymentMethodCall =
          await _grabGripApi.unlinkPaymentMethod("Bearer $token", id: id);
      return Success(unlinkPaymentMethodCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region listings
  Future<Result<String, ListingsPage>> getListings(
    String token, {
    required int pageNumber,
  }) async {
    try {
      final getListingsCall = await _grabGripApi.getListings(
        "Bearer $token",
        pageNumber: pageNumber,
      );
      return Success(getListingsCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region incoming orders
  Future<Result<String, OrdersPage>> getIncomingOrders(
    String token, {
    required int pageNumber,
  }) async {
    try {
      final getIncomingOrdersCall = await _grabGripApi.getIncomingOrders(
        "Bearer $token",
        pageNumber: pageNumber,
      );
      return Success(getIncomingOrdersCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region my orders
  Future<Result<String, OrdersPage>> getMyOrders(
    String token, {
    required int pageNumber,
  }) async {
    try {
      final getMyOrdersCall = await _grabGripApi.getMyOrders(
        "Bearer $token",
        pageNumber: pageNumber,
      );
      return Success(getMyOrdersCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region favorites
  Future<Result<String, List<Gear>>> getFavorites(
    String token,
  ) async {
    try {
      final getFavoritesCall = await _grabGripApi.getFavorites("Bearer $token");
      return Success(getFavoritesCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, String>> toggleFavoriteStatus(
    String token,
    String hash,
    String slug,
  ) async {
    try {
      final toggleFavoriteStatusCall = await _grabGripApi
          .toggleFavoriteStatus("Bearer $token", hash: hash, slug: slug);
      return Success(toggleFavoriteStatusCall.data.toString());
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //endregion

  //region listing details
  Future<Result<String, ListingResponse>> getListing({
    String? token,
    required ListingDetailsState state,
  }) async {
    try {
      final getListingCall = await _grabGripApi.getListing(
        "Bearer $token",
        hash: state.hash!,
        slug: state.slug!,
        quantity: state.selectedQuantity,
        shippingOptionId: state.selectedShippingOptionId,
        variants: state.selectedVariantOptions,
        additionalOptions: state.selectedAdditionalOptions,
        additionalOptionsMeta: state.selectedAdditionalOptionsMeta,
        startDate: state.startDate,
        endDate: state.endDate,
        range: "${state.startDate} to ${state.endDate}",
      );
      return Success(getListingCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, ReviewsPage>> getReviews({
    required String hash,
    required String slug,
    required int pageNumber,
  }) async {
    try {
      final getReviewsCall = await _grabGripApi.getReviews(
        hash: hash,
        slug: slug,
        pageNumber: pageNumber,
      );
      return Success(getReviewsCall.data.reviewsPage);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region place order

  Future<Result<String, PlaceOrderDetailsResponse>> getPlaceOrderDetails({
    required String token,
    required PlaceOrderDetailsRequest request,
  }) async {
    try {
      final getPlaceOrderDetailsCall = await _grabGripApi.getPlaceOrderDetails(
        "Bearer $token",
        hash: request.hash!,
        quantity: request.selectedQuantity,
        shippingOptionId: request.selectedShippingOptionId,
        variants: request.selectedVariantOptions,
        additionalOptions: request.selectedAdditionalOptions,
        additionalOptionsMeta: request.selectedAdditionalOptionsMeta,
        startDate: request.startDate,
        endDate: request.endDate,
        range: "${request.startDate} to ${request.endDate}",
      );
      return Success(getPlaceOrderDetailsCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  Future<Result<String, String>> placeOrder({
    required String token,
    required PlaceOrderSessionRequest request,
  }) async {
    try {
      final createPlaceOrderSessionCall =
          await _grabGripApi.createPlaceOrderSession(
        "Bearer $token",
        hash: request.hash!,
        body: request,
      );
      final paymentMethodKey =
          createPlaceOrderSessionCall.data.paymentMethodKey;
      final sessionId = createPlaceOrderSessionCall.data.session.id.toString();

      await _grabGripApi.placeOrder(
        "Bearer $token",
        paymentMethodKey: paymentMethodKey,
        sessionId: sessionId,
      );
      return const Success("");
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region error handling
  bool _isNoInternetError(DioError dioError) =>
      dioError.error != null &&
      ((dioError.type == DioErrorType.other &&
              dioError.error is SocketException) ||
          (dioError.type == DioErrorType.connectTimeout));

  String _errorHandler(DioError error) {
    String aggregatedErrorMessage = "";
    if (_isNoInternetError(error)) {
      return noInternetConnection;
    }
    final errorData = json.decode(error.response.toString());
    // when an exception occurs while registration, "errors" is not null
    if (errorData?["errors"] != null) {
      if (errorData["errors"]["email"] != null) {
        aggregatedErrorMessage +=
            "${errorData["errors"]["email"][0] as String}\n";
      }
      if (errorData["errors"]["password"] != null) {
        aggregatedErrorMessage +=
            "${errorData["errors"]["password"][0] as String}\n";
      }
      if (errorData["errors"]["email_address"] != null) {
        aggregatedErrorMessage +=
            "${errorData["errors"]["email_address"][0] as String}\n";
      }
      if (errorData["errors"]["title"] != null) {
        aggregatedErrorMessage +=
            "${errorData["errors"]["title"][0] as String}\n";
      }
      if (errorData["errors"]["description"] != null) {
        aggregatedErrorMessage +=
            "${errorData["errors"]["description"][0] as String}\n";
      }
      if (errorData["errors"]["description_new"] != null) {
        aggregatedErrorMessage +=
            "${errorData["errors"]["description_new"][0] as String}\n";
      }
    }
    // when an exception occurs while logging in, "error" is not null
    else if (errorData?["error"] != null) {
      aggregatedErrorMessage += "Entered email or password is incorrect";
    }
    // when an exception occurs while deleting an image while posting/editing a listing, "success" is not null
    else if (errorData?["success"] != null) {
      aggregatedErrorMessage += "The photo has not been deleted successfully";
      // when the response is 400 for a report listing request, then "message" is not null and has the error message
    } else if (errorData?["message"] != null) {
      aggregatedErrorMessage += "${errorData!["message"] as String}\n";
    } else if (error.response?.statusCode == 401) {
      // user is unauthorized
      aggregatedErrorMessage += "You are not authorized to do so";
    }
    return aggregatedErrorMessage;
  }
//endregion
}
