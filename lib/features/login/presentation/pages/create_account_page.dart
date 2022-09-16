import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mms_assignment/common_ui/common_button.dart';
import 'package:mms_assignment/common_ui/company_header.dart';
import 'package:mms_assignment/common_ui/custom_text_field.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';
import 'package:mms_assignment/features/login/presentation/pages/account_created_page.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});
  static const String routeName = CommonConstants.createAccountPageRouteName;

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Transform.scale(
              scale: 1.5,
              child: const Icon(
                Icons.chevron_left_sharp,
                color: Colors.black,
                // size: 25,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CompanyHeader(),
                CustomTextField(
                  hintText: CommonConstants.firstNameHintText,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return CommonConstants.firstNameErrorMsg;
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  hintText: CommonConstants.middleNameHintText,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return CommonConstants.middleNameErrorMsg;
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  hintText: CommonConstants.lastNameHintText,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return CommonConstants.lastNameErrorMsg;
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  hintText: CommonConstants.dateOfBirthHintText,
                  keyboardType: TextInputType.datetime,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return CommonConstants.dateOfBirthErrorMsg;
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  hintText: CommonConstants.confirmPasswordMsg,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (value) {
                    if (value != null && (value.isEmpty || value.length < 4)) {
                      return CommonConstants.confirmPasswordErrorMsg;
                    }
                    return null;
                  },
                ),
                CustomTextField(
                  hintText: CommonConstants.phoneNumberText,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value != null &&
                        (value.isEmpty || value.length != 10)) {
                      return CommonConstants.phoneNumberErrorMsg;
                    }
                    return null;
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r"[0-9]"),
                    )
                  ],
                ),
                CustomTextField(
                  hintText: CommonConstants.genderText,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return CommonConstants.genderErrorMsg;
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 20.0),
                  child: CommonOutlinedButton(
                      buttonText: CommonConstants.createAccountButtonText,
                      buttonColor: AppColors.blueButtonColor,
                      textColor: Colors.white,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(
                              context, AccountCreatedPage.routeName);
                        }
                      }),
                ),
                SizedBox(
                  width: 250,
                  child: RichText(
                    text: TextSpan(
                        text: CommonConstants.termsAndConditionsDesc1,
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: CommonConstants.termsAndConditionsDesc2,
                            style: const TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(CommonConstants
                                            .termsAndConditionsDesc3)));
                                // Single tapped.
                              },
                          ),
                        ]),
                  ),
                ),
                // const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
