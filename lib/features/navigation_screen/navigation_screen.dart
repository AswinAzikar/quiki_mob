import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/features/home_screen/controllers.dart';
import 'package:quiki/features/home_screen/home_screen.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/utils/size_utils.dart';

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
    HomeScreen(),
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

  int tapIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tapIndex == 0
          ? AppBar(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deliver To",
                    style: context.latoRegular14.copyWith(fontSize: 14.h),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: SizeUtils.width / 2,
                        child: Text(
                          //TODO : need an api to fetch the place
                          //TODO : Do we need any ontap functionality to edit this address
                          "Square 1 , Binori B ,Ambili Rd, Rajasthan",
                          overflow: TextOverflow.ellipsis,
                          style: context.latoRegular14
                              .copyWith(fontSize: 14.h, color: primaryColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          : AppBar(
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: scaffoldBg),
              toolbarHeight: 0,
            ),
      drawer: tapIndex == 0 ? Drawer() : SizedBox(),
      body: PersistentTabView(
        navBarHeight: kToolbarHeight * 1.1.h,
        confineToSafeArea: true,
        padding: EdgeInsets.only(bottom: padding.h),
        hideOnScrollSettings: HideOnScrollSettings(
          hideNavBarOnScroll: true,

          scrollControllers: [
            homeScrollController,
          ],
          //TODO: attach the  scroll controllers from all  other screens,  here
        ),
        context,
        controller: _tabcontroller,
        screens: _screens,
        items: _navBarItems,
        onItemSelected: (value) {
          setState(() {
            tapIndex = value;
          });
        },
        hideNavigationBarWhenKeyboardAppears: true,
        navBarStyle: _navBarStyle,
        handleAndroidBackButtonPress: true,
      ),
    );
  }
}
