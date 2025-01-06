import 'package:flutter/material.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/database/recomended_items.dart';

import 'package:quiki/features/home_screen/controllers.dart';
import 'package:quiki/features/home_screen/widget/carousel_banner.dart';
import 'package:quiki/features/home_screen/widget/category_group.dart';
import 'package:quiki/theme/theme.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeSearchBar(),
            gapXL,
            CarouselBanner(),
            gap,
            Text(
              "Categories",
              style: context.latoBold20.copyWith(fontSize: 20.fSize),
            ),
            gapLarge,
            CategoryGroup(),
            gap,
            Text(
              "Recommended",
              style: context.latoBold20.copyWith(fontSize: 20.fSize),
            ),
            gapLarge,
            SizedBox(
              height: SizeUtils.height * .6,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: paddingLarge,
                crossAxisSpacing: paddingLarge,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                children: recommendedItems.map((item) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(paddingLarge),
                      border: Border.all(color: darkGreyColor),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(paddingLarge),
                            topRight: Radius.circular(paddingLarge),
                          ),
                          child: Image.network(
                            item.imageUrl,
                            fit: BoxFit.cover,
                            height: SizeUtils.height * .17,
                            width: double.infinity,
                            errorBuilder: (context, error, stackTrace) {
                              return Center(
                                child: Icon(Icons.error, color: Colors.red),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(paddingLarge),
                                bottomRight: Radius.circular(paddingLarge),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  item.productName,
                                  style: context.latoBold20
                                      .copyWith(fontSize: 16.fSize),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  item.category,
                                  style: context.latoRegular16
                                      .copyWith(color: darkGreyColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
