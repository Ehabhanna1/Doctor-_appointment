import 'package:doctor_appointment/core/theming/styles.dart';
import 'package:flutter/material.dart';
class DoctorSpeacialitySeeAll extends StatelessWidget {
  const DoctorSpeacialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: TextStyles.font19DarkBlueSemiBold
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'See All',
            style: TextStyles.font15BlueRegular
            ),
          ),
       
      ],
    );
  }
}