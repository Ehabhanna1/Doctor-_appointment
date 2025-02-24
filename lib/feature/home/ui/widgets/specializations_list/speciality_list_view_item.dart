import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theming/colors.dart';
import 'package:doctor_appointment/core/theming/styles.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityListViewItem extends StatelessWidget {

  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int? selectedSpelizationIndex;




  const SpecialityListViewItem({super.key, this.specializationsData, required this.itemIndex, this.selectedSpelizationIndex});

  @override
  Widget build(BuildContext context) {
   return Padding(
           padding: EdgeInsetsDirectional.only(
            start: itemIndex == 0 ? 0 : 22.w,
            
            ),
            child: Column(
             
              children: [
                itemIndex==selectedSpelizationIndex ?
                Container(
                  
                  decoration:  BoxDecoration(
                    border: Border.all(
                      color: ColorsManager.darkBlue,
                    ),
                    
                    shape: BoxShape.circle
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child:  SvgPicture.asset('assets/svgs/general_speciality.svg',
                    height:  42.h ,
                    width:  42.w 
                    
                    ),
                  ),
                ) :
                CircleAvatar(
                  radius: 32,
                  backgroundColor: ColorsManager.lightBlue,
                  child:  SvgPicture.asset('assets/svgs/general_speciality.svg',
                  height: 40.h,
                  width: 40.w,
                  
                  ),
                ),
                verticalSpace(8),
                Text(specializationsData?.name ?? 'General',
                
                style: itemIndex==selectedSpelizationIndex ? 
                TextStyles.font15DarkBlueMedium : TextStyles.font13GrayRegular ),
               
              ],
            ),
          );
  }
}