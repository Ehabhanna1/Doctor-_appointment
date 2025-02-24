import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/feature/home/logic/cubit/home_cubit.dart';
import 'package:doctor_appointment/feature/home/ui/home_screen.dart';
import 'package:doctor_appointment/feature/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment/feature/login/ui/login_screen.dart';
import 'package:doctor_appointment/feature/onboarding/onBoarding_screen.dart';
import 'package:doctor_appointment/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:doctor_appointment/feature/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di_injection/dependecy_injection.dart';

class AppRouter {
  Route? genrateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
   // final arguments = settings.arguments;

     switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) =>  OnBoardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const HomeScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
