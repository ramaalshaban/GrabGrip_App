import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geocode_response.dart';
import 'package:grab_grip/features/browsing/filter/models/categories_response/categories_response.dart';
import 'package:grab_grip/features/browsing/filter/models/filter_sort_model/filter_sort_model.dart';
import 'package:grab_grip/features/feedback/contact_us/models/contact_us/contact_us_form.dart';
import 'package:grab_grip/features/post_listing/models/pricing_models_response/pricing_models_response.dart';
import 'package:grab_grip/services/network/api/grab_grip_api.dart';
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
    _googleGeocodeApi = GrabGripApi(_dio,
        baseUrl: "https://maps.googleapis.com/maps/api/geocode");
  }

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

  //endregion

  //region post a listing
  Future<Result<String, PricingModelsResponse>> getPricingModels(
  String token , int categoryId, ) async {
    try {
      final getPricingModelsCall =
          await _grabGripApi.getPricingModels("Bearer $token" ,categoryId: categoryId);
      return Success(getPricingModelsCall.data);
    } catch (error) {
      final errorMessage = _errorHandler(error as DioError);
      return Error(errorMessage);
    }
  }

  //endregion

  //region feedback
  Future<Result<String, String>> sendContactUsForm(
      ContactUsForm contactUsForm) async {
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
    if (errorData["errors"] != null) {
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
    }
    // when an exception occurs while logging in, "error" is not null
    else if (errorData["error"] != null) {
      aggregatedErrorMessage += "Entered email or password is incorrect";
    } else if (error.response!.statusCode == 401) {
      // user is unauthorized
      aggregatedErrorMessage += "You are not authorized to do so";
    }
    return aggregatedErrorMessage;
  }
//endregion
}
