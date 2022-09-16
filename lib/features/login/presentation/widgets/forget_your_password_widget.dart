import 'package:flutter/material.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';

class ForgotYourPasswordWidget extends StatelessWidget {
  const ForgotYourPasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(CommonConstants.forgetYourPasswordClicked)));
      },
      child: const Text(
        CommonConstants.forgotPasswordText,
        style: TextStyle(
          fontSize: 12,
          color: AppColors.blueButtonColor,
        ),
      ),
    );
  }
}
