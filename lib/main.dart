import 'package:doc_appointment_app/core/di/dependency_injection.dart';
import 'package:doc_appointment_app/core/routing/app_router.dart';
import 'package:doc_appointment_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
