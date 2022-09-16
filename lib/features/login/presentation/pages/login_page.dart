import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mms_assignment/common_ui/common_button.dart';
import 'package:mms_assignment/common_ui/company_header.dart';
import 'package:mms_assignment/common_ui/custom_text_field.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';
import 'package:mms_assignment/features/homepage/presentation/pages/homepage.dart';
import 'package:mms_assignment/features/login/presentation/widgets/forget_your_password_widget.dart';
import 'package:mms_assignment/features/login/presentation/widgets/row_with_checkbox.dart';
import 'package:mms_assignment/features/login/presentation/widgets/sign_up_here_widget.dart';

//TODO Mention username password in email

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String routeName = CommonConstants.loginPageRouteName;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));

    TextEditingController phoneController = TextEditingController();
    TextEditingController pinController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Transform.translate(
          offset: const Offset(0, 120),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CompanyHeader(),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: CustomTextField(
                    controller: phoneController,
                    hintText: CommonConstants.phoneNumberHintText,
                    keyboardType: TextInputType.number,
                  ),
                ),
                CustomTextField(
                  controller: pinController,
                  hintText: CommonConstants.pinHintText,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      RowWithCheckBox(),
                      ForgotYourPasswordWidget()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: CommonOutlinedButton(
                    buttonText: CommonConstants.signInText,
                    buttonColor: AppColors.blueButtonColor,
                    textColor: Colors.white,
                    onPressed: () async {
                      if (isValidCredentials(
                          phoneController.text, pinController.text)) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, Homepage.routeName, (route) => false);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(CommonConstants.invalidCredentials),
                          ),
                        );
                      }
                    },
                  ),
                ),
                const SignUpHereWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isValidCredentials(String phoneNumber, String pin) {
    if (phoneNumber.isEmpty || pin.isEmpty) {
      return false;
    }
    return phoneNumber == CommonConstants.testLoginPhoneNumber &&
        pin == CommonConstants.testLoginPin;
  }
}
