import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiki/gen/assets.gen.dart';
import 'package:quiki/widgets/gradient_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
        ),
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AspectRatio(
              aspectRatio: 400 / 571,
              child: Image.asset(Assets.pngs.dashboard.path,
                  fit: BoxFit.fitWidth)),
          const GradientWidget(
              colors: [Colors.white, Colors.white],
              intensity: .98,
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)
        ],
      ),
    );
  }
}
