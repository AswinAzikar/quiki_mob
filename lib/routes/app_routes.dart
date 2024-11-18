import 'package:flutter/material.dart';


import '../navigation_screen/navigation_screen.dart';
import '../splash_screen/splash_screen.dart';

class AppRoute {
  static const String splashScreen = "/";
  static const String navigationScreen = '/nav';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
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
