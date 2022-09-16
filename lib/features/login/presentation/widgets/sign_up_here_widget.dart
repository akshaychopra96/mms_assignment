import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';
import 'package:mms_assignment/features/login/presentation/pages/create_account_page.dart';

class SignUpHereWidget extends StatelessWidget {
  const SignUpHereWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: CommonConstants.doNotHaveAccountText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
        children: [
          TextSpan(
            text: CommonConstants.signUpHereText,
            style: const TextStyle(
              color: AppColors.blueButtonColor,
              fontSize: 12,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, CreateAccountPage.routeName);
              },
          ),
        ],
      ),
    );
  }
}
