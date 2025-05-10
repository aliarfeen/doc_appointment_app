import 'package:doc_appointment_app/core/helpers/regex.dart';
import 'package:doc_appointment_app/core/widgets/app_text_field_form.dart';
import 'package:doc_appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointment_app/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObsecured = true;

  bool hasLowerCase = false,
      hasUpperCase = false,
      hasSpecialCharacters = false,
      hasNumber = false,
      hasMinLength = false;
  late TextEditingController passwordController, emailController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerlistener();
  }

  void setupPasswordControllerlistener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFieldForm(
              hintText: 'Email',
              controller: context.read<LoginCubit>().emailController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return "Please enter valid Email";
                }
              },
            ),
            AppTextFieldForm(
              controller: context.read<LoginCubit>().passwordController,
              //we ddnt complete validator here (here's ur check point)
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter valid Password";
                }
              },
              hintText: 'Password',
              isObsecured: isObsecured,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      isObsecured = !isObsecured;
                    },
                  );
                },
                child:
                    Icon(isObsecured ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            PassWordValidations(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
          ],
        ));
  }

  @override
  void dispose() {
    passwordController.removeListener(() {});
    super.dispose();
  }
}
