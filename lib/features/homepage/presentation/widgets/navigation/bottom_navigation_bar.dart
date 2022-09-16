import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget(
      {super.key,
      required this.selectedItemIndex,
      required this.onTap,
      this.items});
  final int selectedItemIndex;
  final Function(int)? onTap;
  final List<BottomNavigationBarItem>? items;

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.pinned,
      snakeShape: SnakeShape.indicator,
      padding: const EdgeInsets.all(8.0),
      snakeViewColor: AppColors.blueButtonColor,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.blueGrey,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      currentIndex: selectedItemIndex,
      onTap: onTap,
      items: items,
    );
  }
}
