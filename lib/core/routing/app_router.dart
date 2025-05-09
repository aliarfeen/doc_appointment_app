import 'package:doc_appointment_app/core/routing/routes.dart';
import 'package:doc_appointment_app/core/di/dependency_injection.dart';

import 'package:doc_appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/login_screen.dart';
import 'package:doc_appointment_app/features/onborading/onboarding_screen.dart';
import 'package:doc_appointment_app/features/home/widgets/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.logInScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      default:
        return MaterialPageRoute(
          builder: (_) => SnackBar(
            content: Text('data'),
          ),
        );
    }
  }
}
