import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/gen/assets.gen.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/utils/size_utils.dart';

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
                  gap,
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: "Email",
                              prefixIcon: Icon(Icons.mail_outline_rounded)
                              // prefixIcon: SizedBox(
                              //   height: 10,
                              //   width:10,
                              //   child: SvgPicture.asset(Assets.svgs.mail,
                              //       width: 10, height: 10),
                              // ),
                              ),
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: paddingLarge.h),
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(padding.h),
                        ),
                      ),
                      child: Text(
                        "Login",
                        style: context.latoBold.copyWith(
                          fontSize: 16.fSize,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Gap(16),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Don’t have an account? Sign Up",
                      style: context.latoRegular.copyWith(
                        fontSize: 14.fSize,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
