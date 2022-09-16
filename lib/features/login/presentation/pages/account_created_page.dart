import 'package:flutter/material.dart';
import 'package:mms_assignment/common_ui/common_button.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';
import 'package:mms_assignment/features/homepage/presentation/pages/homepage.dart';

class AccountCreatedPage extends StatelessWidget {
  const AccountCreatedPage({super.key});
  static const String routeName = CommonConstants.accountCreatedPageRouteName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Transform.scale(
              scale: 1.1,
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                // size: 25,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              CommonConstants.accountCreatedText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(CommonConstants.accountCreatedDescText),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(CommonConstants.clickContinueDescText),
            ),
            const Text(CommonConstants.clickContinueDescText2),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: CommonOutlinedButton(
                  buttonText: CommonConstants.continueButtonText,
                  buttonColor: AppColors.blueButtonColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Homepage.routeName, (route) => false);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
