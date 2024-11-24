import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/utils/size_utils.dart';
import '../../gen/assets.gen.dart';

class PlateScreen extends StatefulWidget {
  const PlateScreen({super.key});

  @override
  State<PlateScreen> createState() => _PlateScreenState();
}

class _PlateScreenState extends State<PlateScreen> {
  final List<String> plateText = [
    "Get delivery at your doorstep.",
    "Just Quikki"
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          const Scaffold(),
          Image.asset(
            Assets.pngs.plateScreen.path,
            width: SizeUtils.width,
            fit: BoxFit.fill,
          ),
          Positioned(
            left: padding,
            top: paddingLarge,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Skip",
                style: context.latoRegular
                    .copyWith(color: primaryColor, fontSize: 14),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: SizeUtils.height / 2.3,
              width: SizeUtils.width,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(paddingXXL),
                ),
              ),
              child: Column(
                children: [
                  CarouselSlider(
                    items: plateText.map((text) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: paddingLarge.h),
                            child: Text(
                              text,
                              style: context.latoBold.copyWith(
                                fontSize: 44.fSize,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          );
                        },
                      );
                    }).toList(),
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      viewportFraction: 1.0,
                      //  height: SizeUtils.height / 5,
                      aspectRatio: 16 / 9,
                      initialPage: 0,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: plateText.asMap().entries.map((entry) {
                      return Container(
                        width: _currentIndex == entry.key ? 12.0 : 8.0,
                        height: _currentIndex == entry.key ? 12.0 : 8.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == entry.key
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
