import 'package:flutter/material.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/utils/size_utils.dart';

ThemeData get themeDataLight => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding:
          EdgeInsets.symmetric(horizontal: paddingLarge.h, vertical: padding.h),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(padding.h),
        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(padding.h),
        borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(padding.h),
        borderSide: const BorderSide(color: Colors.blue, width: 2.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(padding.h),
        borderSide: const BorderSide(color: Colors.red, width: 1.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(padding.h),
        borderSide: const BorderSide(color: Colors.red, width: 2.0),
      ),
      labelStyle: TextStyle(color: Colors.grey, fontSize: 14.fSize),
      errorStyle: TextStyle(color: Colors.red, fontSize: 12.fSize),
    ));

extension BuildContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  Color get adaptiveTextColor => Theme.of(this).brightness == Brightness.dark
      ? Colors.white
      : Colors.black;

  TextStyle baseTextStyle(String fontFamily, FontWeight fontWeight) {
    return TextStyle(
      decoration: TextDecoration.none,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: adaptiveTextColor,
    );
  }

  TextStyle get latoRegular => baseTextStyle('Lato', FontWeight.w400);
  TextStyle get latoBold => baseTextStyle('Lato', FontWeight.w700);
  TextStyle get latoBlack => baseTextStyle('Lato', FontWeight.w900);
  TextStyle get latoLight => baseTextStyle('Lato', FontWeight.w300);
  TextStyle get latoThin => baseTextStyle('Lato', FontWeight.w100);

  TextStyle get latoRegular12 => latoRegular.copyWith(fontSize: 12.fSize);
  TextStyle get latoRegular14 => latoRegular.copyWith(fontSize: 14.fSize);
  TextStyle get latoRegular16 => latoRegular.copyWith(fontSize: 16.fSize);
  TextStyle get latoBold18 => latoBold.copyWith(fontSize: 18.fSize);
  TextStyle get latoBold20 => latoBold.copyWith(fontSize: 20.fSize);
  TextStyle get latoBlack22 => latoBlack.copyWith(fontSize: 22.fSize);
  TextStyle get latoLight16 => latoLight.copyWith(fontSize: 16.fSize);
  TextStyle get latoThin14 => latoThin.copyWith(fontSize: 14.fSize);
  TextStyle get latoItalic18 =>
      latoRegular.copyWith(fontSize: 18.fSize, fontStyle: FontStyle.italic);
  TextStyle get latoBoldUnderlined16 => latoBold.copyWith(
      fontSize: 16.fSize, decoration: TextDecoration.underline);

  TextStyle get senRegular12 =>
      baseTextStyle('Sen', FontWeight.w400).copyWith(fontSize: 12.fSize);
  TextStyle get senRegular14 =>
      baseTextStyle('Sen', FontWeight.w400).copyWith(fontSize: 14.fSize);
  TextStyle get senMedium16 =>
      baseTextStyle('Sen', FontWeight.w500).copyWith(fontSize: 16.fSize);
  TextStyle get senBold18 =>
      baseTextStyle('Sen', FontWeight.w700).copyWith(fontSize: 18.fSize);
  TextStyle get senSemiBold20 =>
      baseTextStyle('Sen', FontWeight.w600).copyWith(fontSize: 20.fSize);
  TextStyle get senExtraBold22 =>
      baseTextStyle('Sen', FontWeight.w800).copyWith(fontSize: 22.fSize);
  TextStyle get senBoldItalic18 => baseTextStyle('Sen', FontWeight.w700)
      .copyWith(fontSize: 18.fSize, fontStyle: FontStyle.italic);
  TextStyle get senUnderlined14 =>
      senRegular12.copyWith(decoration: TextDecoration.underline);
  TextStyle get senMediumGray16 => senMedium16.copyWith(color: Colors.grey);

  TextStyle get headlineLarge => latoBold.copyWith(fontSize: 32.fSize);
  TextStyle get bodySmall => latoLight.copyWith(fontSize: 14.fSize);
  TextStyle get titleMedium => senMedium16.copyWith(fontSize: 20.fSize);
}
