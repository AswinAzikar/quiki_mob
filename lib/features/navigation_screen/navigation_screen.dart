import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:quiki/constants/constant.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  late PersistentTabController _tabcontroller;

  final NavBarStyle _navBarStyle = NavBarStyle.style3;

  @override
  void initState() {
    super.initState();
    _tabcontroller = PersistentTabController();
  }

  final List<PersistentBottomNavBarItem> _navBarItems = [
    PersistentBottomNavBarItem(
        scrollController: ScrollController(keepScrollOffset: true),
        icon: Icon(LucideIcons.house),
        title: "Home",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: navGrey),
    PersistentBottomNavBarItem(
        scrollController: ScrollController(keepScrollOffset: true),
        icon: Icon(LucideIcons.binoculars),
        title: "Explore",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: navGrey),
    PersistentBottomNavBarItem(
        icon: Icon(LucideIcons.heart),
        title: "Wishlist",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: navGrey),
    PersistentBottomNavBarItem(
        scrollController: ScrollController(keepScrollOffset: true),
        icon: Icon(LucideIcons.package),
        title: "Orders",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: navGrey),
    PersistentBottomNavBarItem(
        scrollController: ScrollController(keepScrollOffset: true),
        icon: Icon(LucideIcons.userRound),
        title: "Profile",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: navGrey),
  ];

  final List<Widget> _screens = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Explore"),
    ),
    Center(
      child: Text("Wishlist"),
    ),
    Center(
      child: Text("Orders"),
    ),
    Center(
      child: Text("Profile"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        hideOnScrollSettings: HideOnScrollSettings(hideNavBarOnScroll: true

            //TODO: attach the  scroll controllers  here

            ),
        context,
        controller: _tabcontroller,
        screens: _screens,
        items: _navBarItems,
        hideNavigationBarWhenKeyboardAppears: true,
        navBarStyle: _navBarStyle,
        handleAndroidBackButtonPress: true,
      ),
    );
  }
}
