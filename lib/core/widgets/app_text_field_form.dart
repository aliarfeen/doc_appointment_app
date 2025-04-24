import 'package:doc_appointment_app/core/theming/colors.dart';
import 'package:doc_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFieldForm extends StatelessWidget {
  //every changable attribute should be added usually to make it easier for team purpose
  final String hintText;
  final bool? isObsecured;
  final Widget? suffixIcon;

  const AppTextFieldForm({
    super.key,
    this.isObsecured,
    this.suffixIcon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        cursorColor: ColorsManager.mainBlue,
        obscureText: isObsecured ?? false,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          suffixIcon: suffixIcon,
          suffixIconColor: ColorsManager.mainBlue,
          fillColor: ColorsManager.darkerGray,
          hintText: hintText,
          hintStyle: TextStyles.font14LightGrayRegular,
          contentPadding:
              EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorsManager.gray, width: 1.3),
          ),
        ),
      ),
    );
  }
}
