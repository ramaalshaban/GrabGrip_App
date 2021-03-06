import 'dart:io';

import 'package:dio/dio.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
import 'package:grab_grip/features/authentication/models/register_response/register_response.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geocode_response.dart';
import 'package:grab_grip/features/browsing/filter/models/categories_response/categories_response.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_response/listing_response.dart';
import 'package:grab_grip/features/browsing/listing_details/models/reviews_response/reviews_response.dart';
import 'package:grab_grip/features/feedback/contact_us/models/contact_us/contact_us_form.dart';
import 'package:grab_grip/features/feedback/report_listing/models/report_reasons_response/report_reasons_response.dart';
import 'package:grab_grip/features/feedback/report_listing/models/report_request/report_listing_request.dart';
import 'package:grab_grip/features/placing_order/models/place_order_details_response/place_order_details_response.dart';
import 'package:grab_grip/features/placing_order/models/place_order_session_request/place_order_session_request.dart';
import 'package:grab_grip/features/placing_order/models/place_order_session_response/place_order_session_response.dart';
import 'package:grab_grip/features/post_listing/models/post_edit_listing_response/post_edit_listing_response.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_as_draft_request/post_listing_as_draft_request.dart';
import 'package:grab_grip/features/post_listing/models/pricing_models_response/pricing_models_response.dart';
import 'package:grab_grip/features/post_listing/models/save_listing_request/save_listing_request.dart';
import 'package:grab_grip/features/user_profile/change_password/models/change_password_request.dart';
import 'package:grab_grip/features/user_profile/edit_profile/models/edit_profile_request.dart';
import 'package:grab_grip/features/user_profile/payments/models/payment_method/payment_method.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:grab_grip/shared/models/listings_page/listings_page.dart';
import 'package:grab_grip/shared/models/orders_page/orders_page.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'grab_grip_api.g.dart';

@RestApi(baseUrl: "https://grabgrips.com")
abstract class GrabGripApi {
  factory GrabGripApi(Dio dio, {String baseUrl}) = _GrabGripApi;

  //region pinging the server

  @GET("")
  Future<HttpResponse> pingGrabGrip();

  //endregion

  //region google apis
  @GET("/json")
  Future<HttpResponse<GeocodeResponse>> getBoundsByPlaceId({
    // this is a geocoding call which means, getting a geographical location by a human-readable address
    @Query("key") String googleApiKey = googleApiKey,
    @Query("place_id") required String placeId,
  });

  @GET("/json")
  Future<HttpResponse<GeocodeResponse>> getBoundsByLatLng({
    // this is a reverse geocoding call which means, getting a human-readable address by LatLng
    @Query("key") String googleApiKey = googleApiKey,
    @Query("result_type") String placeId = "street_address",
    @Query("latlng") required String latlng,
  });

  //endregion

  //region auth requests
  @POST("/api/v1/auth/register")
  Future<HttpResponse<RegisterResponse>> register(
      @Body() AuthModel registerRequest);

  @POST("/api/v1/auth/login")
  Future<HttpResponse<LoginResponse>> login(
      @Body() AuthModel registerRequest);



  @POST("/api/v1/auth/logout")
  Future<HttpResponse> logout(@Header("Authorization") String token);

  @POST("/api/v1/account/change_password")
  Future<HttpResponse> changePassword(
    @Header("Authorization") String token,
    @Body() ChangePasswordRequest requestBody,
  );






  @POST("/api/v1/account/edit_profile")
  Future<HttpResponse<EditProfileRequest>> editProfile(
      @Header("Authorization") String token,
      @Body() EditProfileRequest requestBody,

      );


  //endregion

  //region browse requests
  @GET("/browse")
  Future<HttpResponse<BrowseModel>> browse({
    @Query("page") required int pageNumber,
    @Query("q") String? searchText,
    @Query("bounds") String? bounds,
    @Query("location") String? location,
    @Query("sort") String? sortType,
    @Query("distance") String? distance,
    @Query("category") String? category,
    @Query("price_min") String? minPrice,
    @Query("price_max") String? maxPrice,
    @Query("listing-type") String? listingType,
  });

  @GET("/categories")
  Future<HttpResponse<CategoriesResponse>> getCategories();

  //endregion

  //region post a listing
  @GET("/api/v1/create")
  Future<HttpResponse<PricingModelsResponse>> getPricingModels(
    @Header("Authorization") String token, {
    @Query("category") required int categoryId,
  });

  //region photos
  @POST("/api/v1/create/{hash}/uploads")
  Future<HttpResponse> uploadPhoto(
    @Header("Authorization") String token, {
    @Path("hash") required String hash,
    @Part(name: "qqfile") required File file,
  });

  @DELETE("/api/v1/create/{hash}/image/{index}")
  Future<HttpResponse> deletePhoto(
    @Header("Authorization") String token, {
    @Path("hash") required String hash,
    @Path("index") required String photoIndex,
  });

  //endregion

  @POST("/api/v1/create")
  Future<HttpResponse<PostEditListingResponse>> postListingAsDraft(
    @Header("Authorization") String token,
    @Body() PostListingAsDraftRequest postListingRequest,
  );

  @GET("/api/v1/create/{hash}/edit")
  Future<HttpResponse<PostEditListingResponse>> getListingForEditing(
    @Header("Authorization") String token, {
    @Path("hash") required String hash,
  });

