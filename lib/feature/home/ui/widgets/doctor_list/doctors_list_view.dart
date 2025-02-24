import 'package:doctor_appointment/feature/home/data/models/specialization_response_model.dart';
import 'package:doctor_appointment/feature/home/ui/widgets/doctor_list/doctor_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {

  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
         // ignore: prefer_const_constructors
         return DoctorListViewItem(
            doctorsModel: doctorsList?[index],
         );
        },
      ),
    );
  }
}
