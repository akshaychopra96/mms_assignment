import 'package:flutter/material.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';

class HomepageAppBar extends StatelessWidget {
  const HomepageAppBar(
      {super.key, required this.onPressed, required this.username});

  final void Function()? onPressed;
  final String username;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        '${CommonConstants.homepageAppBarTitle}, $username',
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(
            Icons.notifications_none_sharp,
            color: Colors.black,
          ),
        )
      ],
      leading: GestureDetector(
          onTap: onPressed, child: const Icon(Icons.menu, color: Colors.black)),
      backgroundColor: Colors.white,
    );
  }
}
