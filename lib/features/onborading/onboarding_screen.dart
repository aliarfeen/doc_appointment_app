import 'package:doc_appointment_app/features/onborading/widgets/onboardin_doctor_intro.dart';
import 'package:doc_appointment_app/features/onborading/widgets/onboarding_button.dart';
import 'package:doc_appointment_app/features/onborading/widgets/top_page_lable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doc_appointment_app/core/theming/styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            TopPageLable(),
            OnBoardingDoctorIntro(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: TextStyles.font13GrayRegular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h),
                  const OnboardingButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
