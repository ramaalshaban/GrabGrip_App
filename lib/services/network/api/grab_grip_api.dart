import 'dart:io';
import 'package:dio_http/dio_http.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
import 'package:grab_grip/features/authentication/models/register_response/register_response.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geocode_response.dart';
import 'package:grab_grip/features/browsing/filter/models/categories_response/categories_response.dart';
import 'package:grab_grip/features/feedback/contact_us/models/contact_us/contact_us_form.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_as_draft_request/post_listing_as_draft_request.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_response/post_listing_response.dart';
import 'package:grab_grip/features/post_listing/models/pricing_models_response/pricing_models_response.dart';
import 'package:grab_grip/features/post_listing/models/save_listing_request/save_listing_request.dart';
import 'package:grab_grip/features/user_profile/models/user.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'grab_grip_api.g.dart';

@RestApi(baseUrl: "https://grabgrips.com")
abstract class GrabGripApi {
  factory GrabGripApi(Dio dio, {String baseUrl}) = _GrabGripApi;

  //region auth requests
  @POST("/api/v1/auth/register")
  Future<HttpResponse<RegisterResponse>> register(
    @Body() AuthModel registerRequest,
  );

  @POST("/api/v1/auth/login")
  Future<HttpResponse<LoginResponse>> login(@Body() AuthModel registerRequest);

  @POST("/api/v1/auth/logout")
  Future<HttpResponse> logout(@Header("Authorization") String token);

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

  @GET("/json")
  Future<HttpResponse<GeocodeResponse>> getBoundsByPlaceId({
    @Query("key") String googleApiKey = googleApiKey,
    @Query("place_id") required String placeId,
  });

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
  Future<HttpResponse<PostListingResponse>> postListingAsDraft(
    @Header("Authorization") String token,
    @Body() PostListingAsDraftRequest postListingRequest,
  );

  @PUT("/api/v1/create/{hash}")
  Future<HttpResponse> saveListing(
    @Header("Authorization") String token, {
    @Path("hash") required String hash,
    @Body() required SaveListingRequest body,
  });

  @PUT("/api/v1/create/{hash}")
  Future<HttpResponse> changeListingAvailability(
    @Header("Authorization") String token, {
    @Path("hash") required String hash,
    @Query("publish") String? publish,
    @Query("undraft") String? reEnable,
    @Query("draft") String? upPublish,
  });

  //endregion

  //region feedback
  @POST("/api/v1/contact")
  Future<HttpResponse> sendContactUsForm(@Body() ContactUsForm contactUsForm);

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

//endregion
}
