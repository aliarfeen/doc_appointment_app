import 'package:doc_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingDoctorIntro extends StatelessWidget {
  const OnBoardingDoctorIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80.h, bottom: 30.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Opacity(
              opacity: 0.2,
              child: SvgPicture.asset(
                'assets/svgs/docdoc_logo.svg',
                height: 280.h,
              ),
            ),
          ),
          Container(
            height: 400.h,
            width: 400.w,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.15, 0.4],
              ),
            ),
            child: Image.asset(
              'assets/images/onboarding_doctor.png',
              height: 400.h,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Text(
              'Find your doctor\nand book an appointment',
              textAlign: TextAlign.center,
              style: TextStyles.font24BlueBold.copyWith(
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
