import 'package:dio/dio.dart' hide Headers;
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
import 'package:grab_grip/features/authentication/models/register_response/register_response.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geocode_response.dart';
import 'package:grab_grip/features/browsing/filter/models/categories_response/categories_response.dart';
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
      @Body() AuthModel registerRequest);

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
}
