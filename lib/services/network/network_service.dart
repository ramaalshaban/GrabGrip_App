import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/services/network/api/grab_grip_api.dart';
import 'package:multiple_result/multiple_result.dart';

class NetworkService {
  static final NetworkService _retrofit = NetworkService._internal();
  late final GrabGripApi _grabGripApi;

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
  Future<Result<String, BrowseModel>> browse() async {
    try {
      final browseCall = await _grabGripApi.browse();

      return Success(browseCall.data);
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
      // no internet connection, so return an empty string
      return "";
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
