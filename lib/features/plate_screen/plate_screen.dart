import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/theme/theme.dart';

import 'package:quiki/utils/size_utils.dart';

import '../../gen/assets.gen.dart';

class PlateScreen extends StatelessWidget {
  const PlateScreen({super.key});

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
          Image.asset(
            Assets.pngs.plateScreen.path,
            width: SizeUtils.width,
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
                )),
          )
        ],
      ),
    );
  }
}
