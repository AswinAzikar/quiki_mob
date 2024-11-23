import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:quiki/gen/assets.gen.dart';
import 'package:quiki/utils/size_utils.dart';

import '../constants/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: splashScreenColor,
            systemNavigationBarColor: splashScreenColor),
//backgroundColor: splashScreenColor,
        primary: true,
      ),
      backgroundColor: splashScreenColor,
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
//crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.svgs.splashDsn,
            height: SizeUtils.height,
            width: SizeUtils.width,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.svgs.logo),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
