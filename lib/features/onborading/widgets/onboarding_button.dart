import 'package:doc_appointment_app/core/helpers/extensions.dart';
import 'package:doc_appointment_app/core/routing/routes.dart';
import 'package:doc_appointment_app/core/theming/colors.dart';
import 'package:doc_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: ColorsManager.mainBlue,
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 100.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      onPressed: () {
        context.pushNamed(Routes.logInScreen);
      },
      child: Text(
        'Get Started',
        style: TextStyles.font24WhiteBold.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
