import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:quiki/routes/app_routes.dart'; // Assuming AppRoute is implemented
import 'package:quiki/utils/size_utils.dart';
import '../../constants/constant.dart';
import '../../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //TODO :  Simulate checking user data (use SharedPreferences or Hive in real app)
    const bool isUserExist = false;

    Timer(const Duration(seconds: 3), () {
      if (!isUserExist) {
        Navigator.pushNamed(context, AppRoute.plateScreen);
      } else {
        Navigator.pushNamed(context, AppRoute.navigationScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: splashScreenColor,
          systemNavigationBarColor: splashScreenColor,
          statusBarIconBrightness: Brightness.dark,
        ),
        primary: true,
      ),
      backgroundColor: splashScreenColor,
      body: Stack(
        children: [
          SvgPicture.asset(
            Assets.svgs.splashDsn,
            height: SizeUtils.height,
            width: SizeUtils.width,
            fit: BoxFit.cover,
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
