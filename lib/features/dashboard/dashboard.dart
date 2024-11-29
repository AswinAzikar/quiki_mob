import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
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
                      //TODO : Find GPS location on tap
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
                    onTap: () {
                      //TODO : Update theDelivery Location
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
