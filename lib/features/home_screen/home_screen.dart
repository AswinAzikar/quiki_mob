import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/features/home_screen/controllers.dart';
import 'package:quiki/features/home_screen/widget/carousel_banner.dart';
import 'package:quiki/gen/assets.gen.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/utils/size_utils.dart';
// import 'package:quiki/routes/app_routes.dart';

import 'widget/home_search_bar.dart';
import 'widget/svg_round_widgets.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeSearchBar(),
            gapXL,
            CarouselBanner(),
            gap,
            Text(
              "Categories",
              style: context.latoBold20,
            ),
            gapLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgRoundWidgets(
                  onTap: () {},
                  label: 'Cakes',
                  svgString: Assets.svgs.cakeCat,
                ),
                SvgRoundWidgets(
                  onTap: () {},
                  label: 'Gifts',
                  svgString: Assets.svgs.giftsCat,
                ),
                SvgRoundWidgets(
                  onTap: () {},
                  label: 'Props',
                  svgString: Assets.svgs.propCat,
                ),
                SvgRoundWidgets(
                  onTap: () {},
                  label: 'Beverages',
                  svgString: Assets.svgs.beverageCat,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
