/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsJpgsGen {
  const $AssetsJpgsGen();

  /// File path: assets/jpgs/offer_banner.jpg
  AssetGenImage get offerBanner =>
      const AssetGenImage('assets/jpgs/offer_banner.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [offerBanner];
}

class $AssetsPngsGen {
  const $AssetsPngsGen();

  /// File path: assets/pngs/dashboard.png
  AssetGenImage get dashboard =>
      const AssetGenImage('assets/pngs/dashboard.png');

  /// File path: assets/pngs/dashboard_png.png
  AssetGenImage get dashboardPng =>
      const AssetGenImage('assets/pngs/dashboard_png.png');

  /// File path: assets/pngs/fade.png
  AssetGenImage get fade => const AssetGenImage('assets/pngs/fade.png');

  /// File path: assets/pngs/plate_screen.png
  AssetGenImage get plateScreen =>
      const AssetGenImage('assets/pngs/plate_screen.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [dashboard, dashboardPng, fade, plateScreen];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/beverage_cat.svg
  String get beverageCat => 'assets/svgs/beverage_cat.svg';

  /// File path: assets/svgs/cake_cat.svg
  String get cakeCat => 'assets/svgs/cake_cat.svg';

  /// File path: assets/svgs/con_apple.svg
  String get conApple => 'assets/svgs/con_apple.svg';

  /// File path: assets/svgs/con_google.svg
  String get conGoogle => 'assets/svgs/con_google.svg';

  /// File path: assets/svgs/gaussian_blur.svg
  String get gaussianBlur => 'assets/svgs/gaussian_blur.svg';

  /// File path: assets/svgs/gifts_cat.svg
  String get giftsCat => 'assets/svgs/gifts_cat.svg';

  /// File path: assets/svgs/gps.svg
  String get gps => 'assets/svgs/gps.svg';

  /// File path: assets/svgs/locate.svg
  String get locate => 'assets/svgs/locate.svg';

  /// File path: assets/svgs/logo.svg
  String get logo => 'assets/svgs/logo.svg';

  /// File path: assets/svgs/mail.svg
  String get mail => 'assets/svgs/mail.svg';

  /// File path: assets/svgs/or_line.svg
  String get orLine => 'assets/svgs/or_line.svg';

  /// File path: assets/svgs/prop_cat.svg
  String get propCat => 'assets/svgs/prop_cat.svg';

  /// File path: assets/svgs/splash_dsn.svg
  String get splashDsn => 'assets/svgs/splash_dsn.svg';

  /// List of all assets
  List<String> get values => [
        beverageCat,
        cakeCat,
        conApple,
        conGoogle,
        gaussianBlur,
        giftsCat,
        gps,
        locate,
        logo,
        mail,
        orLine,
        propCat,
        splashDsn
      ];
}

class Assets {
  Assets._();

  static const $AssetsJpgsGen jpgs = $AssetsJpgsGen();
  static const $AssetsPngsGen pngs = $AssetsPngsGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
