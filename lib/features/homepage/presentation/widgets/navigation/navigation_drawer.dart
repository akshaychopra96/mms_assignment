import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(children: const [
        SafeArea(
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                'Navigation Drawer',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
