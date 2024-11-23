import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../features/navigation_screen/navigation_screen.dart';
import '../features/plate_screen/plate_screen.dart';
import '../features/splash_screen/splash_screen.dart';

class AppRoute {
  static const String splashScreen = "/";
  static const String navigationScreen = '/nav';
  static const String plateScreen = '/plate';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case plateScreen:
        return PageTransition(
          child: const PlateScreen(),
          type: PageTransitionType.rightToLeft,
          // childCurrent: const PlateScreen()
        );
      case navigationScreen:
        return MaterialPageRoute(builder: (_) => const NavigationScreen());
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No route defined '),
            ),
          ),
        );
    }
  }
}
