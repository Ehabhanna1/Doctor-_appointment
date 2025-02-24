

import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networing/api_constants.dart';

import 'package:doctor_appointment/feature/home/data/models/specialization_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import 'home_api_constants.dart';
part 'home_api_service.g.dart';


@RestApi(baseUrl : ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
}
