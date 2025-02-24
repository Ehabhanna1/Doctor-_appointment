import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 17.h),
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(24.r),
              // ignore: prefer_const_constructors
              image: DecorationImage(
                // ignore: prefer_const_constructors
                image: AssetImage("assets/images/home_blue_pattern.png"),
                
                fit: BoxFit.cover),
                
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Book and\n schedule with\n nearest doctor',
                 style: TextStyles.font20WhiteMedium,
                  textAlign: TextAlign.start,
                 ),
                 verticalSpace(15),
                 Expanded(
                  
                 
                   child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45),
                        
                      ),
                    ),
                    child: Text('Find Nearby',style: TextStyles.font13BlueRegular),
                    ),
                 ),
              ],
              ),
          ),
          Positioned(
            right: 16,
            top: 0,
            child: Image.asset('assets/images/doctor.png',height: 200.h,),
            ),
        ],
      ),
    );
  }
}