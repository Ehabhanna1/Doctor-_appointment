

import 'package:doctor_appointment/core/networing/api_error_handler.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  // Specializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSucces( List<SpecializationsData?>? specializationDataList ) = SpecializationsSucces;
  const factory HomeState.specializationsError(ErrorHandler errorHandler) = SpecializationsError;

  // Doctors
 
   // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsError(ErrorHandler errorHandler) =
      DoctorsError;

}
