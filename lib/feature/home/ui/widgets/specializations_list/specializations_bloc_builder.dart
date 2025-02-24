import 'package:doctor_appointment/feature/home/logic/cubit/home_cubit.dart';
import 'package:doctor_appointment/feature/home/logic/cubit/home_state.dart';
import 'package:doctor_appointment/feature/home/ui/widgets/specializations_list/speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSucces ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            // ignore: prefer_const_constructors
            return  setupLoading();
          },
          specializationsSucces: (specializationDataList) {
              var specializationsList = specializationDataList;
              return setupSuccess(specializationsList);
          },
          specializationsError: (errorHandler) {
            return setupError();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const SizedBox(
      height: 100,
       child: Center(
        child: CircularProgressIndicator(),
      ),);
  }
  Widget setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationDataList: specializationsList ?? [],
    
                );
  }
  Widget setupError() {
    return const SizedBox.shrink();
  }

}
