import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:quiki/constants/constant.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  late PersistentTabController _tabcontroller;
  final bool _hideNavbar = true;

  final NavBarStyle _navBarStyle = NavBarStyle.style3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = PersistentTabController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final List<PersistentBottomNavBarItem> _navBarItems = [
    PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: darkGreyColor),
    PersistentBottomNavBarItem(
        icon: Icon(Icons.people),
        title: "user",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: darkGreyColor),
    PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: "Settings",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: darkGreyColor)
  ];

  final List<Widget> _screens = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("users"),
    ),
    Center(
      child: Text("settings"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        navBarStyle: _navBarStyle,
        context,
        screens: _screens,
        items: _navBarItems,
        stateManagement: true,
      ),
    );
  }
}
