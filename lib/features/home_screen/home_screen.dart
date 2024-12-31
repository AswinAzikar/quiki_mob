import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/features/home_screen/controllers.dart';
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
            EdgeInsets.fromLTRB(paddingLarge, padding, paddingLarge, padding),
        controller: homeScrollController,
        child: Column(
          children: [
            SearchBar(
              leading: Icon(
                LucideIcons.search,
                color: darkGreyColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
