import 'package:doc_appointment_app/core/routing/app_router.dart';
import 'package:doc_appointment_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Doctor Appointment App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(
            useMaterial3: true,
          ).copyWith(
            scaffoldBackgroundColor: Colors.black,
          ),
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.onBoardingScreen,
        );
      },
    );
  }
}
