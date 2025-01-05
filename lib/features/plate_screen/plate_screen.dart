import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/routes/app_routes.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/utils/size_utils.dart';
import 'package:quiki/widgets/loading_button.dart';
import '../../gen/assets.gen.dart';

class PlateScreen extends StatefulWidget {
  const PlateScreen({super.key});

  @override
  State<PlateScreen> createState() => _PlateScreenState();
}

class _PlateScreenState extends State<PlateScreen> {
  //TODO : Change the plate Text Later
  final List<String> plateText = [
    "Get delivery at your doorstep.",
    "Just Quikki",
    "I'm Batman"
  ];

  int _currentIndex = 0;

  final CarouselSliderController _carouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Do you want to Quit?",
                      style: context.latoBold.copyWith(fontSize: 20.fSize),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: SizeUtils.width * 0.23,
                          child: LoadingButton(
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "No",
                                  style: context.latoBold20.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.of(context).pop(); // Close dialog
                            },
                          ),
                        ),
                        gapLarge,
                        SizedBox(
                          width: SizeUtils.width * 0.23,
                          child: LoadingButton(
                            color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Yes",
                                  style: context.latoBold20.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              if (Platform.isAndroid) {
                                SystemNavigator.pop();
                              } else if (Platform.isIOS) {
                                exit(0);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );

        // showModalBottomSheet(
        //   context: context,
        //   builder: (context) => Container(
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(40.h),
        //         topRight: Radius.circular(40.h),
        //       ),
        //     ),
        //     height: SizeUtils.height * 0.3,
        //     width: SizeUtils.width,
        //     padding: const EdgeInsets.all(paddingLarge),
        //     child: Column(
        //       mainAxisSize: MainAxisSize.max,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Text(
        //           "Do you want to Quit ?",
        //           style: context.latoBold.copyWith(fontSize: 20.fSize),
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             SizedBox(
        //               width: SizeUtils.width * 0.45,
        //               child: LoadingButton(
        //                   color: Colors.green,
        //                   child: Row(
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Text(
        //                         "No",
        //                         style: context.latoBold20
        //                             .copyWith(color: Colors.white),
        //                       )
        //                     ],
        //                   ),
        //                   onTap: () {}),
        //             ),
        //             SizedBox(
        //               width: SizeUtils.width * 0.4,
        //               child: LoadingButton(
        //                   color: Colors.red,
        //                   child: Row(
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Text(
        //                         "Yes",
        //                         style: context.latoBold20
        //                             .copyWith(color: Colors.white),
        //                       )
        //                     ],
        //                   ),
        //                   onTap: () {}),
        //             )
        //           ],
        //         )
        //       ],
        //     ),
        //   ),
        // );
      },
    
    
    
    
    
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            SizedBox(
              height: SizeUtils.height,
              width: SizeUtils.width,
            ),
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
                  Navigator.pushNamed(context, AppRoute.authScreen);
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
                padding: EdgeInsets.fromLTRB(0, 0, 0, padding.h),
                height: SizeUtils.height / 2.3,
                width: SizeUtils.width,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(paddingXXL),
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
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
                                      fontSize: 40.fSize,
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
                            aspectRatio: 16 / 9,
                            initialPage: 0,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                          carouselController: _carouselController,
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: padding.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: plateText.asMap().entries.map((entry) {
                              if (_currentIndex == entry.key) {
                                return Container(
                                  width: 20.h,
                                  height: 6.h,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(paddingLarge),
                                    ),
                                  ),
                                );
                              }

                              return Container(
                                width: 8.0,
                                height: 8.0,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: paddingLarge.h,
                      bottom: padding.h,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          elevation: WidgetStatePropertyAll(0),
                        ),
                        onPressed: () {
                          if (_currentIndex < plateText.length - 1) {
                            _carouselController.nextPage();
                          } else {
                            Navigator.pushNamed(context, AppRoute.authScreen);
                          }
                        },
                        child: Text(
                          "Next",
                          style: context.latoRegular.copyWith(
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
