import 'package:doctor_appointment/core/theming/colors.dart';
import 'package:doctor_appointment/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello,Ehab !',
            style: TextStyles.font18DarkBlueBold,
          ),
          Text(
            'How are you today?',
            style: TextStyles.font14DarkBlueRegular,
          ),
          
         
        ],
       ),
        const Spacer(),
         CircleAvatar(
            radius: 24,
            backgroundColor: ColorsManager.moreLighterGray,
            child: SvgPicture.asset(
              'assets/svgs/notification.svg',
              
            ),
          )

       
      ],
    );
  }
}