import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/features/home_screen/controllers.dart';
import 'package:quiki/features/search_screen/search_screen.dart';
import 'package:quiki/routes/app_routes.dart';
// import 'package:quiki/routes/app_routes.dart';
import 'package:quiki/utils/size_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding:
            commonPadding,
        controller: homeScrollController,
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context, rootNavigator: true)
                  .pushNamed(AppRoute.searchScreen),
              child: SearchBar(
                hintStyle: WidgetStatePropertyAll(TextStyle(fontSize: 14.h)),
                hintText: "Search for Cakes, Props and more",
                enabled: false,
                leading: Icon(
                  LucideIcons.search,
                  color: darkGreyColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
