import 'package:dio/dio.dart';
import 'package:doc_appointment_app/core/networking/api_service.dart';
import 'package:doc_appointment_app/core/networking/dio_factory.dart';
import 'package:doc_appointment_app/features/login/data/repos/login_repo.dart';
import 'package:doc_appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Register Dio instance & ApiService
  // This is a singleton instance of Dio that will be used throughout the app.
  // The ApiService is a Retrofit service that uses Dio for network calls.
  // It is registered as a lazy singleton, meaning it will only be created when it's first accessed.
  // The ApiService is used to make network requests to the API.
  // The DioFactory is a custom class that creates and configures the Dio instance.
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
// login repo
  // The LoginRepo is a repository class that handles the login logic.
  // It is registered as a lazy singleton, meaning it will only be created when it's first accessed.
  // The LoginCubit is a state management class that uses the LoginRepo to manage the login state.

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
