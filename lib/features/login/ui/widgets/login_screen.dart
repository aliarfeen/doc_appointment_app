import 'package:doc_appointment_app/core/helpers/spacers.dart';
import 'package:doc_appointment_app/core/theming/styles.dart';
import 'package:doc_appointment_app/core/widgets/app_text_button.dart';
import 'package:doc_appointment_app/core/widgets/app_text_field_form.dart';
import 'package:doc_appointment_app/features/login/data/models/login_request_body.dart';
import 'package:doc_appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/email_and_password.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/you_have_acc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // bool isObsecure = true;

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
                EmailAndPassword(),
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
                  onPressed: () {
                    _validateThemSubmit(context);
                  },
                ),
                verticalSpacer(16),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Column(
                    children: [
                      TermsAndConditionsText(),
                      verticalSpacer(32),
                      DontHaveAccountText(),
                      LoginBlocListener(),
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

  void _validateThemSubmit(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoadingState(
            LoginRequestBody(
                email: context.read<LoginCubit>().emailController.text,
                password: context.read<LoginCubit>().passwordController.text),
          );
    }
  }
}
