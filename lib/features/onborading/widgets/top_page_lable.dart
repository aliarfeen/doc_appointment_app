import 'package:doc_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopPageLable extends StatelessWidget {
  const TopPageLable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/docdoc_logo.svg',
          height: 50,
        ),
        Text(
          'DocDoc',
          style: TextStyles.font24WhiteBold,
        ),
      ],
    );
  }
}
