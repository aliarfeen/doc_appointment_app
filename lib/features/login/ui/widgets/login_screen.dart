import 'package:doc_appointment_app/core/helpers/spacers.dart';
import 'package:doc_appointment_app/core/theming/styles.dart';
import 'package:doc_appointment_app/core/widgets/app_text_button.dart';
import 'package:doc_appointment_app/core/widgets/app_text_field_form.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/you_have_acc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpacer(8.h),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14LightGrayRegular,
                ),
                verticalSpacer(32.h),
                AppTextFieldForm(hintText: 'Email'),
                AppTextFieldForm(
                  hintText: 'Password',
                  isObsecured: isObsecure,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          isObsecure = !isObsecure;
                        },
                      );
                    },
                    child: Icon(
                        isObsecure ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    'Forgot password?',
                    style: TextStyles.font13BlueRegular,
                  ),
                ),
                verticalSpacer(16),
                AppTextButton(
                  buttonText: 'Log in',
                  textStyle: TextStyles.font18WhiteMedium,
                  onPressed: () {},
                ),
                verticalSpacer(16),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Column(
                    children: [
                      TermsAndConditionsText(),
                      verticalSpacer(32),
                      DontHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
