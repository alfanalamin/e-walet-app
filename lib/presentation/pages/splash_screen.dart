import 'dart:async';

import 'package:ewallet/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const OnBoardingPage(),
      //   ),
      // );
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.neutral950,
      body: Center(
        child: Container(
          width: 155.h,
          // height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img_logo_dark.png'),
            ),
          ),
        ),
      ),
    );
  }
}
