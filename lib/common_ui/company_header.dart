import 'package:flutter/material.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';

class CompanyHeader extends StatelessWidget {
  const CompanyHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: CommonConstants.companyFirstName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.blueButtonColor,
            fontSize: 30,
          ),
          children: [
            TextSpan(
              text: CommonConstants.companySecondName.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: AppColors.companyFianceColor,
              ),
            ),
          ]),
    );
  }
}
