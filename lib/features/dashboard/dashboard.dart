import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:geolocator/geolocator.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/utils/size_utils.dart';
import 'package:quiki/widgets/loading_button.dart';

import '../../gen/assets.gen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Future<Position> _determinePosition(BuildContext dialogContext) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Navigator.pop(dialogContext); // Close the dialog
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Navigator.pop(dialogContext); // Close the dialog
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Navigator.pop(dialogContext); // Close the dialog
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition();
    Navigator.pop(dialogContext); // Close the dialog after getting location
    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
        ),
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: SizeUtils.width / (SizeUtils.height / 1.5),
                child: Image.asset(
                  Assets.pngs.dashboard.path,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.white, blurRadius: 20, spreadRadius: 40)
              ], color: Colors.white),
              height: SizeUtils.height / 2.4,
              width: SizeUtils.width,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(paddingLarge),
            child: Column(
              children: [
                Gap(SizeUtils.height / 1.85),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to ",
                          style: context.latoBold.copyWith(
                              color: primaryColor, fontSize: 20.fSize),
                        ),
                        SvgPicture.asset(
                          Assets.svgs.logo,
                          height: 50.h,
                          width: 80.h,
                        )
                      ],
                    ),
                  ],
                ),
                gapLarge,
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Unlock a world of delicious goodness by setting up your delivery address.",
                      style: context.latoRegular14.copyWith(color: Colors.grey),
                    ))
                  ],
                ),
                gapLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Select Location",
                      style: context.latoBold.copyWith(fontSize: 16.fSize),
                    ),
                  ],
                ),
                gapLarge,
                LoadingButton(
                    borderColor: greyBorder,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          paddingLarge, 0, paddingLarge, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(Assets.svgs.locate),
                              gap,
                              Text(
                                "Locate Me",
                                style: context.latoRegular14
                                    .copyWith(color: darkGreyColor),
                              )
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: darkGreyColor,
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (dialogContext) => AlertDialog(
                          backgroundColor: Colors.white,
                          title: Text(
                            "Location",
                            style: context.latoRegular
                                .copyWith(fontSize: 20.fSize),
                          ),
                          content: Text(
                            "Quiki wants to access the Location of your device",
                            style: context.latoRegular14
                                .copyWith(fontSize: 14.fSize),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                _determinePosition(dialogContext).then((value) {
                                  logan.e(
                                      "Location : ${value.latitude} , ${value.longitude}");
                                }).catchError((error) {
                                  logan.e("Error: $error");
                                });
                              },
                              child: Text(
                                "Allow",
                                style: context.latoRegular16.copyWith(
                                    fontSize: 16.fSize,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.green),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(dialogContext);
                                },
                                child: Text(
                                  "Deny",
                                  style: context.latoRegular16.copyWith(
                                      fontSize: 16.fSize,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.red),
                                ))
                          ],
                        ),
                      );
                    }),
                gapLarge,
                LoadingButton(
                    borderColor: greyBorder,
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          paddingLarge, 0, paddingLarge, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(Assets.svgs.gps),
                              gap,
                              Text(
                                "Provide Delivery Address Location",
                                style: context.latoRegular14
                                    .copyWith(color: darkGreyColor),
                              )
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: darkGreyColor,
                          )
                        ],
                      ),
                    ),
                    onTap: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}
