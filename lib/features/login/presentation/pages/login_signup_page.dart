import 'package:flutter/material.dart';
import 'package:mms_assignment/common_ui/common_button.dart';
import 'package:mms_assignment/common_ui/company_header.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';
import 'package:mms_assignment/features/login/presentation/pages/create_account_page.dart';
import 'package:mms_assignment/features/login/presentation/pages/login_page.dart';

class LoginSignUpPage extends StatelessWidget {
  const LoginSignUpPage({super.key});
  static const String routeName = CommonConstants.loginSignUpPageRouteName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Spacer(),
          const Spacer(),
          const CompanyHeader(),
          const Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
            child: CommonOutlinedButton(
                buttonText: CommonConstants.openAnAccountText,
                buttonColor: AppColors.blueButtonColor,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, CreateAccountPage.routeName);
                }),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 100.0, left: 24.0, right: 24.0),
            child: CommonOutlinedButton(
                buttonText: CommonConstants.signInText,
                buttonColor: Colors.white,
                textColor: AppColors.blueButtonColor,
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.routeName);
                }),
          ),
        ],
      ),
    );
  }
}
