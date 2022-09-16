import 'package:flutter/material.dart';

class CommonOutlinedButton extends StatelessWidget {
  const CommonOutlinedButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
  });
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: buttonColor,
          side: const BorderSide(width: 0.8, color: Colors.black),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