  @PUT("/api/v1/create/{hash}")
  Future<HttpResponse> saveListing(
    @Header("Authorization") String token, {
    @Path("hash") required String hash,
    @Query("publish") String? publish,
    @Body() required SaveListingRequest body,
  });

  @PUT("/api/v1/create/{hash}")
  Future<HttpResponse> changeListingAvailability(
    @Header("Authorization") String token, {
    @Path("hash") required String hash,
    @Query("undraft") String? reEnable,
    @Query("draft") String? upPublish,
  });

  //endregion

  //region feedback
  @POST("/api/v1/contact")
  Future<HttpResponse> sendContactUsForm(@Body() ContactUsForm contactUsForm);

  @POST("/api/v1/report/{hash}")
  Future<HttpResponse> reportListing(
    @Header("Authorization") String token,
    @Path("hash") String hash,
    @Body() ReportListingRequest requestBody,
  );

  @GET("/api/v1/report/{hash}")
  Future<HttpResponse<ReportReasonsResponse>> getReportReasons(
    @Header("Authorization") String token,
    @Path("hash") String hash,
  );

  //endregion

  //region user profile
  @GET("/api/v1/auth/me")
  Future<HttpResponse<User>> getUserProfile(
    @Header("Authorization") String token,
  );

  @GET("/api/v1/auth/resend-verification")
  Future<HttpResponse> resendVerificationEmail(
    @Header("Authorization") String token,
  );

  //region payment methods
  @GET("/api/v1/account/bank-account")
  Future<HttpResponse<List<PaymentMethod>>> getPaymentMethods(
    @Header("Authorization") String token,
  );

  @GET("/api/v1/account/payments/{key}/link")
  Future<HttpResponse<List<PaymentMethod>>> linkPaymentMethod(
    @Header("Authorization") String token, {
    @Path("key") required String key,
  });

  @GET("/api/v1/account/payments/{id}/unlink")
  Future<HttpResponse<List<PaymentMethod>>> unlinkPaymentMethod(
    @Header("Authorization") String token, {
    @Path("id") required String id,
  });

  //endregion

  //region listings
  @GET("/api/v1/account/listings")
  Future<HttpResponse<ListingsPage>> getListings(
    @Header("Authorization") String token, {
    @Query("page") required int pageNumber,
  });

  //endregion

  //region incoming orders
  @GET("/api/v1/account/orders")
  Future<HttpResponse<OrdersPage>> getIncomingOrders(
    @Header("Authorization") String token, {
    @Query("page") required int pageNumber,
  });

  //endregion

  //region my orders
  @GET("/api/v1/account/purchase-history")
  Future<HttpResponse<OrdersPage>> getMyOrders(
    @Header("Authorization") String token, {
    @Query("page") required int pageNumber,
  });

  //endregion

  //region favorites
  @GET("/api/v1/account/favorites")
  Future<HttpResponse<List<Gear>>> getFavorites(
    @Header("Authorization") String token,
  );

  @GET("/api/v1/listing/{hash}/{slug}/star")
  Future<HttpResponse> toggleFavoriteStatus(
    @Header("Authorization") String token, {
    @Path("hash") required String hash,
    @Path("slug") required String slug,
  });

  //endregion

  //endregion

  //region listing details
  @GET("/api/v1/listing/{hash}/{slug}")
  Future<HttpResponse<ListingResponse>> getListing(
    @Header("Authorization") String? token, {
    @Path("hash") required String hash,
    @Path("slug") required String slug,
    @Query("quantity") int? quantity = 1,
    @Query("shipping_option") int? shippingOptionId,
    @Query("variant") Map<String, String>? variants,
    @Query("additional_option") Map<String, int>? additionalOptions,
    @Query("additional_options_meta")
        Map<String, Map<String, int>>? additionalOptionsMeta,
    @Query("start_date") String? startDate,
    @Query("end_date") String? endDate,
    @Query("range") String? range,
  });

  @GET("/api/v1/listing/{hash}/{slug}/reviews")
  Future<HttpResponse<ReviewsResponse>> getReviews({
    @Path("hash") required String hash,
    @Path("slug") required String slug,
    @Query("page") required int pageNumber,
  });

  //endregion

  //region place order
  @GET("/api/v1/checkout/{hash}")
  Future<HttpResponse<PlaceOrderDetailsResponse>> getPlaceOrderDetails(
    @Header("Authorization") String? token, {
    @Path("hash") required String hash,
    @Query("quantity") int? quantity = 1,
    @Query("shipping_option") int? shippingOptionId,
    @Query("variant") Map<String, String>? variants,
    @Query("additional_option") Map<String, int>? additionalOptions,
    @Query("additional_options_meta")
        Map<String, Map<String, int>>? additionalOptionsMeta,
    @Query("start_date") String? startDate,
    @Query("end_date") String? endDate,
    @Query("range") String? range,
  });

  @POST("/api/v1/checkout/{hash}")
  Future<HttpResponse<PlaceOrderSessionResponse>> createPlaceOrderSession(
    @Header("Authorization") String? token, {
    @Path("hash") required String hash,
    @Body() required PlaceOrderSessionRequest body,
  });

  @GET("/api/v1/payments/{payment_key}/{session_id}")
  Future<HttpResponse> placeOrder(
    @Header("Authorization") String? token, {
    @Path("payment_key") required String paymentMethodKey,
    @Path("session_id") required String sessionId,
  });

//endregion
}
