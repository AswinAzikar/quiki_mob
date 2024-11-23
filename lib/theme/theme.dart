import 'package:flutter/material.dart';


ThemeData get themeDataLight => ThemeData(
      scaffoldBackgroundColor: Colors.white,
    );



extension BuildContextExtension on BuildContext {
  
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Lato Font Styles
  TextStyle get latoRegular =>
      const TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w400);
  TextStyle get latoBold =>
      const TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w700);
  TextStyle get latoBlack =>
      const TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w900);
  TextStyle get latoLight =>
      const TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w300);
  TextStyle get latoThin =>
      const TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w100);
  TextStyle get latoItalic =>
      const TextStyle(fontFamily: 'Lato', fontStyle: FontStyle.italic);

  /// Sen Font Styles
  TextStyle get senRegular =>
      const TextStyle(fontFamily: 'Sen', fontWeight: FontWeight.w400);
  TextStyle get senMedium =>
      const TextStyle(fontFamily: 'Sen', fontWeight: FontWeight.w500);
  TextStyle get senSemiBold =>
      const TextStyle(fontFamily: 'Sen', fontWeight: FontWeight.w600);
  TextStyle get senBold =>
      const TextStyle(fontFamily: 'Sen', fontWeight: FontWeight.w700);
  TextStyle get senExtraBold =>
      const TextStyle(fontFamily: 'Sen', fontWeight: FontWeight.w800);

  /// Custom styles with combinations 
  TextStyle get headlineLarge => latoBold.copyWith(fontSize: 32);
  TextStyle get bodySmall => latoLight.copyWith(fontSize: 14);
  TextStyle get titleMedium =>
      senMedium.copyWith(fontSize: 20, color: Colors.black);
}
