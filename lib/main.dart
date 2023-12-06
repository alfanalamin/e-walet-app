import 'package:ewallet/presentation/pages/home_page.dart';
import 'package:ewallet/presentation/pages/on_boarding_page.dart';
import 'package:ewallet/presentation/pages/sign_in_page.dart';
import 'package:ewallet/presentation/pages/sign_up_page.dart';
import 'package:ewallet/presentation/pages/sign_up_set_ktp_page.dart';
import 'package:ewallet/presentation/pages/sign_up_set_profile_page.dart';
import 'package:ewallet/presentation/pages/sign_up_success_page.dart';
import 'package:ewallet/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashScreen(),
          '/onboarding': (context) => const OnBoardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-set-profile': (context) => const SignUpSetPageProfile(),
          '/sign-up-set-ktp': (context) => const SignUpSetPageKtp(),
          '/sign-up-success': (context) => const SignUpSuccessPage(),
          '/home': (context) => const Homepage(),
        },
      ),
    );
  }
}
