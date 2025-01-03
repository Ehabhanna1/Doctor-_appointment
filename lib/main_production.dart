
import 'package:doctor_appointment/core/routing/app_router.dart';
import 'package:doctor_appointment/doc_app.dart';
import 'package:doctor_appointment/core/di_injection/dependecy_injection.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async{
 setupGetIt();
 // to fix texts being hidden font bug in flutter_screenutil in release mode
 await ScreenUtil.ensureScreenSize();
  runApp( DocApp(
    appRouter: AppRouter(), 
  ));
}
