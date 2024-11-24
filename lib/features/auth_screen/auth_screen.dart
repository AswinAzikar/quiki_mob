import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/gen/assets.gen.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/utils/size_utils.dart';

import '../../widgets/loading_button.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
        ),
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              Assets.svgs.splashDsn,
              height: SizeUtils.height,
              width: SizeUtils.width,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingLarge.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  gapXXL,
                  Center(
                    child: SvgPicture.asset(
                      Assets.svgs.logo,
                      height: 40.h,
                    ),
                  ),
                  gapXL,
                  Text(
                    "Login",
                    style: context.latoBold.copyWith(
                      fontSize: 24.fSize,
                      color: Colors.black,
                    ),
                  ),
                  gap,
                  Text(
                    "Please enter your email id and password.",
                    style: context.latoRegular.copyWith(
                      fontSize: 14.fSize,
                      color: Colors.grey,
                    ),
                  ),
                  gapLarge,
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: "Email",
                              prefixIcon: Icon(Icons.mail_outline_rounded)),
                        ),
                        gapLarge,
                        TextFormField(
                          obscureText: _isObscured,
                          decoration: InputDecoration(
                            labelText: "Password",
                            suffixIcon: IconButton(
                              icon: Icon(_isObscured
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isObscured = !_isObscured;
                                });
                              },
                            ),
                            prefixIcon: const Icon(Icons.lock_outline),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(padding.h),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot password ?",
                          style: context.latoRegular.copyWith(
                            fontSize: 14.fSize,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  gapLarge,
                  LoadingButton(
                    color: primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.fSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  gapLarge,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
