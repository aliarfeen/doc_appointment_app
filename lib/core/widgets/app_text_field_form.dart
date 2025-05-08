import 'package:doc_appointment_app/core/theming/colors.dart';
import 'package:doc_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFieldForm extends StatelessWidget {
  //every changable attribute should be added usually to make it easier for team purpose
  final String hintText;
  final bool? isObsecured;
  final Widget? suffixIcon;
  final Function(String?) validator;
  final TextEditingController? controller;

  const AppTextFieldForm({
    super.key,
    required this.validator,
    required this.hintText,
    this.controller,
    this.isObsecured,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          return validator(value);
        },
        cursorColor: ColorsManager.mainBlue,
        obscureText: isObsecured ?? false,
        style: TextStyles.font14DarkBlueMedium,
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
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1.3),
              borderRadius: BorderRadius.circular(16)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1.3),
              borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
