import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/database/dummy_offer.dart';
import 'package:quiki/features/home_screen/controllers.dart';
import 'package:quiki/features/home_screen/widget/carousel_banner.dart';
import 'package:quiki/routes/app_routes.dart';
import 'package:quiki/theme/theme.dart';
// import 'package:quiki/routes/app_routes.dart';
import 'package:quiki/utils/size_utils.dart';

import 'widget/home_search_bar.dart';

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
        padding: commonPadding,
        controller: homeScrollController,
        child: Column(
          children: [
            HomeSearchBar(),
            gapXL,
            CarouselBanner(),
          ],
        ),
      ),
    );
  }
}
