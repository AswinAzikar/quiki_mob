import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/database/dummy_offer.dart';
import 'package:quiki/features/home_screen/controllers.dart';
import 'package:quiki/gen/assets.gen.dart';
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
        padding: commonPadding,
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
            ),
            gapXL,
            FlutterCarousel(
              options: FlutterCarouselOptions(
                enlargeCenterPage: true,
                height: SizeUtils.height * 0.24,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: cakeItems.map((e) {
                return Builder(
                  builder: (context) {
                    logan.d("Next Item: ${e.productName}");

                    return Padding(
                      padding: const EdgeInsets.only(left: paddingSmall),
                      child: Stack(
                        children: [
                          Container(
                            height: SizeUtils.height * 0.24,
                            width: SizeUtils.width,
                            decoration: BoxDecoration(
                              boxShadow: commonShadow,
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(paddingXL),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(paddingXL),
                              child:
                                  Image.network(e.imageUrl, fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
