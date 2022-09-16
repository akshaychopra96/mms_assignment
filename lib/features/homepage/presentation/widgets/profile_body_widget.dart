import 'package:flutter/material.dart';
import 'package:mms_assignment/common_ui/common_button.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';
import 'package:mms_assignment/features/login/presentation/pages/login_signup_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: CommonOutlinedButton(
            buttonText: CommonConstants.logoutButtonText,
            buttonColor: AppColors.blueButtonColor,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, LoginSignUpPage.routeName, (route) => false);
            },
          ),
        ),
      ),
    );
  }
}
