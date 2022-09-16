import 'package:flutter/material.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';
import 'package:mms_assignment/features/homepage/domain/entities/homepage_data_entity.dart';
import 'package:mms_assignment/features/homepage/presentation/widgets/homepage_appbar.dart';
import 'package:mms_assignment/features/homepage/presentation/widgets/homepage_body.dart';
import 'package:mms_assignment/features/homepage/presentation/widgets/navigation/bottom_navigation_bar.dart';
import 'package:mms_assignment/features/homepage/presentation/widgets/navigation/navigation_drawer.dart';
import 'package:mms_assignment/features/homepage/presentation/widgets/profile_body_widget.dart';

class LoadedHomePage extends StatefulWidget {
  const LoadedHomePage({super.key, required this.homepageData});
  final HomepageDataEntity homepageData;
  @override
  State<LoadedHomePage> createState() => _LoadedHomePageState();
}

class _LoadedHomePageState extends State<LoadedHomePage> {
  int _selectedItemIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          50,
        ),
        child: HomepageAppBar(
          username: widget.homepageData.username,
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        selectedItemIndex: _selectedItemIndex,
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: CommonConstants.homeNavItem),
          BottomNavigationBarItem(
              icon: Icon(Icons.door_back_door_outlined),
              label: CommonConstants.investmentNavItem),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment_outlined),
              label: CommonConstants.paymentNavItem),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: CommonConstants.creditNavItem),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: CommonConstants.profileNavItem),
        ],
      ),
      drawer: const NavigationDrawer(),
      body: IndexedStack(
        index: _selectedItemIndex,
        children: [
          //* Page 1: Homepage
          HomepageBody(
            homepageData: widget.homepageData,
          ),
          //* Showing blank containers for other tabs
          Container(),
          Container(),
          Container(),
          const ProfilePage(),
        ],
      ),
    );
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }
}
