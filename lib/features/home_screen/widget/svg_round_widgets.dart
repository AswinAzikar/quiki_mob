import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/utils/size_utils.dart';

class SvgRoundWidgets extends StatelessWidget {
  final String svgString;
  final String label;
  final VoidCallback onTap;

  const SvgRoundWidgets({
    super.key,
    required this.svgString,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          customBorder: CircleBorder(),
          borderRadius: BorderRadius.circular(100.h),
          onTap: () {
            HapticFeedback.selectionClick();
            onTap;

            logan.e("Tapped  $label");
          },
          child: SvgPicture.asset(
            svgString,
            fit: BoxFit.fill,
            height: 90.h,
          ),
        ),
        Text(
          label,
          style: context.latoRegular16
              .copyWith(fontSize: 16.fSize, color: darkGreyColor),
        )
      ],
    );
  }
}
