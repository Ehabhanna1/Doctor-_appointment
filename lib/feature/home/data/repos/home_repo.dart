import 'package:doctor_appointment/core/networing/api_error_handler.dart';
import 'package:doctor_appointment/core/networing/api_result.dart';
import 'package:doctor_appointment/feature/home/data/apis/home_api_service.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService); 
  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}