import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/features/plate_screen/plate_screen.dart';
import 'package:quiki/gen/assets.gen.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/utils/size_utils.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.dark),
            toolbarHeight: 0,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.white,
        ),
        SvgPicture.asset(
          Assets.svgs.splashDsn,
          height: SizeUtils.height,
          width: SizeUtils.width,
        ),
        Column(
          children: [
            gapXXL,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.svgs.logo,
                  height: 40.h,
                ),
                gapXL,
              ],
            ),
            Text("Login",
                softWrap: true,
                style: context.latoBold20.copyWith(
                  fontSize: 24.fSize,
                  color: Colors.black,
                )),
            gap,
          ],
        )
      ],
    );
  }
}
