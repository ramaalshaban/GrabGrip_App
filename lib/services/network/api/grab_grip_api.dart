import 'package:dio/dio.dart' hide Headers;
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/models/login_response/login_response.dart';
import 'package:grab_grip/features/authentication/models/register_response/register_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'grab_grip_api.g.dart';

@RestApi(baseUrl: "http://grabgrips.com/api/v1")
abstract class GrabGripApi {
  factory GrabGripApi(Dio dio) = _GrabGripApi;

  @POST("/auth/register")
  Future<HttpResponse<RegisterResponse>> register(@Body() AuthModel registerRequest);

  @POST("/auth/login")
  Future<HttpResponse<LoginResponse>> login(@Body() AuthModel registerRequest);

  @POST("/auth/logout")
  Future<HttpResponse> logout(@Header("Authorization") String token);
}
