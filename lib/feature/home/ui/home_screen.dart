import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/feature/home/ui/widgets/doctor_list/doctor_bloc_builder.dart';
import 'package:doctor_appointment/feature/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:doctor_appointment/feature/home/ui/widgets/home_top_bar.dart';
import 'package:doctor_appointment/feature/home/ui/widgets/specializations_list/specializations_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment/feature/home/ui/widgets/doctors_blue_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorSpeacialitySeeAll(),
              verticalSpace(16),
             const SpecializationsBlocBuilder(),
             verticalSpace(8),
             const DoctorsBlocBuilder(),
              
            ],
          ),
        ),
      ),
    );
  }
}
