import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/utils/size_utils.dart';

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
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: splashScreenColor,
        primary: true,
      ),
      backgroundColor: splashScreenColor,
    );
  }
}
