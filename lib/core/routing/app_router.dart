import 'package:doc_appointment_app/core/routing/routes.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/login_screen.dart';
import 'package:doc_appointment_app/features/onborading/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.logInScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => SnackBar(
            content: Text('data'),
          ),
        );
    }
  }
}
