import 'package:doctor_appointment/core/networing/api_error_handler.dart';
import 'package:doctor_appointment/core/networing/api_result.dart';
import 'package:doctor_appointment/core/networing/api_service.dart';
import 'package:doctor_appointment/feature/login/data/models/login_request_body.dart';
import 'package:doctor_appointment/feature/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errror) {
      return ApiResult.failure(ErrorHandler.handle(errror));
    }
  }
}
