import 'package:doctor_appointment/core/helpers/extensions.dart';
import 'package:doctor_appointment/core/networing/api_error_handler.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response_model.dart';
import 'package:doctor_appointment/feature/home/data/repos/home_repo.dart';
import 'package:doctor_appointment/feature/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  Future<void> getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (SpecializationsResponseModel ) {
        specializationsList =
           SpecializationsResponseModel.specializationDataList;
        getDoctorsList(specializationId: specializationsList?.first?.id);

        emit(HomeState.specializationsSucces(specializationsList));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
