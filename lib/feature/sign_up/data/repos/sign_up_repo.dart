


import 'package:doctor_appointment/core/networing/api_error_handler.dart';
import 'package:doctor_appointment/core/networing/api_result.dart';
import 'package:doctor_appointment/core/networing/api_service.dart';
import 'package:doctor_appointment/feature/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_appointment/feature/sign_up/data/models/sign_up_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}