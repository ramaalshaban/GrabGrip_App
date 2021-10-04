import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
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
    _grabGripApi = GrabGripApi(_dio);
  }

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

  String _errorHandler(DioError error) {
    String aggregatedErrorMessage = "";
    final errorData = json.decode(error.response.toString());
    // when an exception occurs while registration, "errors" is not null
    if (errorData["errors"] != null) {
      if (errorData["errors"]["email"] != null) {
        aggregatedErrorMessage +=
            "\n${errorData["errors"]["email"][0] as String}";
      }
      if (errorData["errors"]["password"] != null) {
        aggregatedErrorMessage +=
            "\n${errorData["errors"]["password"][0] as String}";
      }
    }
    // when an exception occurs while logging in, "error" is not null
    else if (errorData["error"] != null) {
      aggregatedErrorMessage += "\nEntered email or password is incorrect";
    } else if (error.response!.statusCode == 401) {
      // user is unauthorized
      aggregatedErrorMessage += "\nYou are not authorized to do so";
    }
    return aggregatedErrorMessage;
  }
}
