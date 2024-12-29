import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quiki/features/dashboard/dashboard.dart';
import 'package:quiki/features/manual_locaton/manual_loc_screen.dart';

import '../features/auth_screen/auth_screen.dart';
import '../features/navigation_screen/navigation_screen.dart';
import '../features/plate_screen/plate_screen.dart';
import '../features/splash_screen/splash_screen.dart';

class AppRoute {
  static const String splashScreen = "/";
  static const String navigationScreen = '/nav';
  static const String authScreen = '/login';
  static const String plateScreen = '/plate';
  static const String dashboard = '/dashboard';
  static const String manualLoc = '/manualLoc';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case authScreen:
        return PageTransition(
            child: const AuthScreen(),
            type: PageTransitionType.rightToLeft,
            duration: Durations.long4
            // childCurrent: const PlateScreen()
            );

      case plateScreen:
        return PageTransition(
            child: const PlateScreen(),
            type: PageTransitionType.fade,
            duration: Durations.short3
            // childCurrent: const PlateScreen()
            );
      case navigationScreen:
        return MaterialPageRoute(builder: (_) => const NavigationScreen());
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case manualLoc:
        return PageTransition(
            child: ManualLocScreen(), type: PageTransitionType.fade);

      case dashboard:
        return PageTransition(
            child: const Dashboard(),
            type: PageTransitionType.topToBottom,
            duration: Durations.medium2
            // childCurrent: const PlateScreen()
            );
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
