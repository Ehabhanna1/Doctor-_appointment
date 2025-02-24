import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theming/styles.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin:  EdgeInsets.only(bottom: 16.h),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
             
              borderRadius: BorderRadius.circular(24),
              
                ),
             
          
            child: Row(
              children: [
               ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child:Image.asset('assets/images/general_doctor.png',
                  height: 140.h,width: 110.w,
                  fit: BoxFit.cover,
                  
                  ),
               ),
                 horizontalSpace(16),
                // ignore: prefer_const_constructors
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorsModel?.name ?? 'Dr. Name',
                        style: TextStyles.font18DarkBlueBold,
                      ),
                      verticalSpace(6),
                      Text(
                        '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                        style: TextStyles.font13GrayRegular,
                      ),
                      verticalSpace(6),
                      Text(
                        doctorsModel?.email ?? 'Email',
                        style: TextStyles.font13GrayRegular,
                      ),
                    ],
                  ),
                ),
              ],
            ),

          );
  }
}