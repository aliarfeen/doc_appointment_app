import 'package:doc_appointment_app/core/helpers/spacers.dart';
import 'package:doc_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child: Text(
            'Welcome to Doc Appointment',
            style: TextStyles.font24BlueBold,
          ),
        ),
        verticalSpacer(20.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Book your appointment with the best doctors in town.',
            style: TextStyles.font14LightGrayRegular,
          ),
        ),
        verticalSpacer(32.h),
        // Add more widgets here as needed
      ],
    ));
  }
}
