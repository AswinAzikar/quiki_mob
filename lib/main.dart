import 'package:flutter/material.dart';
import 'package:quiki/routes/app_routes.dart';

import 'utils/size_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      onGenerateRoute: AppRoute.generateRoute,
      initialRoute: AppRoute.splashScreen,
      builder: (context, child) => Sizer(
          builder: (context, Orientation orientation, DeviceType deviceType) {
        return child ?? const SizedBox();
      }),
    );
  }
}
