import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/routes/app_routes.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/widgets/loading_button.dart';

import 'utils/size_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(



      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Do you want to Quit?",
                      style: context.latoBold.copyWith(fontSize: 20.fSize),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: SizeUtils.width * 0.23,
                          child: LoadingButton(
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "No",
                                  style: context.latoBold20.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.of(context).pop(); // Close dialog
                            },
                          ),
                        ),
                        gapLarge,
                        SizedBox(
                          width: SizeUtils.width * 0.23,
                          child: LoadingButton(
                            color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Yes",
                                  style: context.latoBold20.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              if (Platform.isAndroid) {
                                SystemNavigator.pop();
                              } else if (Platform.isIOS) {
                                exit(0);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );

      },
    
      child: MaterialApp(
        theme: themeDataLight,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoute.generateRoute,
        initialRoute: AppRoute.splashScreen,
        builder: (context, child) => Sizer(
            builder: (context, Orientation orientation, DeviceType deviceType) {
          return child ?? const SizedBox();
        }),
      ),
    );
  }
}
