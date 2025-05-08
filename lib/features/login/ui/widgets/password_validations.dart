import 'package:doc_appointment_app/core/helpers/spacers.dart';
import 'package:doc_appointment_app/core/theming/colors.dart';
import 'package:doc_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PassWordValidations extends StatelessWidget {
  final bool hasLowerCase,
      hasUpperCase,
      hasSpecialCharacters,
      hasNumber,
      hasMinLength;
  const PassWordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //gonna optimze it later
        _buildValidationItem("Has 1 lower case letter", hasLowerCase),

        _buildValidationItem("Has 1 upper case letter", hasUpperCase),

        _buildValidationItem("Has 1 special Character", hasSpecialCharacters),

        _buildValidationItem("Has 1 number", hasNumber),

        _buildValidationItem("Has 8+ letters", hasMinLength),
      ],
    );
  }

  Widget _buildValidationItem(String text, bool isValidated) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 2.5,
              backgroundColor: isValidated ? Colors.green : Colors.white,
            ),
            horizontalSpacer(6),
            Text(
              text,
              style: TextStyles.font13DarkBlueRegular.copyWith(
                decoration: isValidated ? TextDecoration.lineThrough : null,
                decorationColor: Colors.green,
                decorationThickness: 2,
                color: isValidated ? Colors.green : Colors.white,
              ),
            )
          ],
        ),
        verticalSpacer(8.h)
      ],
    );
  }
}
