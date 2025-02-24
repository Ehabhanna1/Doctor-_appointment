import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networing/api_service.dart';
import 'package:doctor_appointment/core/networing/dio_factory.dart';
import 'package:doctor_appointment/feature/home/data/apis/home_api_service.dart';
import 'package:doctor_appointment/feature/home/data/repos/home_repo.dart';
import 'package:doctor_appointment/feature/login/data/repos/login_repo.dart';
import 'package:doctor_appointment/feature/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment/feature/sign_up/data/repos/sign_up_repo.dart';
import 'package:doctor_appointment/feature/sign_up/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(
    () => ApiService(dio),
  );

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));


  //home
   getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
 // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
 
 



  
}
